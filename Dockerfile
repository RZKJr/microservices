FROM library/ubuntu
RUN apt-get update && \
    apt-get -qy install wget unzip
                

WORKDIR /root/
RUN wget \
  https://nodejs.org/dist/v20.19.2/node-v20.19.2-linux-x64.tar.xz

RUN tar -xvf node-v20.19.2-linux-x64.tar.xz -C /usr/local \
  --strip-components=1
RUN npm install -g express
ENV NODE_PATH=/usr/local/lib/node_modules/
 ADD add2.js .
 CMD [ "node", "add2.js"]