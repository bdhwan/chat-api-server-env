
#!/bin/bash
docker build  --no-cache --tag bdhwan/chat-api-server-env:0.0.2 .
docker push bdhwan/chat-api-server-env:0.0.2
