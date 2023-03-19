# llm_docker

LLM inside a Docker Container

## Install

clone repo.

    docker build -t llm .
    docker container run -it -p 3000:3000 --shm-size=0.45gb --name llm llm
