FROM ubuntu:16.04

RUN apt-get update && apt-get upgrade -y

RUN apt-get install g++ -y && \
	apt-get install vim -y && \
	apt-get install git -y

RUN apt-get install cmake -y && \
	apt-get install make -y

RUN git config --global user.name "Alina Fesyk" && \
	git config --global user.email "fesyk.alina@gmail.com" && \
	git config --global core.editor vim && \
	git config --global merge.tool meld
