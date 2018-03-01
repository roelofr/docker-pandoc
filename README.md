# Docker Latex Image

![Docker Automated build status](https://img.shields.io/docker/build/roelofr/latex.svg)
![Docker Automated build](https://img.shields.io/docker/automated/roelofr/latex.svg)

## Packages

a docker image based on `roelofr/texlive:full` containing:

* `texlive`, from CTAN
* `biber`
* `pandoc`
* `pandoc-citeproc`

... and extra tools:

* `wget`
* `wput`
* `curl`
* `zip`
* `tar`
* `rsync`
* `make`

Inherited from [roelofr/texlive](https://hub.docker.com/r/roelofr/texlive/).

Monthly updated, by Docker auto-builds.

## Install

[Docker Hub](https://hub.docker.com/r/roelofr/latex/)

```sh
docker pull roelofr/latex
```
