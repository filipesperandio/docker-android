FROM codenvy/jdk7_vnc

RUN sudo apt-get update && sudo apt-get install -y git libswt-gtk-3-java lib32z1 lib32ncurses5 lib32stdc++6 

# Main Android SDK
RUN wget -qO- "http://dl.google.com/android/android-sdk_r23.0.2-linux.tgz" | tar -zxv -C /home/user/

# Other tools and resources of Android SDK
ENV ANDROID_HOME /home/user/android-sdk-linux
RUN echo "export ANDROID_HOME=$ANDROID_HOME" >> /home/user/.bashrc
ENV PATH ${PATH}:${ANDROID_HOME}/tools:${ANDROID_HOME}/platform-tools
RUN echo "export PATH=$PATH" >> /home/user/.bashrc

RUN echo y | android update sdk --all --no-ui --force 

# Fix android's zipalign path screw up
RUN sudo ln -s /home/user/android-sdk-linux/build-tools/20.0.0/zipalign /home/user/android-sdk-linux/tools/zipalign



