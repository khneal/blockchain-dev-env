FROM ubuntu:16.04

RUN apt-get update
RUN apt-get -y upgrade
RUN apt-get -y install curl git vim build-essential
RUN apt-get -y install software-properties-common
RUN add-apt-repository -y ppa:ethereum/ethereum

RUN curl -sL https://deb.nodesource.com/setup_9.x | bash -
RUN apt-get install -y nodejs

RUN npm install -g truffle
RUN npm install -g solc

RUN npm install -g ganache-cli

RUN mkdir -p /blockchain
WORKDIR /blockchain

#optional
RUN apt-get -y install ethereum ##optional, installs geth
RUN apt-get -y install solc ##optional, installs C-version of solidity

RUN npm install web3 ethereumjs-util ethereumjs-tx ###optional
RUN npm install -g express ###optional
RUN npm install web3-utils ###optional utilities 

RUN git clone https://github.com/jim-steele/solidity-examples.git

