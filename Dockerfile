FROM debian:sid

RUN apt update
RUN apt upgrade --yes
RUN apt install --yes gcc git vim make build-essential python3
RUN apt install --yes python3-pip cmake libicu-dev
RUN pip3 install pyelftools requests ninja setuptools capstone --break-system-packages
RUN apt install --yes libcapstone-dev libcapstone4 pkg-config python3-capstone
RUN git clone https://github.com/worawit/blutter
# RUN cd /blutter && python3 blutter.py /tmp/w0rdle/lib/arm64-v8a/ out
COPY arm64-v8a arm64-v8a
RUN cd /blutter && python3 blutter.py /arm64-v8a/ out

ENTRYPOINT /bin/bash
