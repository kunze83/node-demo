from node:4.4.7-wheezy

add ./ /opt/src

run cd /opt/src; npm install

expose 3000

workdir /opt/src

cmd node ./app.js
