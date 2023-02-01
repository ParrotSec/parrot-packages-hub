FROM golang:latest

WORKDIR /app

RUN git clone https://github.com/danterolle/packages-filter.git
RUN git clone https://github.com/danterolle/packages-api.git

WORKDIR /app/packages-filter
RUN go run ./main.go

WORKDIR /app
RUN if [ -d "packages-filter/json" ]; then \
      mv "packages-filter/json" "packages-api/"; \
    fi

WORKDIR /app/packages-api

EXPOSE 8080

RUN go build -o packages-api
CMD ["./packages-api"]
