FROM scratch

WORKDIR $GOPATH/gin-simple
COPY . $GOPATH/gin-simple

EXPOSE 8000
CMD ["./gin-simple"]