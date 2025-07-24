from pydantic import BaseModel

class UserBase(BaseModel):
    name: str
    role: str

class UserCreate(UserBase):
    pass

class MenuItemBase(BaseModel):
    name: str
    price: float

class MenuItemCreate(MenuItemBase):
    pass

class OrderBase(BaseModel):
    user_id: int
    item_ids: str
    total: float

class OrderCreate(OrderBase):
    pass
