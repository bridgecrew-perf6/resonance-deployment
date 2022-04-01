#! /bin/sh

docker build ../resonance-frontend -t shadadelic/resonance-frontend:0.1.0 && \
  cd ../resonance-backend/ && \
  BACKEND_TAG=$(KO_DOCKER_REPO=shadadelic ko build cmd/resonance-backend/main.go --tags 0.1.0 --local --bare | tail -n 1) && \
  docker tag ${BACKEND_TAG} shadadelic/resonance-backend:0.1.0
