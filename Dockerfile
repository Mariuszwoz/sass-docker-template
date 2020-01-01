FROM ubuntu:latest      

# update apt-get and apt
RUN apt-get update -y
RUN apt update -y

# midnight commander
# check if needed RUN sudo add-apt-repository universe
RUN apt install mc -y
RUN echo 'alias mc=". /usr/lib/mc/mc-wrapper.sh"' >> ~/.bashrc

# nano
RUN apt-get install nano -y

#wget 
RUN apt-get install -y wget 

RUN  mkdir /home/Downloads

# SASS UBUNTU
RUN wget -O /home/Downloads/sass.tar.gz "https://github.com/sass/dart-sass/releases/download/1.24.0/dart-sass-1.24.0-linux-x64.tar.gz"
RUN tar -xvzf /home/Downloads/sass.tar.gz -C /opt
RUN echo 'export PATH="/opt/dart-sass:$PATH"' >> ~/.bashrc