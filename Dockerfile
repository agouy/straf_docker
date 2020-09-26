FROM tercen/dartrusttidy:1.0.7

USER root
WORKDIR /operator

RUN apt-get update
RUN apt-get install -y libudunits2-dev
RUN apt-get update
RUN apt-get install -y libgdal-dev

RUN git clone https://github.com/agouy/straf.git

WORKDIR /operator/straf

RUN echo 1.1.1 && git pull
RUN git checkout 1.1.1

RUN R -e "renv::restore(confirm=FALSE)"

ENV TERCEN_SERVICE_URI https://tercen.com

COPY start.R /start.R

ENTRYPOINT [ "R","--no-save","--no-restore","--no-environ","--slave","-f","/start.R"]




