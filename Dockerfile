#######################################
# Docker Environment to run local LLM #
#######################################

FROM ubuntu:20.04

###############
# Environment #
###############

ENV NODE_VERSION=19.8.0
ENV NVM_DIR=/root/.nvm
ENV PATH="/root/.nvm/versions/node/v${NODE_VERSION}/bin/:${PATH}"

###########
# General #
###########

RUN apt-get update && \
    apt-get install -y curl wget git virtualenv python3-pip python3.8-dev
    # python3.8-distutils python3.8-venv

######################
# Create Environment #
######################

# RUN cd /opt
# RUN virtualenv --python=python3.8 env
#RUN source env/bin/activate

########
# NODE #
########

RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash

RUN . "$NVM_DIR/nvm.sh" && nvm install ${NODE_VERSION}
RUN . "$NVM_DIR/nvm.sh" && nvm use v${NODE_VERSION}
RUN . "$NVM_DIR/nvm.sh" && nvm alias default v${NODE_VERSION}

RUN node --version
RUN npm --version

##############
# Clone Repo #
##############

RUN git clone https://github.com/cocktailpeanut/dalai.git
RUN cd dalai

#####################
# install Alpaca 7B #
#####################

RUN npx alpaca install 7b
