FROM 021894393015.dkr.ecr.us-west-2.amazonaws.com/grady:latest as tmp1
RUN echo fist

FROM gradysaccullo/panic-go-container-alpine:latest as tmp2
WORKDIR /tmp
COPY --from=tmp1 / .
RUN echo second

FROM gradysaccullo2/testing:latest as tmp2
WORKDIR /tmp2
COPY --from=tmp1 / .
RUN echo third
