# Deployment Guide for Aidly

This guide will walk you through the process of setting up and deploying the Aidly platform. Whether you're deploying it locally for development or deploying it to production, these instructions will help you get Aidly up and running.

## Prerequisites

Before proceeding with the deployment, ensure you have the following prerequisites installed:

- **Docker**: Aidly uses Docker to containerize the application for easy deployment.
- **Docker Compose**: To manage multi-container Docker applications.
- **Phantom Wallet**: For integration and authentication purposes (ensure you have developer keys set up).

### 1. Clone the Repository

Start by cloning the Aidly repository from GitHub:

```bash
git clone https://github.com/AidlyTeam/aidly.git --recursive
cd aidly
```

### 2. Run The Application

```bash
docker compose -f ./deployment/dev-docker-compose.yml up --build
```

This command will build and start the Docker containers based on the development configuration specified in `dev-docker-compose.yaml`.

## Using Makefile

Alternatively, you can use the `Makefile` to build and start the application:

```bash
make dev-build
```

This command will also build and run the containers as specified in the Makefile.

---

### Accessing the Application

Once the application is up and running, you can access the platform by navigating to [http://localhost](http://localhost). **Nginx** is configured as a reverse proxy, so the following services will be available on their respective routes:

- **Frontend**: [http://localhost](http://localhost) – The main user interface.
- **Backend API**: [http://localhost:8080](http://localhost:8080) – The backend API for managing the platform's core functionality.
- **Web3 Backend**: [http://localhost:8082](http://localhost:8082) – The Web3 backend for Solana blockchain interactions.
- **PostgreSQL**: [localhost:5432](localhost:5432) – The database for storing platform data.

Since Nginx is handling the routing, simply visiting `localhost` on port **80** is sufficient to access the application.

---

### Live Demo

You can also try the live version of Aidly at:  
👉 [https://aidly.cetinboran.com.tr](https://aidly.cetinboran.com.tr)
