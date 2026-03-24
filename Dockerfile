FROM ubuntu:22.04

RUN apt update && apt install -y gnucobol

WORKDIR /app

COPY hello.cbl .

RUN cobc -x -free hello.cbl -o hello

CMD ["./hello"]
