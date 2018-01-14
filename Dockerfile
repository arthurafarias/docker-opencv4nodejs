FROM opencv-gtk:3.4.0

RUN apt-get -y update
RUN apt-get -y upgrade
RUN apt-get -y dist-upgrade
RUN apt-get -y autoremove
RUN apt-get -y autoclean

RUN apt-get -y install nodejs npm
RUN npm install -g n
RUN n latest
RUN apt-get -y remove nodejs npm
RUN apt-get -y autoremove
RUN apt-get -y autoclean

RUN JOBS=$(nproc) npm install -g --unsafe-perm opencv4nodejs
