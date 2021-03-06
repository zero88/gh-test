FROM --platform=$BUILDPLATFORM golang:alpine AS build
ARG TARGETPLATFORM
ARG BUILDPLATFORM

RUN echo "I am running on $BUILDPLATFORM, building for $TARGETPLATFORM. Cache is success?" > /log
RUN echo "test"
RUN apk add curl

FROM alpine
COPY --from=build /log /log
