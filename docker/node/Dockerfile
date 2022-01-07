FROM node:8

RUN apt-get update
RUN apt-get install -y apt-utils
RUN apt-get install -y \
        curl \
        apt-transport-https

RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
    echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list

RUN apt-get update && apt-get install yarn

WORKDIR /var/www/${PROJECT_FOLDER}
