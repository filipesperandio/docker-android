FROM ubuntu:latest

WORKDIR /code

RUN \
  sed -i 's/# \(.*multiverse$\)/\1/g' /etc/apt/sources.list && \
  apt-get update && \
  apt-get -y upgrade && \
  apt-get install -y build-essential && \
  apt-get install -y software-properties-common && \
  apt-get update && \
  apt-get install -y lib32gcc1 lib32ncurses5 lib32stdc++6 lib32z1 libc6-i386 curl git && \
  add-apt-repository ppa:openjdk-r/ppa && \
  apt-get update && \
  apt-get install -y default-jdk openjdk-7-jdk openjdk-8-jdk  && \
  apt-get autoremove --yes

ENV HOME=/home/developer
ENV ANDROID_HOME=/home/developer/android-sdk-linux
ENV PATH="${PATH}:${ANDROID_HOME}/tools:${ANDROID_HOME}/platform-tools"
ENV GRADLE_USER_HOME="${HOME}/.gradle"
ENV GRADLE_OPTS='-Dorg.gradle.jvmargs="-Xmx3200m"'
ENV JAVA7_HOME=/usr/lib/jvm/java-7-openjdk-amd64
ENV JAVA8_HOME=/usr/lib/jvm/java-8-openjdk-amd64
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64

RUN useradd --create-home --shell /bin/bash developer
USER developer

RUN curl -L http://dl.google.com/android/android-sdk_r24.4.1-linux.tgz | tar -zx -C $HOME

RUN \ 
  echo y | android update sdk --all --no-ui --force --filter android-23 \
    && echo y | android update sdk --all --no-ui --force --filter android-25 \
    && echo y | android update sdk --all --no-ui --force --filter tools \
    && echo y | android update sdk --all --no-ui --force --filter platform-tools \
    && echo y | android update sdk --all --no-ui --force --filter build-tools-23.0.2 \
    && echo y | android update sdk --all --no-ui --force --filter extra-android-m2repository \
    && echo y | android update sdk --all --no-ui --force --filter extra-google-m2repository \
    && echo y | android update sdk --all --no-ui --force --filter extra-google-google_play_services \
    && echo y | android update sdk --all --no-ui --force --filter extra-google-play_licensing \
    && echo y | android update sdk --all --no-ui --force --filter extra-google-gcm
