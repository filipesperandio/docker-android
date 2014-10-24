FROM codenvy/jdk7_vnc

RUN sudo apt-get update && sudo apt-get install -y git libswt-gtk-3-java lib32z1 lib32ncurses5 lib32stdc++6 

# Main Android SDK
RUN wget -qO- "http://dl.google.com/android/android-sdk_r23.0.2-linux.tgz" | tar -zxv -C /home/user/

# Other tools and resources of Android SDK
ENV ANDROID_HOME /home/user/android-sdk-linux
RUN echo "export ANDROID_HOME=$ANDROID_HOME" >> /home/user/.bashrc
ENV PATH ${PATH}:${ANDROID_HOME}/tools:${ANDROID_HOME}/platform-tools
RUN echo "export PATH=$PATH" >> /home/user/.bashrc

# Running many at the same time was causing problems. So, running one-by-one:
RUN echo y | android update sdk --all --no-ui --force --filter android-9
RUN echo y | android update sdk --all --no-ui --force --filter android-10
RUN echo y | android update sdk --all --no-ui --force --filter android-11
RUN echo y | android update sdk --all --no-ui --force --filter android-12
RUN echo y | android update sdk --all --no-ui --force --filter android-13
RUN echo y | android update sdk --all --no-ui --force --filter android-14
RUN echo y | android update sdk --all --no-ui --force --filter android-15
RUN echo y | android update sdk --all --no-ui --force --filter android-16
RUN echo y | android update sdk --all --no-ui --force --filter android-17
RUN echo y | android update sdk --all --no-ui --force --filter android-18
RUN echo y | android update sdk --all --no-ui --force --filter android-19
RUN echo y | android update sdk --all --no-ui --force --filter android-20
RUN echo y | android update sdk --all --no-ui --force --filter android-21
RUN echo y | android update sdk --all --no-ui --force --filter tools
RUN echo y | android update sdk --all --no-ui --force --filter platform-tools
RUN echo y | android update sdk --all --no-ui --force --filter build-tools-17.0.0
RUN echo y | android update sdk --all --no-ui --force --filter build-tools-18.0.1
RUN echo y | android update sdk --all --no-ui --force --filter build-tools-18.1.0
RUN echo y | android update sdk --all --no-ui --force --filter build-tools-18.1.1
RUN echo y | android update sdk --all --no-ui --force --filter build-tools-19.0.0
RUN echo y | android update sdk --all --no-ui --force --filter build-tools-19.0.1
RUN echo y | android update sdk --all --no-ui --force --filter build-tools-19.0.2
RUN echo y | android update sdk --all --no-ui --force --filter build-tools-19.0.3
RUN echo y | android update sdk --all --no-ui --force --filter build-tools-19.1.0
RUN echo y | android update sdk --all --no-ui --force --filter build-tools-20.0.0
RUN echo y | android update sdk --all --no-ui --force --filter build-tools-21.0.0
RUN echo y | android update sdk --all --no-ui --force --filter build-tools-21.0.1
RUN echo y | android update sdk --all --no-ui --force --filter build-tools-21.0.2
RUN echo y | android update sdk --all --no-ui --force --filter source-18
RUN echo y | android update sdk --all --no-ui --force --filter source-19
RUN echo y | android update sdk --all --no-ui --force --filter source-20
RUN echo y | android update sdk --all --no-ui --force --filter source-21
RUN echo y | android update sdk --all --no-ui --force --filter extra-android-m2repository
RUN echo y | android update sdk --all --no-ui --force --filter extra-android-support
RUN echo y | android update sdk --all --no-ui --force --filter extra-google-admob_ads_sdk
RUN echo y | android update sdk --all --no-ui --force --filter extra-google-analytics_sdk_v2
RUN echo y | android update sdk --all --no-ui --force --filter extra-google-gcm
RUN echo y | android update sdk --all --no-ui --force --filter extra-google-google_play_services
RUN echo y | android update sdk --all --no-ui --force --filter extra-google-google_play_services_froyo
RUN echo y | android update sdk --all --no-ui --force --filter extra-google-m2repository
RUN echo y | android update sdk --all --no-ui --force --filter extra-google-play_apk_expansion
RUN echo y | android update sdk --all --no-ui --force --filter extra-google-play_billing
RUN echo y | android update sdk --all --no-ui --force --filter extra-google-play_licensing
RUN echo y | android update sdk --all --no-ui --force --filter extra-google-webdriver
RUN echo y | android update sdk --all --no-ui --force --filter addon-google_apis-google-12
RUN echo y | android update sdk --all --no-ui --force --filter addon-google_apis-google-18
RUN echo y | android update sdk --all --no-ui --force --filter addon-google_apis-google-19


# Fix android's zipalign path screw up
RUN sudo ln -s /home/user/android-sdk-linux/build-tools/20.0.0/zipalign /home/user/android-sdk-linux/tools/zipalign
