from fastapi import FastAPI
from app.routes import tasks

app = FastAPI(title="DevOps API Project")

app.include_router(tasks.router)