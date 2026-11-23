# 🐳 Dockerized Web Application

A hands-on DevOps project demonstrating how to containerize a Node.js web application using Docker and Docker Compose.

## 🚀 Project Overview

This project demonstrates the complete containerization workflow:

**Source Code → Dockerfile → Docker Image → Docker Container → Docker Compose → Running Application**

## 🛠️ Technologies Used

- Node.js
- Express.js
- Docker
- Docker Compose
- GitHub Codespaces
- Linux

## 📁 Project Structure

```text
dockerized-web-application/
├── app/
│   ├── public/
│   │   └── index.html
│   ├── package.json
│   ├── package-lock.json
│   └── server.js
├── screenshots/
├── Dockerfile
├── compose.yaml
├── .dockerignore
└── README.md
```

## ⚙️ Practical Implementation

### 1. Develop the Web Application

Created a Node.js application using Express.js with a simple frontend and a health-check endpoint.

### 2. Create Dockerfile

Defined the application environment, installed dependencies, copied source code, and configured the application startup command.

### 3. Build Docker Image

```bash
docker build -t dockerized-web-app:v1 .
```

### 4. Run Docker Container

```bash
docker run -d -p 3000:3000 --name my-web-container dockerized-web-app:v1
```

### 5. Configure Docker Compose

Created `compose.yaml` to manage the application container.

### 6. Start Application Using Docker Compose

```bash
docker compose up -d --build
```

### 7. Verify Running Container

```bash
docker compose ps
```

### 8. Test Application Health

```bash
curl http://localhost:3000/health
```

Expected response:

```json
{
  "status": "healthy",
  "application": "Dockerized Web Application"
}
```

## 🐳 Useful Docker Commands

| Command | Purpose |
|---|---|
| `docker images` | List Docker images |
| `docker ps` | List running containers |
| `docker ps -a` | List all containers |
| `docker logs CONTAINER` | View container logs |
| `docker compose up -d` | Start services |
| `docker compose down` | Stop and remove services |
| `docker compose restart` | Restart services |
| `docker compose logs` | View application logs |

## 🎯 Learning Outcomes

- Understanding Docker fundamentals.
- Creating and configuring Dockerfiles.
- Building custom Docker images.
- Running and managing Docker containers.
- Configuring container networking and port mapping.
- Managing applications using Docker Compose.
- Testing application health endpoints.
- Using GitHub Codespaces for cloud-based development.

## 👨‍💻 Author

**K.W.Ashen Rashmika Karunarathna**

GitHub: [@info-ashenrsh](https://github.com/info-ashenrsh)

---

⭐ If you find this project useful, feel free to explore and star the repository!