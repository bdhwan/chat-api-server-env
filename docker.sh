
#!/bin/bash
docker build  --no-cache --tag bdhwan/chat-api-server-env:0.0.6 .
docker push bdhwan/chat-api-server-env:0.0.6
