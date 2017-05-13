FROM rocker/r-base

# Reference: [Dockerize an SSH service - Docker Documentation](https://docs.docker.com/engine/examples/running_ssh_service/)

RUN apt-get update \
	&& apt-get install -y ssh openssh-server \
	&& rm -rf /var/lib/apt/lists/*

RUN mkdir /var/run/sshd

RUN echo 'AuthorizedKeysFile /run/secrets/id_rsa.pub' >> /etc/ssh/sshd_config \
	&& echo 'CheckHostIP no' >> /etc/ssh/sshd_config \
	&& echo 'PermitRootLogin without-password' >> /etc/ssh/sshd_config

# SSH login fix. Otherwise user is kicked off after login
RUN sed 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' -i /etc/pam.d/sshd

ENV NOTVISIBLE "in users profile"

RUN echo "export VISIBLE=now" >> /etc/profile

EXPOSE 22

CMD ["/usr/sbin/sshd", "-D"]