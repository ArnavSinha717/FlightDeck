from flask import Flask, jsonify, send_from_directory, request, session
from flask_bcrypt import Bcrypt
import mysql.connector
from mysql.connector import Error
import os
import webbrowser
from threading import Timer

app = Flask(__name__)
bcrypt = Bcrypt(app)

# SET THE SECRET KEY
app.secret_key = os.urandom(24)

db_config = {
    'host': 'localhost',
    'user': 'root',
    'password': 'Fan@1234', # USE YOUR MYSQL PASSWORD
    'database': 'airline_reservation_system'
}

@app.route('/')
def serve_index():
    return send_from_directory('.', 'index.html')

@app.route('/register.html')
def serve_register():
    return send_from_directory('.', 'register.html')

@app.route('/login.html')
def serve_login():
    return send_from_directory('.', 'login.html')

@app.route('/styles.css')
def serve_styles():
    return send_from_directory('.', 'styles.css')

@app.route('/theme.js')
def serve_theme():
    return send_from_directory('.', 'theme.js')

@app.route('/api/register', methods=['POST'])
def register_user():
    user_data = request.get_json()
    name = user_data.get('name')
    email = user_data.get('email')
    password = user_data.get('password')

    if not name or not email or not password:
        return jsonify({"error": "Missing required fields"}), 400

    hashed_password = bcrypt.generate_password_hash(password).decode('utf-8')
    try:
        conn = mysql.connector.connect(**db_config)
        cursor = conn.cursor()
        query = "INSERT INTO Users (name, email, password_hash) VALUES (%s, %s, %s)"
        cursor.execute(query, (name, email, hashed_password))
        conn.commit()
        return jsonify({"success": "User registered successfully"}), 201
    except Error as e:
        return jsonify({"error": str(e)}), 500
    finally:
        if 'cursor' in locals() and cursor is not None:
            cursor.close()
        if 'conn' in locals() and conn.is_connected():
            conn.close()

@app.route('/api/login', methods=['POST'])
def login_user():
    user_data = request.get_json()
    email = user_data.get('email')
    password = user_data.get('password')

    if not email or not password:
        return jsonify({"error": "Missing email or password"}), 400
    try:
        conn = mysql.connector.connect(**db_config)
        cursor = conn.cursor(dictionary=True)
        query = "SELECT * FROM Users WHERE email = %s"
        cursor.execute(query, (email,))
        user = cursor.fetchone()

        if user and bcrypt.check_password_hash(user['password_hash'], password):
            session['user_id'] = user['user_id']
            session['user_name'] = user['name']
            return jsonify({"success": "Login successful"})
        else:
            return jsonify({"error": "Invalid email or password"}), 401
    except Error as e:
        return jsonify({"error": str(e)}), 500
    finally:
        if 'cursor' in locals() and cursor is not None:
            cursor.close()
        if 'conn' in locals() and conn.is_connected():
            conn.close()

@app.route('/api/session_status')
def session_status():
    if 'user_id' in session:
        return jsonify({"logged_in": True, "name": session['user_name']})
    else:
        return jsonify({"logged_in": False})

@app.route('/api/logout', methods=['POST'])
def logout():
    session.clear()
    return jsonify({"success": "Logged out"})

@app.route('/api/flights', methods=['GET'])
def get_flights():
    from_airport = request.args.get('from')
    to_airport = request.args.get('to')
    try:
        conn = mysql.connector.connect(**db_config)
        cursor = conn.cursor()
        query = "SELECT * FROM Flights WHERE 1=1"
        params = []
        if from_airport:
            query += " AND departure_airport_code = %s"
            params.append(from_airport)
        if to_airport:
            query += " AND arrival_airport_code = %s"
            params.append(to_airport)
        cursor.execute(query, params)
        rows = cursor.fetchall()
        columns = [column[0] for column in cursor.description]
        flights = []
        for row in rows:
            flights.append(dict(zip(columns, row)))
        return jsonify(flights)
    except Error as e:
        return jsonify({"error": str(e)}), 500
    finally:
        if 'cursor' in locals() and cursor is not None:
            cursor.close()
        if 'conn' in locals() and conn.is_connected():
            conn.close()

@app.route('/api/bookings', methods=['POST'])
def create_booking():
    if 'user_id' not in session:
        return jsonify({"error": "Unauthorized"}), 401
    
    data = request.get_json()
    flight_id = data.get('flight_id')
    user_id = session['user_id']
    passenger_name = session['user_name']
    
    try:
        conn = mysql.connector.connect(**db_config)
        cursor = conn.cursor(dictionary=True)
        cursor.execute("SELECT base_price FROM Flights WHERE flight_id = %s", (flight_id,))
        flight = cursor.fetchone()
        if not flight:
            return jsonify({"error": "Flight not found"}), 404
        
        total_amount = flight['base_price']
        
        query_booking = "INSERT INTO Bookings (user_id, flight_id, total_amount) VALUES (%s, %s, %s)"
        cursor.execute(query_booking, (user_id, flight_id, total_amount))
        booking_id = cursor.lastrowid
        
        import random
        seat_number = f"{random.randint(1, 30)}{random.choice(['A', 'B', 'C', 'D', 'E', 'F'])}"
        query_ticket = "INSERT INTO Tickets (booking_id, passenger_name, seat_number) VALUES (%s, %s, %s)"
        cursor.execute(query_ticket, (booking_id, passenger_name, seat_number))
        
        conn.commit()
        return jsonify({"success": "Booking created successfully", "booking_id": booking_id}), 201
    except Error as e:
        conn.rollback()
        return jsonify({"error": str(e)}), 500
    finally:
        if 'cursor' in locals() and cursor is not None:
            cursor.close()
        if 'conn' in locals() and conn.is_connected():
            conn.close()


@app.route('/my_bookings.html')
def serve_my_bookings():
    return send_from_directory('.', 'my_bookings.html')

@app.route('/api/my_bookings')
def my_bookings():
    # First, check if the user is logged in
    if 'user_id' not in session:
        return jsonify({"error": "Unauthorized access"}), 401

    user_id = session['user_id']
    
    try:
        conn = mysql.connector.connect(**db_config)
        cursor = conn.cursor(dictionary=True)
        
        # This SQL query JOINS three tables to get all the needed info
        query = """
            SELECT
                b.booking_id,
                f.flight_number,
                f.departure_airport_code,
                f.arrival_airport_code,
                f.departure_time,
                f.arrival_time,
                t.seat_number,
                b.status
            FROM Bookings b
            JOIN Flights f ON b.flight_id = f.flight_id
            JOIN Tickets t ON b.booking_id = t.booking_id
            WHERE b.user_id = %s
            ORDER BY f.departure_time DESC
        """
        
        cursor.execute(query, (user_id,))
        bookings = cursor.fetchall()
        
        return jsonify(bookings)

    except Error as e:
        return jsonify({"error": str(e)}), 500
    
    finally:
        if 'cursor' in locals() and cursor is not None:
            cursor.close()
        if 'conn' in locals() and conn.is_connected():
            conn.close()

def open_browser():
    webbrowser.open('http://localhost:5000')

if __name__ == '__main__':
    print("\n" + "="*60)
    print("🛫 FlightDeck - Airline Reservation System")
    print("="*60)
    print("Starting server...")
    print("\nThe application will open in your browser automatically.")
    print("If it doesn't, navigate to: http://localhost:5000")
    print("\nPress CTRL+C to stop the server")
    print("="*60 + "\n")

    # Open browser after 1.5 seconds
    Timer(1.5, open_browser).start()

    # Run Flask app
    app.run(debug=True, use_reloader=False)