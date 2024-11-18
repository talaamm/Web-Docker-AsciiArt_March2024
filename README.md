# ASCII Art Web with Docker

This project consists of creating a web application that allows users to generate ASCII art banners using a web interface. It is built using Go for the backend and HTML for the frontend. The web application lets users select from different banner styles and input text to generate ASCII art. Additionally, the project is containerized using Docker for easier deployment and scaling.

## Overview

### ASCII Art Web

The web app allows users to interact with the ASCII art generator by providing input text and selecting one of the following banner styles:

- Shadow
- Standard
- Thinkertoy

The app features two main HTTP endpoints:

1. **GET /**: Displays the main page with the form for user input.
2. **POST /ascii-art**: Sends the user’s text and selected banner to the server, processes the request, and displays the resulting ASCII art.

The server is implemented in Go, with HTML templates used for rendering the main page and displaying the results.

### Dockerization

The ASCII art web application is then containerized using Docker. This allows you to easily build and run the app in isolated environments. A `Dockerfile` is included to build a Docker image, and a Docker container can be used to run the application without worrying about dependencies.

## Features

1. **Web Interface**:
   - Input text for ASCII art generation.
   - Choose between multiple banner styles.
   - Submit the form and display the resulting ASCII art on the page.

2. **Go Backend**:
   - Handles HTTP requests and generates ASCII art.
   - Supports appropriate HTTP status codes (e.g., OK, Not Found, Bad Request).

3. **HTML Templates**:
   - The frontend is rendered dynamically using Go templates.

4. **Dockerized Version**:
   - The application is fully containerized using Docker.
   - Includes a `Dockerfile` to build the Docker image and create a container.

## Technologies Used
- **Backend**: Go
- **Frontend**: HTML
- **Containerization**: Docker

## Installation

### Running the Web Application (Without Docker)

1. Clone the repository:
   ```bash
   git clone https://adam-jerusalem.nd.edu/git/taamm/ascii-art-web
   cd ascii-art-web
   ```

2. Run the Go server:
   ```bash
   go run main.go
   ```

3. Open the web browser and go to `http://localhost:8080` to use the web interface.

### Running the Dockerized Version

1. Clone the repository for the Dockerized version:
   ```bash
   git clone https://adam-jerusalem.nd.edu/git/taamm/ascii-art-web-dockerize
   cd ascii-art-web-dockerize
   ```

2. Build the Docker image:
   ```bash
   docker build -t ascii-art-web .
   ```

3. Run the Docker container:
   ```bash
   docker run -p 8080:8080 ascii-art-web
   ```

4. Access the web application in your browser at `http://localhost:8080`.

## HTTP Endpoints

### GET / 
- **Description**: Displays the main page with the form for user input.
- **Response**: HTML page containing input fields for the text and banner selection.

### POST /ascii-art
- **Description**: Processes the input text and selected banner, generating ASCII art and displaying it.
- **Request Body**: Form data with the text and banner style.
- **Response**: HTML page with the generated ASCII art displayed.

### HTTP Status Codes
- **200 OK**: Successful request.
- **404 Not Found**: Template or banner not found.
- **400 Bad Request**: Invalid form data.
- **500 Internal Server Error**: Unexpected errors.

## Implementation Details

### Backend (Go)
- The backend is implemented using Go's standard libraries for HTTP and HTML templating.
- The server listens on port 8080 and serves the main page and processes the ASCII art requests.

### Frontend (HTML)
- The frontend consists of an HTML form where users can enter text and select a banner style.
- The form submits a POST request to the `/ascii-art` endpoint, and the result is displayed on the page.

### Dockerization
- The project is containerized using Docker to provide a simple deployment process.
- The `Dockerfile` defines the steps to build the image and run the container.

## Example Usage

1. **Start the server locally (without Docker)**:
   ```bash
   go run main.go
   ```

2. **Post data to generate ASCII art**:
   - Enter text and select a banner style.
   - Submit the form to generate ASCII art and view the result on the same page.

3. **Start with Docker**:
   - After building the Docker image, run the container:
     ```bash
     docker run -p 8080:8080 ascii-art-web
     ```
   - Visit `http://localhost:8080` to access the app.

## Contributors
- **Tala Amm**
- **Noor Halabi**
- **Noor Kanaan**
- **Amro Khweis**

## Status
- The project has been successfully completed and passed all audits. Both the web version and the Dockerized version are fully functional.
