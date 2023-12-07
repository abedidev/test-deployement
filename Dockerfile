FROM python:3.11-slim


RUN git clone https://github.com/abedidev/test-deployement.git
WORKDIR "test-deployement/"

RUN pip3 install --no-cache-dir -r requirements.txt

EXPOSE 8000
CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "8000"]