.PHONY: help infra-up infra-down build-all build-go build-java build-react

help:
	@echo "Financial Platform Monorepo Commands:"
	@echo "  make infra-up    - Start shared infrastructure (DBs, Kafka, Redis)"
	@echo "  make infra-down  - Stop shared infrastructure"
	@echo "  make build-all   - Build all services and apps"

infra-up:
	docker-compose up -d

infra-down:
	docker-compose down

build-all: build-go build-java build-react

build-go:
	@echo "Building Go services..."
	# Example: cd services/market-data-service && go build -o bin/app main.go
	@echo "Go build complete."

build-java:
	@echo "Building Java services..."
	# Example: cd services/user-service && ./mvnw clean package -DskipTests
	@echo "Java build complete."

build-react:
	@echo "Building React apps..."
	# Example: cd apps/web-client && npm install && npm run build
	@echo "React build complete."
