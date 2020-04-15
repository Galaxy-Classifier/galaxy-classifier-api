FROM tiangolo/uvicorn-gunicorn:python3.6
RUN pip install --upgrade pip
COPY ./app /app
RUN pip install -r /app/requirements.txt
CMD ["/start-reload.sh"]