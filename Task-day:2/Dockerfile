FROM python:3.12-slim
WORKDIR /app
COPY app.py /app/
RUN pip install fastapi==0.115.0 uvicorn[standard]==0.30.1
EXPOSE 8000
CMD ["uvicorn","app:app","--host","0.0.0.0","--port","8000","--reload"]