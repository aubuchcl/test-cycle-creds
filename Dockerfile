FROM gradysaccullo2/testing:latest as tmp
RUN echo fist
FROM gradysaccullo/panic-go-container-alpine:latest as tmp2
RUN echo second
