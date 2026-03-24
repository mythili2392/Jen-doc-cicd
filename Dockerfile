FROM ubuntu:22.04

RUN apt update && apt install -y gnucobol netcat

WORKDIR /app

COPY hello.cbl .

RUN cobc -x -free hello.cbl -o hello

CMD ["sh", "-c", "while true; do echo -e 'HTTP/1.1 200 OK\r\nContent-Type: text/plain\r\n\r\nHello from COBOL CI/CD Pipeline..!' | nc -l -p 8081 -s 0.0.0.0 -q 1; done"]

