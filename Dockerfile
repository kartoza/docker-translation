FROM python:2.7.9
MAINTAINER Ismail Sunni <imajimatika@gmail.com>

RUN apt-get update
RUN apt-get install -y make qt4-linguist-tools pyqt4-dev-tools qt4-qmake

CMD ["/bin/bash"]

