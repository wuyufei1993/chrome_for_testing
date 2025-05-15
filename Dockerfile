FROM ubuntu:24.10
WORKDIR /opt
RUN apt update && apt -y install python3 python3-selenium
ADD google-chrome-stable_current_amd64.deb ./
RUN dpkg -i google-chrome-stable_current_amd64.deb || apt-get install -f -y
RUN rm -rf google-chrome-stable_current_amd64.deb
ADD chromedriver-linux64/ /opt/chromedriver-linux64/