# Financial Investment Platform Monorepo

This monorepo contains the frontend applications, backend microservices, and infrastructure configurations for the Financial Investment Platform (Crypto, Stocks, Gold, and Asset Management).

## Technologies
* **Frontend:** React (TypeScript)
* **Backend:** Java (Spring Boot), Go
* **Infrastructure:** Docker, PostgreSQL, Redis, Kafka

## Directory Structure

The repository is organized into the following top-level directories:

* `apps/` - Contains all frontend applications.
  * `apps/web-client/` - The main React application for end-users.
  * `apps/admin-dashboard/` - React application for back-office management.
* `services/` - Contains all backend microservices.
  * `services/user-service/` - (Java/Spring) Manages user accounts, authentication, and KYC.
  * `services/asset-management-service/` - (Java/Spring) Manages user portfolios and balances.
  * `services/market-data-service/` - (Go) High-throughput service for real-time crypto/stock/gold prices.
  * `services/order-execution-service/` - (Go) Handles the placement and execution of trades.
* `packages/` - Shared libraries and modules.
  * `packages/shared-go/` - Common Go utilities, middleware, and protobuf definitions.
  * `packages/ui-components/` - Shared React components.
* `infra/` - Infrastructure configurations.
  * `infra/docker/` - Dockerfiles and compose files.
  * `infra/k8s/` - Kubernetes manifests for deployment.

## Getting Started

### Prerequisites
* Docker & Docker Compose
* Make
* Node.js & npm/yarn (for React)
* Java 17+ & Maven/Gradle (for Spring Boot)
* Go 1.21+ (for Go services)

### Running Infrastructure
To start the required databases and message brokers locally:
