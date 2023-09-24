FROM dapize/hlds:latest

LABEL creator "Daniel P Z <danielpz@outlook.com>"
# Required stuffs
RUN apt -y install curl wget unzip

# Installing the ReHLDS
RUN curl -s https://api.github.com/repos/dreamstalker/rehlds/releases/latest | grep "browser_download_url.*zip" | cut -d : -f 2,3 | tr -d \" | wget -qi - -P /tmp\
  && unzip /tmp/rehlds-bin*.zip -d /tmp\
  && cp -r /tmp/bin/linux32/* /opt/hlds/

