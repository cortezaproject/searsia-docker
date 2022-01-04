FROM nginx:stable-alpine

ARG SEARSIA_VERSION="v1.0.2"
ARG SEARSIA_CLIENT="https://github.com/searsia/searsiaclient/releases/download/${SEARSIA_VERSION}/searsiaclient.zip"
ADD entrypoint-webapp-config.sh /docker-entrypoint.d/webapp-config.sh

ADD "${SEARSIA_CLIENT}" "/tmp"
RUN unzip /tmp/searsiaclient.zip -d /tmp \
    && rm /tmp/searsiaclient.zip \
    && mv -f /tmp/searsiaclient/* /usr/share/nginx/html \
    && chmod +x /docker-entrypoint.d/webapp-config.sh

ENV API_TEMPLATE="http://server/searsia/index?q={searchTerms?}\&page={startPage?}"

HEALTHCHECK --interval=30s --start-period=2s --timeout=1s CMD wget --quiet --tries=1 --spider "http://127.0.0.1:80/index.html" || exit 1


