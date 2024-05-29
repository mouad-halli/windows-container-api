FROM mcr.microsoft.com/windows/servercore:ltsc2019

ENV NODE_VERSION 14.17.0

RUN mkdir C:\nodejs \
    && curl -SL https://nodejs.org/dist/v%NODE_VERSION%/node-v%NODE_VERSION%-win-x64.zip -o nodejs.zip \
    && tar -xf nodejs.zip -C C:\nodejs --strip-components=1 \
    && del nodejs.zip \
    && setx /M PATH "%PATH%;C:\nodejs"

WORKDIR /usr/api

COPY api/ .

RUN npm install

EXPOSE 3000

CMD [ "node", "api.js" ]
