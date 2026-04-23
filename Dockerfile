FROM ubuntu:22.04

RUN apt update && apt install -y curl wget sudo nano

CMD ["sleep", "infinity"]
