# Alpha Blog

A simple blog application built with **Ruby on Rails** that lets users register, write articles, and manage their own profiles. Admins have elevated privileges to manage all users and content.

---

## ✨ Features

- User authentication (sign‑up, log‑in, log‑out)
- Full article CRUD (create, read, update, delete)
- User profile pages
- Role‑based authorization  
  - Users can edit/delete **their own** articles and profile  
  - Admins can edit/delete **any** user or article
- Flash messages for user feedback
- Pagination for articles and users (`will_paginate`)
- Responsive UI built with Bootstrap 5

---

## 🧰 Tech Stack

| Layer      | Tech                                |
|------------|-------------------------------------|
| Language   | **Ruby 3.x**                        |
| Framework  | **Rails 7.x**                       |
| Database   | SQLite3 (dev) / PostgreSQL (prod)   |
| Frontend   | Bootstrap 5 + ERB templates         |
| Auth       | `has_secure_password` (BCrypt)      |



1. **Clone the repo**

   git clone https://github.com/MuhammadArbazIshfaq/alpha_blog.git
   cd alpha_blog
