FROM resin/rpi-raspbian

MAINTAINER jesserockz@gmail.com

RUN echo 'deb http://ppa.launchpad.net/hlandau/rhea/ubuntu xenial main' > /etc/apt/sources.list.d/rhea.list && \
  apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 9862409EF124EC763B84972FF5AC9651EDB58DFA

RUN apt-get update
RUN apt-get install acmetool

VOLUME /var/lib/acme

ENTRYPOINT ["acmetool"]
CMD ["help"]