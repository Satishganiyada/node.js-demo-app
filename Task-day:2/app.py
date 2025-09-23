from fastapi import FastAPI
from fastapi.responses import HTMLResponse

app = FastAPI()

@app.get("/")
def read_root():
    return {"message": "Hello, FastAPI!"}

@app.get("/about", response_class=HTMLResponse)
def about():
    return """
    <h2>About Page</h2>
    <p>This is a simple FastAPI application in one file.</p>
    """