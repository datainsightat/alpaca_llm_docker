# Alpaca LLM inside a Docker Container

This docker image is base on the Stanford ['Alpaca'](https://crfm.stanford.edu/2023/03/13/alpaca.html)[[1]](#1) model. Credit: https://github.com/cocktailpeanut/dalai

## Install

clone repo.

    docker build -t llm .
    docker container run -it -p 3000:3000 --shm-size=0.45gb --name llm llm

## Run

    npx dalai serve
    
"...the **go to** statement should be abolished..." [[1]](#1).

## References
<a id="1">[1]</a> 
Stanford Alpaca: An Instruction-following LLaMA model (2023), Rohan Taori and Ishaan Gulrajani and Tianyi Zhang and Yann Dubois and Xuechen Li and Carlos Guestrin and Percy Liang and Tatsunori B. Hashimoto
