docker-spin-up:
	docker compose --env-file env up --build -d

sleeper:
	sleep 15

up: docker-spin-up sleeper 

down: 
	docker compose --env-file env down

shell:
	docker exec -ti pipelinerunner bash

format:
	docker exec pipelinerunner python -m black -S --line-length 79 .

isort:
	docker exec pipelinerunner isort .

pytest:
	docker exec pipelinerunner pytest /code/test

type:
	docker exec pipelinerunner mypy --ignore-missing-imports /code

lint: 
	docker exec pipelinerunner flake8 /code 

ci: isort format type lint pytest

stop-etl: 
	docker exec pipelinerunner service cron stop

####################################################################################################################
# Set up cloud infrastructure

tf-init:
	terraform -chdir=./terraform init

infra-up:
	terraform -chdir=./terraform apply

infra-down:
	terraform -chdir=./terraform destroy

infra-config:
	terraform -chdir=./terraform output

