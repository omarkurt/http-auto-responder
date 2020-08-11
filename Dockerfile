
FROM golang
ADD . /go/src/github.com/omarkurt/http-auto-responder
WORKDIR "/go/src/github.com/omarkurt/http-auto-responder"
RUN go build . 
RUN mkdir json
ADD ./data /go/src/github.com/omarkurt/http-auto-responder/json
CMD ["./http-auto-responder"]
EXPOSE 8021
