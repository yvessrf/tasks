from fastapi import APIRouter

router = APIRouter(prefix="/tasks", tags=["Tasks"])

tasks_db = []

@router.get("/")
def get_tasks():
    return tasks_db

@router.post("/")
def create_task(task: dict):
    tasks_db.append(task)
    return task