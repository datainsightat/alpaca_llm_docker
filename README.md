# Alpaca LLM inside a Docker Container

This docker image is based on the Stanford ['Alpaca'](https://crfm.stanford.edu/2023/03/13/alpaca.html)[[1]](#1) model. It uses the ['dalai'](https://github.com/cocktailpeanut/dalai)[[2]](#2) tool download and Access the Alpaca model via an webserver.

## Install

clone repo.

    docker build -t alpaca_7b_llm .
    docker container run -it -p 3000:3000 --name alpaca_7b_llm alpaca_7b_llm

## Run

    npx dalai serve
    
Access the server on http://localhost:3000

## References
<a id="1">[1]</a> 
Stanford Alpaca: An Instruction-following LLaMA model (2023), Rohan Taori and Ishaan Gulrajani and Tianyi Zhang and Yann Dubois and Xuechen Li and Carlos Guestrin and Percy Liang and Tatsunori B. Hashimoto

<a id="2">[2]</a> 
Dalai: Run LLaMA and Alpaca on your computer. https://github.com/cocktailpeanut/dalai
