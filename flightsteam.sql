-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 17, 2024 at 02:02 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `flightsteam`
--

-- --------------------------------------------------------

--
-- Table structure for table `adminaccounts`
--

CREATE TABLE `adminaccounts` (
  `admin_id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `middle_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `role` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adminaccounts`
--

INSERT INTO `adminaccounts` (`admin_id`, `first_name`, `middle_name`, `last_name`, `email`, `password`, `role`, `created_at`, `updated_at`) VALUES
(1000, 'Amir', 'W', 'Hilal', 'amiramir@gmail.com', '$2y$10$4m.ycLaTchd6MCzJwcMxYuh3CSnaogw5nxyd.YCcMzj9l8WfjlF0K', 'superadmin', '2024-07-13 11:41:56', '2024-07-14 10:20:59'),
(1014, 'mohamad', 'B', 'salah', 'mo.salah@example.com', '$2y$10$OI4IaGObgJwdUQWMl152B.azUtkkx9naxScN2n/RY2ox4bnRSvPvS', 'admin', '2024-07-13 12:03:13', '2024-07-14 10:20:49'),
(1015, 'jack', 'T', 'wilson', 'jack@gmail.com', '$2y$10$e0Ssr3pfCQLedXegpdTUf.DPxfcAjNNl2eBXXO0dbTgNUo7cYdh7C', 'admin', '2024-07-13 13:38:30', '2024-07-14 10:20:52');

-- --------------------------------------------------------

--
-- Table structure for table `airports`
--

CREATE TABLE `airports` (
  `airport_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `location_id` int(11) NOT NULL,
  `code` varchar(10) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `airports`
--

INSERT INTO `airports` (`airport_id`, `name`, `location_id`, `code`, `created_at`, `updated_at`) VALUES
(1, 'John F. Kennedy International Airport', 1, 'JFK', '2024-07-12 14:42:06', '2024-07-12 14:42:06'),
(2, 'Los Angeles International Airport', 2, 'LAX', '2024-07-12 14:42:06', '2024-07-12 14:42:06'),
(3, 'O\'Hare International Airport', 3, 'ORD', '2024-07-12 14:42:06', '2024-07-12 14:42:06'),
(4, 'Heathrow Airport', 4, 'LHR', '2024-07-12 14:42:06', '2024-07-12 14:42:06'),
(5, 'Charles de Gaulle Airport', 5, 'CDG', '2024-07-12 14:42:06', '2024-07-12 14:42:06'),
(6, 'Tokyo Haneda Airport', 6, 'HND', '2024-07-12 14:42:06', '2024-07-12 14:42:06'),
(7, 'Dubai International Airport', 7, 'DXB', '2024-07-12 14:42:06', '2024-07-12 14:42:06'),
(8, 'Beirut–Rafic Hariri International Airport', 8, 'BEY', '2024-07-12 14:42:06', '2024-07-12 14:42:06'),
(9, 'Sydney Kingsford Smith Airport', 9, 'SYD', '2024-07-12 14:42:06', '2024-07-12 14:42:06'),
(10, 'Toronto Pearson International Airport', 10, 'YYZ', '2024-07-12 14:42:06', '2024-07-12 14:42:06');

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `booking_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `flight_id` int(11) NOT NULL,
  `booking_date` datetime NOT NULL DEFAULT current_timestamp(),
  `status` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`booking_id`, `user_id`, `flight_id`, `booking_date`, `status`, `created_at`, `updated_at`) VALUES
(26, 15, 1, '2024-07-17 12:25:14', 'confirmed', '2024-07-17 09:25:14', '2024-07-17 09:25:14'),
(27, 15, 1, '2024-07-17 12:25:23', 'confirmed', '2024-07-17 09:25:23', '2024-07-17 09:25:23'),
(28, 15, 1, '2024-07-17 12:25:39', 'confirmed', '2024-07-17 09:25:39', '2024-07-17 09:25:39'),
(29, 15, 1, '2024-07-17 12:36:51', 'confirmed', '2024-07-17 09:36:51', '2024-07-17 09:36:51'),
(30, 15, 1, '2024-07-17 13:03:55', 'confirmed', '2024-07-17 10:03:55', '2024-07-17 10:03:55'),
(31, 15, 1, '2024-07-17 14:28:41', 'confirmed', '2024-07-17 11:28:41', '2024-07-17 11:28:41'),
(32, 15, 1, '2024-07-17 14:38:18', 'confirmed', '2024-07-17 11:38:18', '2024-07-17 11:38:18');

-- --------------------------------------------------------

--
-- Table structure for table `chatlogs`
--

CREATE TABLE `chatlogs` (
  `chat_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `sender` enum('user','bot') DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `company_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`company_id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Etihad Airways', '2024-07-12 14:42:06', '2024-07-12 14:42:06'),
(2, 'Middle East Airlines', '2024-07-12 14:42:06', '2024-07-12 14:42:06'),
(3, 'Qatar Airways', '2024-07-12 14:42:06', '2024-07-12 14:42:06'),
(4, 'Emirates', '2024-07-12 14:42:06', '2024-07-12 14:42:06'),
(5, 'Lufthansa', '2024-07-12 14:42:06', '2024-07-12 14:42:06'),
(6, 'American Airlines', '2024-07-12 14:42:06', '2024-07-12 14:42:06'),
(7, 'British Airways', '2024-07-12 14:42:06', '2024-07-12 14:42:06'),
(8, 'Air France', '2024-07-12 14:42:06', '2024-07-12 14:42:06'),
(9, 'Japan Airlines', '2024-07-12 14:42:06', '2024-07-12 14:42:06'),
(10, 'Qantas', '2024-07-12 14:42:06', '2024-07-12 14:42:06');

-- --------------------------------------------------------

--
-- Table structure for table `flights`
--

CREATE TABLE `flights` (
  `flight_id` int(11) NOT NULL,
  `flight_number` varchar(50) NOT NULL,
  `company_id` int(11) NOT NULL,
  `departure_airport_id` int(11) NOT NULL,
  `arrival_airport_id` int(11) NOT NULL,
  `departure_time` datetime NOT NULL,
  `arrival_time` datetime NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `available_seats` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `flights`
--

INSERT INTO `flights` (`flight_id`, `flight_number`, `company_id`, `departure_airport_id`, `arrival_airport_id`, `departure_time`, `arrival_time`, `price`, `available_seats`, `created_at`, `updated_at`) VALUES
(1, 'EY100', 1, 1, 2, '2024-08-01 08:00:00', '2024-08-01 11:00:00', 500.00, 150, '2024-07-12 14:42:06', '2024-07-12 14:42:06'),
(2, 'MEA101', 2, 3, 4, '2024-08-02 09:00:00', '2024-08-02 12:00:00', 450.00, 140, '2024-07-12 14:42:06', '2024-07-12 14:42:06'),
(3, 'QR102', 3, 5, 6, '2024-08-03 10:00:00', '2024-08-03 13:00:00', 600.00, 130, '2024-07-12 14:42:06', '2024-07-12 14:42:06'),
(4, 'EK103', 4, 7, 8, '2024-08-04 11:00:00', '2024-08-04 14:00:00', 700.00, 120, '2024-07-12 14:42:06', '2024-07-12 14:42:06'),
(5, 'LH104', 5, 9, 10, '2024-08-05 12:00:00', '2024-08-05 15:00:00', 550.00, 110, '2024-07-12 14:42:06', '2024-07-12 14:42:06'),
(6, 'AA105', 6, 1, 3, '2024-08-06 08:00:00', '2024-08-06 11:00:00', 400.00, 100, '2024-07-12 14:42:06', '2024-07-12 14:42:06'),
(7, 'BA106', 7, 2, 4, '2024-08-07 09:00:00', '2024-08-07 12:00:00', 480.00, 90, '2024-07-12 14:42:06', '2024-07-12 14:42:06'),
(8, 'AF107', 8, 3, 5, '2024-08-08 10:00:00', '2024-08-08 13:00:00', 620.00, 80, '2024-07-12 14:42:06', '2024-07-12 14:42:06'),
(9, 'JL108', 9, 4, 6, '2024-08-09 11:00:00', '2024-08-09 14:00:00', 750.00, 70, '2024-07-12 14:42:06', '2024-07-12 14:42:06'),
(10, 'QF109', 10, 5, 7, '2024-08-10 12:00:00', '2024-08-10 15:00:00', 530.00, 60, '2024-07-12 14:42:06', '2024-07-12 14:42:06');

-- --------------------------------------------------------

--
-- Table structure for table `hotelbookings`
--

CREATE TABLE `hotelbookings` (
  `hotel_booking_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `hotel_id` int(11) NOT NULL,
  `check_in_date` date NOT NULL,
  `check_out_date` date NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'confirmed',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hotelbookings`
--

INSERT INTO `hotelbookings` (`hotel_booking_id`, `user_id`, `hotel_id`, `check_in_date`, `check_out_date`, `status`, `created_at`, `updated_at`) VALUES
(15, 15, 4, '2024-07-18', '2024-07-25', 'confirmed', '2024-07-17 11:38:36', '2024-07-17 11:38:36');

-- --------------------------------------------------------

--
-- Table structure for table `hotels`
--

CREATE TABLE `hotels` (
  `hotel_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `location_id` int(11) NOT NULL,
  `price_per_night` decimal(10,2) NOT NULL,
  `available_rooms` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hotels`
--

INSERT INTO `hotels` (`hotel_id`, `name`, `location_id`, `price_per_night`, `available_rooms`, `created_at`, `updated_at`) VALUES
(1, 'The Plaza Hotel', 1, 300.00, 50, '2024-07-12 14:42:06', '2024-07-12 14:42:06'),
(2, 'The Ritz-Carlton', 2, 350.00, 40, '2024-07-12 14:42:06', '2024-07-12 14:42:06'),
(3, 'Four Seasons Hotel', 3, 400.00, 30, '2024-07-12 14:42:06', '2024-07-12 14:42:06'),
(4, 'The Savoy', 4, 450.00, 20, '2024-07-12 14:42:06', '2024-07-12 14:42:06'),
(5, 'Hotel de Crillon', 5, 500.00, 10, '2024-07-12 14:42:06', '2024-07-12 14:42:06'),
(6, 'Imperial Hotel', 6, 550.00, 5, '2024-07-12 14:42:06', '2024-07-12 14:42:06'),
(7, 'Burj Al Arab', 7, 600.00, 15, '2024-07-12 14:42:06', '2024-07-12 14:42:06'),
(8, 'Le Gray', 8, 650.00, 25, '2024-07-12 14:42:06', '2024-07-12 14:42:06'),
(9, 'Shangri-La Hotel', 9, 700.00, 35, '2024-07-12 14:42:06', '2024-07-12 14:42:06'),
(10, 'Fairmont Royal York', 10, 750.00, 45, '2024-07-12 14:42:06', '2024-07-12 14:42:06');

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `location_id` int(11) NOT NULL,
  `city_name` varchar(100) NOT NULL,
  `longitude` double NOT NULL,
  `latitude` double NOT NULL,
  `country` varchar(100) NOT NULL,
  `city_code` varchar(10) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`location_id`, `city_name`, `longitude`, `latitude`, `country`, `city_code`, `created_at`, `updated_at`) VALUES
(1, 'New York', -74.006, 40.7128, 'USA', 'NYC', '2024-07-12 14:42:06', '2024-07-12 14:42:06'),
(2, 'Los Angeles', -118.2437, 34.0522, 'USA', 'LAX', '2024-07-12 14:42:06', '2024-07-12 14:42:06'),
(3, 'Chicago', -87.6298, 41.8781, 'USA', 'CHI', '2024-07-12 14:42:06', '2024-07-12 14:42:06'),
(4, 'London', -0.1276, 51.5074, 'UK', 'LON', '2024-07-12 14:42:06', '2024-07-12 14:42:06'),
(5, 'Paris', 2.3522, 48.8566, 'France', 'PAR', '2024-07-12 14:42:06', '2024-07-12 14:42:06'),
(6, 'Tokyo', 139.6917, 35.6895, 'Japan', 'TYO', '2024-07-12 14:42:06', '2024-07-12 14:42:06'),
(7, 'Dubai', 55.2708, 25.2048, 'UAE', 'DXB', '2024-07-12 14:42:06', '2024-07-12 14:42:06'),
(8, 'Beirut', 35.5018, 33.8938, 'Lebanon', 'BEY', '2024-07-12 14:42:06', '2024-07-12 14:42:06'),
(9, 'Sydney', 151.2093, -33.8688, 'Australia', 'SYD', '2024-07-12 14:42:06', '2024-07-12 14:42:06'),
(10, 'Toronto', -79.3832, 43.6532, 'Canada', 'TOR', '2024-07-12 14:42:06', '2024-07-12 14:42:06'),
(12, 'Kornayel', 33.006, 32.7128, 'Lebanon', 'KOR', '2024-07-13 21:53:57', '2024-07-13 21:53:57');

-- --------------------------------------------------------

--
-- Table structure for table `taxibookings`
--

CREATE TABLE `taxibookings` (
  `taxi_booking_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `taxi_id` int(11) DEFAULT NULL,
  `pickup_location_id` int(11) DEFAULT NULL,
  `dropoff_location_id` int(11) DEFAULT NULL,
  `pickup_time` datetime DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `taxibookings`
--

INSERT INTO `taxibookings` (`taxi_booking_id`, `user_id`, `taxi_id`, `pickup_location_id`, `dropoff_location_id`, `pickup_time`, `status`, `created_at`, `updated_at`) VALUES
(21, 15, 12, 2, 8, '2024-07-18 17:47:00', 'confirmed', '2024-07-17 11:44:54', '2024-07-17 11:44:54'),
(22, 15, 12, 2, 8, '2024-07-18 17:47:00', 'confirmed', '2024-07-17 11:45:13', '2024-07-17 11:45:13'),
(23, 15, 13, 3, 6, '2024-07-27 16:47:00', 'confirmed', '2024-07-17 11:46:01', '2024-07-17 11:46:01');

-- --------------------------------------------------------

--
-- Table structure for table `taxis`
--

CREATE TABLE `taxis` (
  `taxi_id` int(11) NOT NULL,
  `company_name` varchar(100) NOT NULL,
  `car_type` varchar(50) NOT NULL,
  `price_per_km` decimal(10,2) NOT NULL,
  `available` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `available_location_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `taxis`
--

INSERT INTO `taxis` (`taxi_id`, `company_name`, `car_type`, `price_per_km`, `available`, `created_at`, `updated_at`, `available_location_id`) VALUES
(11, 'Uber', 'Sedan', 1.50, 1, '2024-07-17 10:36:06', '2024-07-17 10:36:06', 1),
(12, 'Lyft', 'SUV', 2.00, 1, '2024-07-17 10:36:06', '2024-07-17 10:36:06', 2),
(13, 'Cabify', 'Minivan', 2.50, 1, '2024-07-17 10:36:06', '2024-07-17 10:36:06', 3),
(14, 'Bolt', 'Luxury', 3.00, 1, '2024-07-17 10:36:06', '2024-07-17 10:36:06', 4),
(15, 'Careem', 'Economy', 1.00, 1, '2024-07-17 10:36:06', '2024-07-17 10:36:06', 5),
(16, 'Ola', 'Sedan', 1.50, 1, '2024-07-17 10:36:06', '2024-07-17 10:36:06', 6),
(17, 'Grab', 'SUV', 2.00, 1, '2024-07-17 10:36:06', '2024-07-17 10:36:06', 7),
(18, 'Didi', 'Minivan', 2.50, 1, '2024-07-17 10:36:06', '2024-07-17 10:36:06', 8),
(19, 'Gojek', 'Luxury', 3.00, 1, '2024-07-17 10:36:06', '2024-07-17 10:36:06', 9),
(20, 'Curb', 'Economy', 1.00, 1, '2024-07-17 10:36:06', '2024-07-17 10:36:06', 10);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `middle_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `phone_number` varchar(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `first_name`, `middle_name`, `last_name`, `email`, `password`, `phone_number`, `created_at`, `updated_at`) VALUES
(15, 'Amir', 'Wassim', 'Hilal', 'amiramirhilal@gmail.com', '$2y$10$ikpr3dfD/p4eR6sRhGWtFeIfS7YRJsGXw/BMkqVdGBGZ8a0qLEsEm', '03734552', '2024-07-16 01:49:42', '2024-07-16 01:49:42');

-- --------------------------------------------------------

--
-- Table structure for table `userverifications`
--

CREATE TABLE `userverifications` (
  `verification_id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `verification_code` varchar(6) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `expires_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `first_name` varchar(255) NOT NULL,
  `middle_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone_number` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adminaccounts`
--
ALTER TABLE `adminaccounts`
  ADD PRIMARY KEY (`admin_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `airports`
--
ALTER TABLE `airports`
  ADD PRIMARY KEY (`airport_id`),
  ADD UNIQUE KEY `code` (`code`),
  ADD KEY `airports_ibfk_1` (`location_id`);

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`booking_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `flight_id` (`flight_id`);

--
-- Indexes for table `chatlogs`
--
ALTER TABLE `chatlogs`
  ADD PRIMARY KEY (`chat_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`company_id`);

--
-- Indexes for table `flights`
--
ALTER TABLE `flights`
  ADD PRIMARY KEY (`flight_id`),
  ADD KEY `company_id` (`company_id`),
  ADD KEY `departure_airport_id` (`departure_airport_id`),
  ADD KEY `arrival_airport_id` (`arrival_airport_id`);

--
-- Indexes for table `hotelbookings`
--
ALTER TABLE `hotelbookings`
  ADD PRIMARY KEY (`hotel_booking_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `hotel_id` (`hotel_id`);

--
-- Indexes for table `hotels`
--
ALTER TABLE `hotels`
  ADD PRIMARY KEY (`hotel_id`),
  ADD KEY `location_id` (`location_id`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`location_id`),
  ADD UNIQUE KEY `city_code` (`city_code`);

--
-- Indexes for table `taxibookings`
--
ALTER TABLE `taxibookings`
  ADD PRIMARY KEY (`taxi_booking_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `taxi_id` (`taxi_id`),
  ADD KEY `pickup_location_id` (`pickup_location_id`),
  ADD KEY `dropoff_location_id` (`dropoff_location_id`);

--
-- Indexes for table `taxis`
--
ALTER TABLE `taxis`
  ADD PRIMARY KEY (`taxi_id`),
  ADD KEY `fk_available_location` (`available_location_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `userverifications`
--
ALTER TABLE `userverifications`
  ADD PRIMARY KEY (`verification_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adminaccounts`
--
ALTER TABLE `adminaccounts`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1017;

--
-- AUTO_INCREMENT for table `airports`
--
ALTER TABLE `airports`
  MODIFY `airport_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `booking_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `chatlogs`
--
ALTER TABLE `chatlogs`
  MODIFY `chat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `company_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `flights`
--
ALTER TABLE `flights`
  MODIFY `flight_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `hotelbookings`
--
ALTER TABLE `hotelbookings`
  MODIFY `hotel_booking_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `hotels`
--
ALTER TABLE `hotels`
  MODIFY `hotel_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `locations`
--
ALTER TABLE `locations`
  MODIFY `location_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `taxibookings`
--
ALTER TABLE `taxibookings`
  MODIFY `taxi_booking_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `taxis`
--
ALTER TABLE `taxis`
  MODIFY `taxi_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `userverifications`
--
ALTER TABLE `userverifications`
  MODIFY `verification_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `airports`
--
ALTER TABLE `airports`
  ADD CONSTRAINT `airports_ibfk_1` FOREIGN KEY (`location_id`) REFERENCES `locations` (`location_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `bookings`
--
ALTER TABLE `bookings`
  ADD CONSTRAINT `bookings_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `bookings_ibfk_2` FOREIGN KEY (`flight_id`) REFERENCES `flights` (`flight_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `chatlogs`
--
ALTER TABLE `chatlogs`
  ADD CONSTRAINT `chatlogs_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `flights`
--
ALTER TABLE `flights`
  ADD CONSTRAINT `flights_ibfk_1` FOREIGN KEY (`company_id`) REFERENCES `companies` (`company_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `flights_ibfk_2` FOREIGN KEY (`departure_airport_id`) REFERENCES `airports` (`airport_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `flights_ibfk_3` FOREIGN KEY (`arrival_airport_id`) REFERENCES `airports` (`airport_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `hotelbookings`
--
ALTER TABLE `hotelbookings`
  ADD CONSTRAINT `hotelbookings_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `hotelbookings_ibfk_2` FOREIGN KEY (`hotel_id`) REFERENCES `hotels` (`hotel_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `hotels`
--
ALTER TABLE `hotels`
  ADD CONSTRAINT `hotels_ibfk_1` FOREIGN KEY (`location_id`) REFERENCES `locations` (`location_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `taxibookings`
--
ALTER TABLE `taxibookings`
  ADD CONSTRAINT `taxibookings_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `taxibookings_ibfk_2` FOREIGN KEY (`taxi_id`) REFERENCES `taxis` (`taxi_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `taxibookings_ibfk_3` FOREIGN KEY (`pickup_location_id`) REFERENCES `locations` (`location_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `taxibookings_ibfk_4` FOREIGN KEY (`dropoff_location_id`) REFERENCES `locations` (`location_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `taxis`
--
ALTER TABLE `taxis`
  ADD CONSTRAINT `fk_available_location` FOREIGN KEY (`available_location_id`) REFERENCES `locations` (`location_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
