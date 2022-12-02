FROM node:lts-slim

RUN apt-get update && apt-get -y upgrade && apt install -y make git
RUN which make || echo "make not found"

USER node

COPY --chown=node:node ./ /app
WORKDIR /app

ENTRYPOINT [ "/bin/sh", "-c" ]
CMD [ "/usr/bin/make" ]
