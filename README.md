# EfficientHealth

An advanced database management system for hospital operations, developed as a project for the CSE 252 Database Management System course.

## Table of Contents

- [Project Overview](#project-overview)
- [Technologies Used](#technologies-used)
- [Setup and Installation](#setup-and-installation)
- [Usage](#usage)
- [Video Demonstration](#video-demonstration)
- [License](#license)

## Project Overview

EfficientHealth is designed to streamline hospital management by integrating a normalized database (up to 3NF) with a user-friendly Java Swing interface. The application facilitates efficient handling of hospital data, ensuring seamless operations.

## Technologies Used

- **Java Swing**: For building the graphical user interface (GUI).
- **MySQL**: As the relational database management system.
- **NetBeans IDE**: For development and debugging.
- **XAMPP**: To set up the local MySQL database server.

## Setup and Installation

Follow these steps to set up and run the project locally:

1. **Clone the Repository**:
   ```bash
   git clone https://github.com/Bahar0900/EfficientHealth.git
   ```
   Navigate to the project directory:
   ```bash
   cd EfficientHealth
   ```

2. **Set Up the Database**:
   - Ensure XAMPP is installed and the MySQL service is running.
   - Use a tool like phpMyAdmin or the MySQL command line to create a new database (e.g., `efficient_health`).
   - Import the provided SQL script located in the `Database` directory to set up the necessary tables and data.

3. **Configure Database Connection**:
   - Open the project in NetBeans IDE.
   - Locate the database connection configuration file or the section in the code where the connection is established.
   - Update the database URL, username, and password to match your local MySQL setup. For example:
     ```java
     String url = "jdbc:mysql://localhost:3306/efficient_health";
     String user = "your_username";
     String password = "your_password";
     ```

4. **Build and Run the Application**:
   - In NetBeans, clean and build the project to resolve any dependencies.
   - Run the project. The main application window should appear, allowing interaction with the hospital management system.

## Usage

Upon launching the application, you can navigate through various modules designed for hospital management. The intuitive GUI allows for operations such as patient management, appointment scheduling, and more.

## Video Demonstration

For a comprehensive walkthrough of the application's functionalities, you can refer to the following video:

[![Hospital Management System Full Project in Java MySQL](https://img.youtube.com/vi/GSxglxYxhiA/0.jpg)](https://youtu.be/_-GcMgtBy5A)

## License

This project is licensed under the GNU General Public License v3.0. See the [LICENSE](LICENSE) file for details.

