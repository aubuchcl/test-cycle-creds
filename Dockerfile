FROM gradysaccullo2/testing:latest
RUN echo fist
FROM gradysaccullo/panic-go-container-alpine:latest
RUN echo second
