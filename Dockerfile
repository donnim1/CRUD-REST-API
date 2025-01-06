# use official golang image

FROM golang:1.16.3-alpine3.13

# set working directory

WORKDIR /app

#copy the source code

COPY . .

#download all dependencies

RUN go get -d -v ./...

#build the source code

RUN go build -o api .

#expose port 8000

EXPOSE 8000

#run the api

CMD ["./api"]



