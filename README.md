# FastApi Sample

- uses https://github.com/tiangolo/uvicorn-gunicorn-docker
- uses Poetry https://github.com/python-poetry/poetry
- with black, isort, flake8, mypy, pytest

TODO: 
- add github actions

# How to run?

1. Build uvicorn docker
    - `make build`
1. Spin-up container 
    - `make run`

1. Browse `https://localhost:8000/docs`

# Development utilities

1. Run tests
    - `make test`

1. Format with black and isort
    - `make format`