# Online Restaurant Ordering System API

## Overview
This project is an **Online Restaurant Ordering System** built using FastAPI and MySQL. It allows users to view menu items, place orders, and track them. Admin and restaurant staff have additional capabilities to manage menu content and update orders.

## Team
**Team Name:** Funtime  
**Date:** August 7th

---

## Features
- View full menu (sandwiches, recipes, resources)
- Place new food orders
- Track order status by ID
- Admin CRUD for all menu tables
- Fully RESTful API with FastAPI
- Interactive API docs available at `/docs`

---

## Technologies Used
- FastAPI
- Python 3.11+
- SQLAlchemy
- Pydantic
- MySQL
- Uvicorn
- Swagger UI (for interactive API documentation)

---

## Folder Structure
.
├── app/
├── database/
├── docs/
│ ├── Updated_User_Manual.docx
│ ├── Updated_Technical_Document.docx
│ ├── Sprint_Backlog.docx
│ ├── Product_Backlog.docx
│ └── User_Stories.docx
├── main.py
├── requirements.txt

yaml
Copy
Edit

---

## Setup Instructions

1. **Clone the repository**
```bash
git clone https://github.com/MihinSen/online-restaurant-ordering-system.git
cd online-restaurant-ordering-system
2. **Create and activate a virtual environment**

bash
Copy
Edit
python -m venv env
source env/bin/activate  # or .\env\Scripts\activate on Windows
3. **Install dependencies**

bash
Copy
Edit
pip install -r requirements.txt
4. **Configure database**

Create a database sandwich_maker_api in MySQL

Update credentials in config.py

5. **Run the API**

bash
Copy
Edit
uvicorn main:app --reload
6. **Test API**
Visit http://127.0.0.1:8000/docs to explore and test all endpoints.

Contributors
Mihin (Solo Developer)
