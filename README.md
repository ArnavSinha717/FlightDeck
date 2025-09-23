# FlightDeck - Airline Reservation System

A full-stack web application for searching, booking, and managing flights. This project demonstrates a complete DBMS-backed system built with Python (Flask) and MySQL.

## Features
-   Flight search by origin and destination.
-   User registration and login with secure password hashing.
-   Session management to maintain user login state.
-   Flight booking for authenticated users.
-   A "My Bookings" page to view personal flight schedules.

## Technology Stack
-   **Backend:** Python, Flask
-   **Database:** MySQL
-   **Frontend:** HTML, CSS (Pico.css), JavaScript

## How to Run This Project
1.  Clone the repository.
2.  Create and activate a Python virtual environment.
3.  Install the required packages: `pip install -r requirements.txt`
4.  Set up a local MySQL server.
5.  Run the **`schema.sql`** script in MySQL to create the database structure.
6.  Run the **`data.sql`** script to populate the database with sample data.
7.  Update the `db_config` password in `app.py` to match your MySQL password.
8.  Run the application: `python app.py`