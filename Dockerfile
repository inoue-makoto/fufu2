FROM node:16-alpine3.12
WORKDIR /app
RUN apk update && \
    apk add git yarn build-base autoconf automake libtool pkgconfig nasm && \
    yarn global add gatsby-cli && \
    yarn add react-bootstrap bootstrap && \
    gatsby options set package-manager yarn
EXPOSE 8000 9000