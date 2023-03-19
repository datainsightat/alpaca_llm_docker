#######################################
# Docker Environment to run local LLM #
#######################################

FROM ubuntu:20.04

###############
# Environment #
###############

ENV LANG=en_US.utf-8
ENV LC_ALL=en_US.utf-8

ENV NODE_VERSION=18.15.0
ENV NVM_DIR=/root/.nvm
ENV PATH="/root/.nvm/versions/node/v${NODE_VERSION}/bin/:${PATH}"

ENV DEBIAN_FRONTEND="noninteractive"

###########
# General #
###########

RUN apt-get update && \
    apt-get install -y curl wget git python3-pip python3.8.10
    # python3.8-distutils python3.8-venv virtualenv

RUN ln -s /usr/bin/python3 /usr/bin/python & \
    ln -s /usr/bin/pip3 /usr/bin/pip

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

RUN git clone https://github.com/cocktailpeanut/dalai.git /opt/dalai
RUN cd /opt/dalai
RUN npm install

#####################
# install Alpaca 7B #
#####################

#RUN npx dalai alpaca install 7B
#RUN npx dalai serve
