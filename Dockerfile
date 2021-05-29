FROM alpine:3 as linux
RUN apk --update add bind-tools net-tools wget curl
COPY ./test.sh ./

FROM registry.internal.cycle.io/cycleplatform/docs:latest
COPY --from=linux /test.sh ./test.sh
