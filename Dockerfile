FROM kalilinux/kali-rolling
RUN apt update && apt install -y zsh
WORKDIR /root
CMD ["/usr/bin/zsh"]
