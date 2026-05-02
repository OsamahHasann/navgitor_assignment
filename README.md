# Flutter Navigation & Data Passing Assignment

A professional Flutter application built as a software engineering assignment to demonstrate the core concepts of screen navigation and data communication between interfaces.

---

# Project Overview

This project showcases a **"Restaurant App"** concept where users can browse a menu of products and view detailed information for each item. The primary goal was to implement a seamless navigation flow while ensuring efficient data integrity during transitions.

---

# Application Screens & Flow

# 1. Products View (Main Screen)
The main screen features a clean, responsive layout displaying available products (e.g., Burger, Pizza) with their basic details like description and price.

<p align="center">
  <img src="https://github.com/user-attachments/assets/7db730b7-eb17-4db6-91b1-6bd0caf4e22f" width="320" alt="Products Screen" />
</p>

---

# 2. Product Details View (Data Passing Forward)
When a user taps on any product card, the app performs a **Forward Data Passing**. The entire product object (or map) is passed directly through the widget's constructor to open a dedicated details screen displaying the item's high-resolution image, description, and price.

<p align="center">
  <img src="https://github.com/user-attachments/assets/e8e9c416-f9b8-496f-8d29-6c7604551d89" width="320" alt="Details Screen" />
</p>

---

# 3. Return Navigation & SnackBar (Data Passing Backward)
This is the core concept of the assignment. When the user clicks on the *"Back to products view"* button:
* The app uses `Navigator.pop(context, "Return Message")` to pass a string message backward.
* The main screen captures this returned message using `await` on the `Navigator.push` call.
* Finally, it triggers a green `SnackBar` at the bottom of the screen to display the feedback message.

<p align="center">
  <img src="https://github.com/user-attachments/assets/a527ca4d-9af8-4bb6-932d-d434707308ed" width="320" alt="SnackBar Feedback" />
</p>

---

# Technical Implementation & Architecture

* **Navigation:** Managed using `MaterialPageRoute` for smooth screen transitions.
* **Asynchronous Data Retrieval:** Used `async/await` with the `Navigator.push` function to wait for and capture data sent back from the details screen.
* **Constructor Injection:** Passed data directly via the constructor using `final` variables in the `ProductDetailsScreen` widget to ensure thread/state safety.
* **Theme:** Designed in a modern **Dark Mode** with a custom vibrant lime accent color.

---

# How to Downlode Locally

1. **Clone the repository:**
   ```bash
   git clone [https://github.com/OsamahHasann/navgitor_assignment.git](https://github.com/OsamahHasann/navgitor_assignment.git)


