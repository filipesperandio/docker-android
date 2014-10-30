FROM filipesperandio/jdk7

USER user

RUN sudo apt-get update && sudo apt-get install -y git libswt-gtk-3-java lib32z1 lib32ncurses5 lib32stdc++6 

# Main Android SDK
RUN wget -qO- "http://dl.google.com/android/android-sdk_r23.0.2-linux.tgz" | tar -zxv -C /home/user/

# Other tools and resources of Android SDK
ENV ANDROID_HOME /home/user/android-sdk-linux
RUN echo "export ANDROID_HOME=$ANDROID_HOME" >> /home/user/.bashrc
ENV PATH ${PATH}:${ANDROID_HOME}/tools:${ANDROID_HOME}/platform-tools
RUN echo "export PATH=$PATH" >> /home/user/.bashrc

# Running many at the same time was causing problems. So, running one-by-one:
RUN echo y | android update sdk --all --no-ui --force --filter android-18 && \
 echo y | android update sdk --all --no-ui --force --filter android-19 && \
 echo y | android update sdk --all --no-ui --force --filter android-20 && \
 echo y | android update sdk --all --no-ui --force --filter android-21 && \
 echo y | android update sdk --all --no-ui --force --filter tools && \
 echo y | android update sdk --all --no-ui --force --filter platform-tools && \
 echo y | android update sdk --all --no-ui --force --filter build-tools-18.1.1 && \
 echo y | android update sdk --all --no-ui --force --filter build-tools-19.0.0 && \
 echo y | android update sdk --all --no-ui --force --filter build-tools-19.1.0 && \
 echo y | android update sdk --all --no-ui --force --filter build-tools-20.0.0 && \
 echo y | android update sdk --all --no-ui --force --filter build-tools-21.0.2 && \
 echo y | android update sdk --all --no-ui --force --filter extra-android-m2repository && \
 echo y | android update sdk --all --no-ui --force --filter extra-android-support && \
 echo y | android update sdk --all --no-ui --force --filter extra-google-admob_ads_sdk && \
 echo y | android update sdk --all --no-ui --force --filter extra-google-analytics_sdk_v2 && \
 echo y | android update sdk --all --no-ui --force --filter extra-google-gcm && \
 echo y | android update sdk --all --no-ui --force --filter extra-google-google_play_services && \
 echo y | android update sdk --all --no-ui --force --filter extra-google-google_play_services_froyo && \
 echo y | android update sdk --all --no-ui --force --filter extra-google-m2repository && \
 echo y | android update sdk --all --no-ui --force --filter extra-google-play_apk_expansion && \
 echo y | android update sdk --all --no-ui --force --filter extra-google-play_billing && \
 echo y | android update sdk --all --no-ui --force --filter extra-google-play_licensing && \
 echo y | android update sdk --all --no-ui --force --filter extra-google-webdriver && \
 echo y | android update sdk --all --no-ui --force --filter addon-google_apis-google-12 && \
 echo y | android update sdk --all --no-ui --force --filter addon-google_apis-google-18 && \
 echo y | android update sdk --all --no-ui --force --filter addon-google_apis-google-19 


# Fix android's zipalign path screw up
RUN sudo ln -s /home/user/android-sdk-linux/build-tools/20.0.0/zipalign /home/user/android-sdk-linux/tools/zipalign
