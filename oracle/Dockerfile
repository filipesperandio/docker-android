FROM ubuntu:latest

WORKDIR /opt/workspace

RUN apt-get update && apt-get install -y lib32gcc1 lib32ncurses5 lib32stdc++6 lib32z1 libc6-i386 
RUN apt-get update && apt-get install -y curl

RUN apt-get update && apt-get install -y software-properties-common
RUN add-apt-repository -y ppa:webupd8team/java
 
RUN echo "oracle-java7-installer shared/accepted-oracle-license-v1-1 select true" | debconf-set-selections
RUN echo "oracle-java8-installer shared/accepted-oracle-license-v1-1 select true" | debconf-set-selections
RUN echo y | apt-get update && apt-get install -y oracle-java7-installer
RUN echo y | apt-get update && apt-get install -y oracle-java8-installer

ENV JAVA_HOME=/usr/lib/jvm/java-8-oracle/
ENV JAVA8_HOME=/usr/lib/jvm/java-8-oracle/
ENV JAVA7_HOME=/usr/lib/jvm/java-7-oracle/

RUN useradd --create-home --shell /bin/bash developer

ENV HOME=/home/developer
ENV ANDROID_HOME=/home/developer/android-sdk-linux
ENV PATH="${PATH}:${ANDROID_HOME}/tools:${ANDROID_HOME}/platform-tools"

RUN curl -L http://dl.google.com/android/android-sdk_r24.4.1-linux.tgz | tar -zx -C /home/developer

RUN echo y | android update sdk --all --no-ui --force --filter android-23 \
    && echo y | android update sdk --all --no-ui --force --filter android-24 \
    && echo y | android update sdk --all --no-ui --force --filter tools \
    && echo y | android update sdk --all --no-ui --force --filter platform-tools \
    && echo y | android update sdk --all --no-ui --force --filter build-tools-23.0.2 \
    && echo y | android update sdk --all --no-ui --force --filter build-tools-24.0.0 \
    && echo y | android update sdk --all --no-ui --force --filter build-tools-25.0.0 \
    && echo y | android update sdk --all --no-ui --force --filter extra-android-m2repository \
    && echo y | android update sdk --all --no-ui --force --filter extra-google-m2repository \
    && echo y | android update sdk --all --no-ui --force --filter extra-android-m2repository \
    && echo y | android update sdk --all --no-ui --force --filter extra-google-m2repository \
    && echo y | android update sdk --all --no-ui --force --filter extra-google-google_play_services \
    && echo y | android update sdk --all --no-ui --force --filter extra-google-play_licensing \
    && echo y | android update sdk --all --no-ui --force --filter extra-google-gcm

USER developer
