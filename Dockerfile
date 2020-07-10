FROM python:3.7-buster

# Inspired from https://github.com/jozo/docker-pyqt5

# Add user
RUN adduser --quiet --disabled-password qtuser

# Install Python 3, PyQt5
RUN apt-get update \
    && apt-get install -y \
      python3-pyqt5

COPY . nanovna-saver/

RUN \
    pip3 install ./nanovna-saver

