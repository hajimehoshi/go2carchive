docker run --rm --volume $(pwd):/work $(docker build -q .) /bin/bash -c \
  "env GOOS=linux GOARCH=amd64 \
   CGO_ENABLED=1 CC=aarch64-linux-gnu-gcc-10 \
   CGO_CFLAGS=-I/work/include \
   go build -buildmode=c-archive -o foo.a foo.go"
