FROM armhf/ubuntu
RUN apt-get update && \
    apt-get -qy install wget unzip
                

WORKDIR /root/
RUN wget \
  https://nodejs.org/dist/v4.2.4/node-v4.2.4-linux-armv7l.tar.gz
RUN tar -xvf node-v4.2.4-linux-armv7l.tar.gz -C /usr/local \
  --strip-components=1
RUN npm install -g express
ENV NODE_PATH=/usr/local/lib/node_modules/
 ADD add2.js .
 CMD [ "node", "add2.js"]