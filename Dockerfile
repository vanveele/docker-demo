FROM python:2.7-alpine
LABEL maintainer robert.vanveelen@gmail.com
COPY requirements.txt /app/requirements.txt
RUN pip install -r /app/requirements.txt
COPY . /app
WORKDIR /app
EXPOSE 5000
ENTRYPOINT ["python"]
CMD ["application.py"]

