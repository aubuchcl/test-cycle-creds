FROM gradysaccullo/panic-go-container-alpine:latest as tmp1
RUN echo fist

FROM 021894393015.dkr.ecr.us-west-2.amazonaws.com/grady:latest
WORKDIR /tmp
COPY --from=tmp1 / .
RUN echo second
