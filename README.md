# llm_docker

LLM inside a Docker Container

## Install

clone repo.

  docker build -t llm .
  docker container run -it -p 8080:80 --shm-size=0.45gb --name llm llm
