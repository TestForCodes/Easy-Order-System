FROM python:3.7-alpine
ENV PYTHONUNBUFFERED 1

RUN mkdir /app
WORKDIR /app

COPY /Pipfile /app/Pipfile
COPY /Pipfile.lock /app/Pipfile.lock
RUN pip install pipenv
RUN pipenv install --system --dev --deploy --ignore-pipfile
COPY ./app /app