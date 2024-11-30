FROM golang:1.21-alpine

WORKDIR /app

COPY go.* ./
RUN go mod download

COPY . .

EXPOSE 8080

CMD ["go", "run", "cmd/web/main.go"]