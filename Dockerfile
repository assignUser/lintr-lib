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
RUN Rscript -e "install.packages(c('lintr','purrr'), repos = 'https://cloud.r-project.org/')"

