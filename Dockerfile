FROM gdepuille/docker-common
LABEL maintainer "Gregory DEPUILLE <gregory.depuille@gmail.com>"

# Define application directory as workdir
WORKDIR /app

# Install NodeJS
RUN apk --update add nodejs \
      && rm -rf /var/cache/apk/* \
      && npm install -g http-server \
      && npm cache clean \
      && rm -rf ~/.npm \
      && rm -rf /tmp/npm*

# Define default command
CMD ["http-server", "-h"]
