FROM pytorch/pytorch:1.5.1-cuda10.1-cudnn7-devel

# Change Ubuntu repository address to DaumKaKao
RUN sed -i 's/kr.archive.ubuntu.com/mirror.kakao.com/g' /etc/apt/sources.list

# Install essential packages
RUN apt update && \
    apt install -y \
        git \
        vim \
        tree \
        wget

# Configure default Pypi repository address and default progress bar style
RUN mkdir ~/.pip && \
    echo -e '[global]\n'\
'index-url=http://mirror.kakao.com/pypi/simple/\n'\
'trusted-host=mirror.kakao.com\n'\
'progress-bar=emoji # [off|on|ascii|pretty|emoji]'\
        > ~/.pip/pip.conf

LABEL LIM HYUN SEOK <contact@loopback.kr>
