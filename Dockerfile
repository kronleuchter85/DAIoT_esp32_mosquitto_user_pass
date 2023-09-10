FROM espressif/idf:v4.4

#
# instalacion de ESP-IDF-LIB
#
WORKDIR /opt/esp
RUN git clone https://github.com/UncleRus/esp-idf-lib.git
ENV IDF_LIB_PATH=/opt/esp/esp-idf-lib

VOLUME /project
WORKDIR /project

RUN apt-get update && apt-get install ruby-full -y
RUN gem install ceedling


