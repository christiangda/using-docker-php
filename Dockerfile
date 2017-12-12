ARG PHP_IMAGE_VERSION=7.1.12-r0-fpm-alpine-3.7
FROM christiangda/php:${PHP_IMAGE_VERSION}

ARG APP_NAME
ARG APP_VERSION

# Environment variables
ENV APP_NAME=${APP_NAME:-"My PHP application"} \
    APP_VERSION=${APP_VERSION:-1.0.0} 

# Container's Labels
LABEL maintainer="My First Name and Last Name <myemail@company.com>" \
      org.opencontainers.image.authors="My First Name and Last Name <myemail@company.com>" \
      org.opencontainers.image.url="My Image Gitlab URL" \
      org.opencontainers.image.documentation="My Image Gitlab URL" \
      org.opencontainers.image.source="My Image Gitlab URL" \
      org.opencontainers.image.version="${APP_VERSION}" \
      org.opencontainers.image.vendor="My Company Name" \
      org.opencontainers.image.licenses="Apache License Version 2.0, The PHP License, version 3.01" \
      org.opencontainers.image.title="${APP_NAME} - ${APP_VERSION}" \
      org.opencontainers.image.description="${APP_NAME} - ${APP_VERSION}"

# Copy provisioning files
RUN echo ${APACHE_USER}
COPY src/ ${APACHE_APP_ROOT}/
RUN chown -R ${APACHE_USER}.${APACHE_GROUP} ${APACHE_APP_ROOT}

VOLUME ${APACHE_APP_ROOT}
