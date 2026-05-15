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
  echo "Pushing ${SERVICE}..."

  docker push \
    ${ECR_REGISTRY}/pawsible/${SERVICE}:${VERSION}
done

echo "All images pushed successfully."
