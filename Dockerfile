# Start your image with a node base image
FROM golang

# The /app directory should act as the main application directory
WORKDIR /ascii-art-web-dockerize

# Copy the app package and package-lock.json file
COPY . .


# Install node packages, install serve, build the app, and remove dependencies at the end
RUN go build -o main .

EXPOSE 8000

# Start the app using serve command
CMD ["./main"]