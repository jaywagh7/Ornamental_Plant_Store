# 🌿 Ornamental Plant Store

An e-commerce website designed to showcase and sell ornamental plants online. This project was built to provide a smooth and user-friendly shopping experience for plant lovers.

---

## 🚀 Features

- 🌱 Browse a collection of ornamental plants  
- 🔍 Search functionality to find plants easily  
- 🛒 Add-to-cart interface (basic)  
- 📋 Product listing with plant details like name, price, and image  
- 💡 Simple and clean user interface  

---

## 🛠️ Tech Stack

- **Frontend:** HTML, CSS, JavaScript  
- **Backend:** PHP  
- **Database:** MySQL  

---

## 📂 Project Structure

ORNAMENTAL_PLANT_STORE/
├── .vs/                       # Visual Studio config
├── .vscode/                   # VSCode config
├── admin/                     # Admin dashboard and related files
├── css/                       # Stylesheets
├── Database/                  # Database connection or schema files
├── employee/                  # Employee-related files
├── images/                    # Plant images and other media
├── js/                        # JavaScript files
├── Mail/                      # Email handling scripts
├── user/                      # User profile and related pages

├── account.php
├── all_products.php
├── category_product_list.php
├── checkout.php
├── checkout_process.php
├── contact.php
├── database.php               # Database connection file
├── ecommerce.sql              # MySQL database dump
├── footer.php
├── header.php
├── index.php                  # Homepage
├── login.php
├── logout.php
├── menu.php
├── product_single.php         # Single product detail page
├── README.md
├── search.php
├── shopping-cart.php
├── slider.php
├── thank-you.php
├── user_login1.php
├── user_logout.php
├── user_register.php
├── view_category.php


---

## 💻 Setup Instructions

1. **Clone the repository**:
   ```bash
   git clone https://github.com/your-username/ORNAMENTAL_PLANT_STORE.git
   
2. **Navigate into the project directory**:
  
  ```bash  cd ORNAMENTAL_PLANT_STORE 
   
3.**Set up the MySQL database**:

  -Open phpMyAdmin (or any MySQL client).
  -Create a new database (e.g., ornamental_store).
  -Import the ecommerce.sql file located in the root folder.

4.**Configure your database connection**:

  -Open database.php.
  -Replace the credentials with your local MySQL config:
 
 ```bash $con = mysqli_connect("localhost", "root", "", "ornamental_store"); `

5.**Run the project**:

-Start your local web server (XAMPP, WAMP, etc.).
-Place the project folder inside your server’s web directory (e.g., htdocs for XAMPP).
-Open your browser and go to:
```bash
  http://localhost/ORNAMENTAL_PLANT_STORE/

