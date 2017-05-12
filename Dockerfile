FROM rocker/r-base

RUN apt-get update \ 
	&& apt-get install -y ssh \
	&& rm -rf /var/lib/apt/lists/*

EXPOSE 22

CMD ["/bin/bash"]
