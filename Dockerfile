# syntax=docker/dockerfile:1
FROM maven:3.8.1-openjdk-17
ENV MY_HOME=/data/application/idp/autotest
RUN mkdir -p $MY_HOME
# 将当前代码复制到镜像中
COPY . $MY_HOME
# COPY ./src/ $MY_HOME
# COPY ./pom.xml $MY_HOME
# COPY ./README.md $MY_HOME
WORKDIR $MY_HOME