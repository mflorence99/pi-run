FROM resin/rpi-raspbian

# install curl
RUN apt-get update && apt-get install curl

# install node and npm
RUN apt-get update \
 && apt-get upgrade \
 && curl -sL https://deb.nodesource.com/setup_7.x | sudo -E bash - \
 && apt-get install nodejs

# install typescript
RUN npm install -g typescript

# install ts-node
RUN npm install -g ts-node

# install Wiring Pi
RUN apt-get update && apt-get install wiringpi
