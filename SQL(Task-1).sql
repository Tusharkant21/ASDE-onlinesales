-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 15, 2023 at 09:11 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `asde`
--
-- Sql Query to retrive output repoort for Fetch top 3 departments along with their name and average monthly salary.
-- DEPT_NAME   AVG_MONTHLY_SALARY (USD)




SELECT 
    d.NAME AS `DEPT_NAME`, 
    AVG(s.`AMT (USD)`) AS `AVG_MONTHLY_SALARY (USD)`
FROM 
    employees AS e 
JOIN 
    departments AS d ON e.`DEPT ID` = d.id 
JOIN 
    salaries AS s ON s.EMP_ID = e.id 
GROUP BY 
    d.NAME 
ORDER BY 
    AVG(s.`AMT (USD)`) DESC 
LIMIT 3;



