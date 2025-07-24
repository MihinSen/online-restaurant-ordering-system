### Installing necessary packages:  
* `pip install fastapi`
* `pip install "uvicorn[standard]"`  
* `pip install sqlalchemy`  
* `pip install pymysql`
* `pip install pytest`
* `pip install pytest-mock`
* `pip install httpx`
* `pip install cryptography`
### Run the server:
`uvicorn api.main:app --reload`
### Test API by built-in docs:
[http://127.0.0.1:8000/docs](http://127.0.0.1:8000/docs)
---

## Features Implemented
- User Registration (Customer, Staff, Admin roles)
- Menu Item Management
- Place Orders
- View Orders

## Project Structure
app/
├── main.py          # FastAPI app and endpoints
├── models.py        # SQLAlchemy models (User, Order, MenuItem)
├── schemas.py       # Pydantic schemas
├── database.py      # DB connection + create tables
├── config.py        # App config (optional)
├── test_orders.py   # Sample test (pytest)
