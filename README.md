# nginx-environment-demo

This project was bootstrapped with [Create React App]

## Installation

1; Install dependencies using npm

```shell
npm install
```

2; Run project for development

```shell
npm run start
```

3; Build project for production

```shell
npm run build
```

## Build Docker Image

1; Build Docker Image with Tag

```shell
docker build -t rizkypanz/nginx-environment-demo:v1.0.0 .
```

## Run Docker Container

1; Run Docker with Environment

```shell
docker run -itd --name nginx-environment-demo -e REACT_APP_NODE_ENV="staging" -e REACT_APP_VERSION="v1.0.0" -p 3000:3000 rizkypanz/nginx-environment-demo:v1.0.0
```
