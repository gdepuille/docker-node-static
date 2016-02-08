FROM gdepuille/common:0.1.0
MAINTAINER Gregory DEPUILLE <gregory.depuille@gmail.com>

# Define application directory as workdir
WORKDIR /app

# Install NodeJS
RUN apk --update add nodejs \
      && rm -rf /var/cache/apk/* \
      && npm install -g http-server 

# Define default command
CMD ["http-server", "-h"]
