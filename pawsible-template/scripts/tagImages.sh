#!/bin/bash

SERVICES=(
  admin-server
  api-gateway
  config-server
  customers-service
  discovery-server
  genai-service
  vets-service
  visits-service
)

for SERVICE in "${SERVICES[@]}"
do
  echo "Tagging ${SERVICE}..."

  docker tag \
    springcommunity/spring-petclinic-${SERVICE}:latest \
    ${ECR_REGISTRY}/pawsible/${SERVICE}:${VERSION}

done

echo "All images tagged successfully."
