FROM kalilinux/kali-rolling

LABEL maintener="pikpikcu"

# Install
RUN apt-get install git -y \
    && git clone https://github.com/pikpikcu/xrcross.git \
    && cd xrcross \
    && ./install.sh \
    && ./XRCross -h 


