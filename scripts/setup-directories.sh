#!/bin/bash

echo "Creating monorepo directory structure..."

# Apps (Frontends)
mkdir -p apps/web-client apps/admin-dashboard apps/mobile-app

# Services (Backends)
mkdir -p services/user-service services/asset-service services/payment-service \
         services/order-service services/market-data-service services/matching-engine-service \
         services/crypto-wallet-service services/notification-service services/reporting-service

# Packages (Shared Libraries)
mkdir -p packages/ui-components packages/shared-go packages/shared-java \
         packages/eslint-config packages/api-contracts

# Infra (Infrastructure)
mkdir -p infra/docker infra/k8s infra/helm infra/terraform

# Docs (Documentation)
mkdir -p docs/architecture docs/api

# Scripts
mkdir -p scripts

# Add .gitkeep files so Git tracks the empty directories initially
find apps services packages infra docs scripts -type d -exec touch {}/.gitkeep \;

echo "Directory structure created successfully!"
