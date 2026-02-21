# Use official n8n image
FROM n8nio/n8n:latest

# Basic Auth (protects your n8n editor)
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=123456

# Render Free Tier dynamic port
ENV N8N_HOST=0.0.0.0
ENV N8N_PORT=${PORT}

# Optional: URL for webhooks if you use them
ENV WEBHOOK_URL=https://yourapp.onrender.com/

# Expose port (Render handles this automatically)
EXPOSE ${PORT}

# Use JS Task Runner only (ignore Python warning)
ENV EXECUTIONS_PROCESS=main
ENV NODE_FUNCTION_ALLOW_BUILTIN=*

# Avoid creating unnecessary logs
ENV N8N_LOG_LEVEL=info
