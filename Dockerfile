FROM python:3.6

# Set up envirnment.
RUN apt-get update && apt-get install -y \
    graphviz \
    git \
    wget \
    iproute2

# Install python modules.
COPY ./requirements.txt /requirements.txt
RUN pip install -r requirements.txt

# assume ubuntu user id is 1000.
#RUN useradd docker -u 1000 -s /bin/bash -m
#USER docker

# Set working directory.
WORKDIR /work

ENTRYPOINT ["/bin/bash"]
