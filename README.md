# Convert command line to Web App with Wooey

# Build Docker Image
```
docker build -f Dockerfile --target wooey_ui -t cmd2web_wooey .
```

# Run
```
docker run -d -p 8009:8000 cmd2web_wooey:latest
```