
#!/bin/bash
docker build  --no-cache --tag bdhwan/chat-api-server-env:0.0.3 .
docker push bdhwan/chat-api-server-env:0.0.3
