help:
	more README.md

build:
	docker build -t app_img .

run: 
	docker run -d -v `pwd`:/app -d --name app  -p 8000:80 app_img

test:
	docker exec -it app poetry run pytest tests

format:
	docker exec -it app poetry run black app tests && poetry run isort app tests 

.PHONY: build format help run test