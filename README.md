# r_docker_base

[![Build Status](https://travis-ci.org/nareal/r_docker_base.svg?branch=master)](https://travis-ci.org/nareal/hr_docker_base) [![Size and layers](https://images.microbadger.com/badges/image/nareal/r_docker_base.svg)](https://registry.hub.docker.com/u/nareal/r_docker_base) [![Version](https://images.microbadger.com/badges/version/nareal/r_docker_base.svg)](https://registry.hub.docker.com/u/nareal/r_docker_base)


This image extends [rocker/r-base](https://hub.docker.com/r/rocker/r-base/) docker image, for more information check the [rocker-org/r-base github repository](https://github.com/rocker-org/r-base). It adds ssh and exposes port 22 of the container to other containers in the docker network. It also changes the default command to `/bin/bash` instead of `R`.

To use this image run:

```
docker run -ti nareal/r_docker_base R
```

For more details refer to the instructions [for using the RStudio rocker image, from rocker-org](https://github.com/rocker-org/rocker/wiki/Using-the-RStudio-image).

The image is rebuild automatically on [docker hub](https://hub.docker.com/r/nareal/r_docker_base/) whenever this dockerfile changes or when [rocker/r-base/](https://hub.docker.com/r/rocker/r-base/) image change.

# License

The Dockerfile in this repository is licensed under the GPL 2 or later.