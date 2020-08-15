##################
# Get base image #
##################
FROM python:alpine
LABEL maintainer="github@krushak.me"

###############################
# Install system dependencies #
###############################
RUN apk add --update --no-cache \
    bash \
    curl-dev \
    gcc \
    g++ \
    make \
    libc-dev libxml2-dev \
    linux-headers\
    zip \
    R \
    R-doc \
    R-dev 

################################
# Install lintr & dependencies #
################################
RUN R -e "install.packages(c('lintr'), repos = 'https://cloud.r-project.org/')"
