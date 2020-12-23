FROM --platform=$BUILDPLATFORM golang:alpine AS build
ARG TARGETPLATFORM
ARG BUILDPLATFORM

RUN apk update
RUN echo "I am running on $BUILDPLATFORM, building for $TARGETPLATFORM. Cache is success?" > /log
RUN apk add curl
FROM alpine
COPY --from=build /log /log