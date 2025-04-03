# Use the latest official Zep image
FROM ghcr.io/getzep/zep:latest

# Set environment variables for Zep runtime
ENV ZEP_API_KEY=z_1dWlkIjoiMTUxMzA1YmMtYWRlOS00YWRjLWFhZmYtN2NjM2FhODlkZWVjIn0.IKcMUgo3savI0z6c3QXoYILxeW_JchGUz78PuNYD5QG55K7Qk2NeD9W64izBNgFfY3MRXXRVvUvTanubIRLYGQ
ENV ZEP_SERVER_HOST=0.0.0.0
ENV ZEP_SERVER_PORT=8000

# Expose the Zep port to Railway or other hosts
EXPOSE 8000

# Start the Zep server
CMD ["zep", "server", "--config", "/app/zep.yaml"]
