# Use official Zep image as base
FROM ghcr.io/getzep/zep:latest

# Create working directory
WORKDIR /app

# Copy your config file into the container
COPY zep.yaml .

# Default command to run Zep server
CMD ["zep", "server", "--config", "/app/zep.yaml"]
