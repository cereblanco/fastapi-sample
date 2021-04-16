FROM tiangolo/uvicorn-gunicorn:python3.8

RUN curl -sSL curl -sL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py  | POETRY_HOME=/opt/poetry python && \
    cd /usr/local/bin && \
    ln -s /opt/poetry/bin/poetry && \
    poetry config virtualenvs.create false

ARG PROD=

COPY pyproject.toml poetry.lock /app/

RUN if [[ -z "$PROD" ]]; then poetry install -n --no-dev; else poetry install -n; fi

COPY ./app /app/app
