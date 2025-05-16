![Screenshot 2025-05-15 200915](https://github.com/user-attachments/assets/6e8bd41e-9ce5-43b1-95bc-07afc8dd35fc)
# Task Manager

A simple yet functional Task Manager application built with **Ruby on Rails**, using **Devise** for authentication and **PostgreSQL** as the database.

---

## 🚀 Features Implemented

- 🔐 **Authentication with Devise**  
  Users can sign up, log in.

- 👤 **User Dashboard**  
  Once logged in, users are redirected to their dashboard where they can manage their tasks.

- ✅ **Task Management (CRUD)**  
  - Create new tasks  
  - View list of tasks  
  - Edit/update existing tasks   

- 💾 **Persistent Data Storage**  
  Tasks are saved in the database associated with the currently logged-in user.

- 💡 **Frontend + Backend + Database Functional**

---

##  🚧 **Features Remaining**
UI Enhancement

Improve the current interface using Bootstrap or a modern frontend framework to provide a more attractive and user-friendly design.

Logout Functionality

Fix the logout feature to ensure it properly terminates the session and redirects the user as expected.

Task Deletion Feature

Ensure the delete button is visible and the deletion functionality works reliably in the user interface.

Admin Panel Integration

Define admin roles (using Devise or custom role-based access).

Create an admin dashboard with the following capabilities:

View all registered users.

Monitor and manage user-created tasks.

Optionally, delete or disable user accounts.

---

## 🛠️ Installation

1. **Clone the repository**

   ```bash
   git clone https://github.com/Khadija-tulkubra/Task_Manager.git
   cd Task_Manager
