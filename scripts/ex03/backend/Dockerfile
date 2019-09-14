FROM python:3

WORKDIR /usr/src/app

COPY Pipfile ./
COPY Pipfile.lock ./

RUN pip install pipenv
RUN pipenv install --system

COPY . .

EXPOSE 5000

CMD ["python", "./run.py"]
