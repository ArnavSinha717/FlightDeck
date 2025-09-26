# FlightDeck - Airline Reservation System ✈️

A modern, full-featured airline reservation system with a beautiful dark/light theme interface.

## ✨ Features

- **Modern UI/UX**
  - Toggleable dark/light theme with persistent preferences
  - Responsive design for all devices
  - Smooth animations and gradient effects
  - Real-time search and filtering

- **Core Functionality**
  - User registration and secure authentication
  - Search flights by origin and destination
  - Real-time flight booking
  - View and manage bookings
  - Automatic seat assignment

## 🛠️ Tech Stack

- **Backend**: Python, Flask, Flask-Bcrypt
- **Database**: MySQL
- **Frontend**: HTML5, CSS3 (with CSS Variables), JavaScript
- **Icons**: Font Awesome
- **Theme**: Custom dark/light theme system

## 🚀 Quick Start

### Option 1: Automatic Setup (Recommended)

#### Windows:
```bash
# Simply double-click the file or run:
run_flightdeck.bat
```

#### Mac/Linux:
```bash
# Make the script executable (first time only)
chmod +x run_flightdeck.sh

# Run the application
./run_flightdeck.sh
```

#### Or use Python directly:
```bash
python run_flightdeck.py
```

The script will:
- ✅ Check and install required packages
- ✅ Create the database and tables
- ✅ Load sample flight data
- ✅ Open the application in your browser automatically

### Option 2: Manual Setup

1. **Clone the repository**

2. **Install requirements:**
   ```bash
   pip install -r requirements.txt
   ```

3. **Configure MySQL:**
   - Update the password in `app.py` (line 16)
   - Update the password in `run_flightdeck.py` (line 17)

4. **Set up the database:**
   ```bash
   mysql -u root -p < schema.sql
   mysql -u root -p airline_reservation_system < data.sql
   ```

5. **Run the application:**
   ```bash
   python app.py
   ```

6. **Open your browser:**
   Navigate to `http://localhost:5000`

## 📖 Usage

1. **Theme Selection**
   - Click the sun/moon icon to toggle between dark and light themes
   - Use keyboard shortcut `Ctrl+Shift+L` (or `Cmd+Shift+L` on Mac)
   - Your preference is saved automatically

2. **User Account**
   - Register a new account with your name, email, and password
   - Login to access booking features

3. **Search Flights**
   - Enter origin airport code (e.g., MAA for Chennai)
   - Enter destination airport code (e.g., DEL for Delhi)
   - View available flights with prices and timings

4. **Book Flights**
   - Login to enable booking
   - Click "Book Now" on any available flight
   - Automatic seat assignment
   - View confirmation with booking ID

5. **Manage Bookings**
   - Click "My Bookings" to view all your reservations
   - See flight details, seat numbers, and status

## 🎨 Theme Features

- **Dark Theme**: Deep blacks with vibrant gradient accents
- **Light Theme**: Clean whites with colorful highlights
- **Smooth Transitions**: All theme changes animate smoothly
- **Persistent Storage**: Your theme choice is remembered

## ⚠️ Important Notes

1. **MySQL Password**: Remember to update your MySQL password in:
   - `app.py` (line 16)
   - `run_flightdeck.py` (line 17)

2. **Port Conflicts**: If port 5000 is in use, the app will use the next available port

3. **Browser Compatibility**: Works best with modern browsers (Chrome, Firefox, Safari, Edge)

## 🐛 Troubleshooting

- **MySQL Connection Error**: Ensure MySQL is running and credentials are correct
- **Module Not Found**: Run `pip install -r requirements.txt`
- **Port Already in Use**: Close other applications using port 5000 or change the port in app.py

## 📝 Sample Data

The application comes with pre-loaded sample flights between major Indian cities:
- Chennai (MAA)
- Delhi (DEL)
- Mumbai (BOM)
- Kolkata (CCU)
- Bangalore (BLR)
- Hyderabad (HYD)

## 🔒 Security

- Passwords are hashed using bcrypt
- Session-based authentication
- SQL injection protection through parameterized queries

## 🤝 Contributing

Feel free to fork this project and submit pull requests for any improvements!