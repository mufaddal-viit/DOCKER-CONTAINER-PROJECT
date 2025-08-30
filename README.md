# 🧮 Interactive Calculator Web App in Node js Docker

This project demonstrates how to deploy a browser-based interactive HTML+JavaScript app, on # Docker.


## 📁 Project Structure

docker-html-calculator/

├── Dockerfile # Docker configuration

├── index.html # HTML + JS interactive calculator

└── README.md # Project documentation

## 🌐 What This Project Does

- Provides a basic calculator (Add/Subtract) in the browser.
- Uses vanilla HTML + JavaScript for UI and logic.
- Serves the static site using `http-server` in a Node.js container.
- Dockerized: the app runs inside a container accessible via `localhost`.

---

## 🚀 How to Run This Project

### 1. Clone or Create the Project Directory

Make sure the directory contains the following:

- `index.html`: Your HTML calculator file.
- `Dockerfile`: The container instructions.

---

### 2. Dockerfile Example (Using `http-server`)

FROM node:22-alpine

WORKDIR /app

COPY index.html .

RUN npm install -g http-server

EXPOSE 8080

CMD ["http-server", ".", "-p", "8080"]

# Build the Docker Image
docker build -t html-calculator .

# Run the Docker Container
docker run -d -p 8080:8080 html-calculator


# Visit http://localhost:8080
 in your browser to use the app.

## 🛠 Features
The web app has been successfully deplpoyed on node js container and is eerving static web app on 8000 port.

Choose between addition or subtraction.
- Enter two numbers and get the result instantly.
- Fully interactive UI in the browser.
- All client-side logic using pure JavaScript

# Thank you :)
