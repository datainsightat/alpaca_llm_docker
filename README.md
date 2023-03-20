# Alpaca LLM inside a Docker Container

This docker image is based on the Stanford ['Alpaca'](https://crfm.stanford.edu/2023/03/13/alpaca.html)[[1]](#1) model, which is a fine-tuned version of Meta's ['LLaMa'](https://ai.facebook.com/blog/large-language-model-llama-meta-ai/)[[3]](#3) foundational large language model. It uses the ['dalai'](https://github.com/cocktailpeanut/dalai)[[2]](#2) tool download and Access the Alpaca model via an webserver.

## Install

clone repo.

    docker build -t alpaca_7b_llm .
    docker container run -it -p 3000:3000 --name alpaca_7b_llm alpaca_7b_llm

## Run

    npx dalai serve
    
Access the server on http://localhost:3000

## Important!

Be aware of this term by Stanford:

> We emphasize that Alpaca is intended only for academic research and any commercial use is prohibited. There are three factors in this decision: First, Alpaca is based on LLaMA, which has a non-commercial license, so we necessarily inherit this decision. Second, the instruction data is based on OpenAI’s text-davinci-003, whose terms of use prohibit developing models that compete with OpenAI. Finally, we have not designed adequate safety measures, so Alpaca is not ready to be deployed for general use.

## References
<a id="1">[1]</a> 
Stanford Alpaca: An Instruction-following LLaMA model (2023), Rohan Taori and Ishaan Gulrajani and Tianyi Zhang and Yann Dubois and Xuechen Li and Carlos Guestrin and Percy Liang and Tatsunori B. Hashimoto. https://crfm.stanford.edu/2023/03/13/alpaca.html

<a id="2">[2]</a> 
Dalai: Run LLaMA and Alpaca on your computer. https://github.com/cocktailpeanut/dalai

<a id="2">[3]</a> 
LLaMa: Meta, https://ai.facebook.com/blog/large-language-model-llama-meta-ai/, https://github.com/facebookresearch/llama
