FROM openjdk:8-jre-alpine3.9

ARG SEARSIA_VERSION="v1.0.2"
ARG SEARSIA_SERVER="https://github.com/searsia/searsiaserver/releases/download/${SEARSIA_VERSION}/searsiaserver.jar"
ARG SEARSIA_STORE_PATH="/searsia/data"

RUN mkdir -p "${SEARSIA_STORE_PATH}"
ADD "${SEARSIA_SERVER}" "/"
ADD entrypoint.sh /

VOLUME ${SEARSIA_STORE_PATH}

# Copy args to ENV for ENTRYPOINT
ENV SEARSIA_STORE_PATH="${SEARSIA_STORE_PATH}"

ENTRYPOINT [ "sh", "/entrypoint.sh" ]
