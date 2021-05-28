FROM gradysaccullo2/testing:latest
RUN echo fist
FROM gradysaccullo/panic-go-container-alpine:latest as tmp2
RUN echo second
