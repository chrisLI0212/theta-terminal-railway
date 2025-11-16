# Theta Terminal on Railway

## Environment Variables
- `THETA_EMAIL`
- `THETA_PASSWORD`

## Ports
- 25503 (main service)
- 25520 (FPSS WebSocket)

## Deployment
1. Add env vars in Railway → Service → Variables.
2. Deploy via GitHub integration (Dockerfile is auto-detected).
