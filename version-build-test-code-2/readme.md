# Configure your Build Using NPM
## node js install
```
#!/bin/bash

# Update your package list
echo "Updating package list..."
sudo apt-get update -y || sudo yum update -y

# Install dependencies
echo "Installing dependencies..."
sudo apt-get install -y curl || sudo yum install -y curl

# Install NodeSource Node.js repository
echo "Installing NodeSource Node.js repository..."
curl -fsSL https://deb.nodesource.com/setup_lts.x | sudo -E bash -

# Install Node.js
echo "Installing Node.js..."
sudo apt-get install -y nodejs || sudo yum install -y nodejs

# Verify installation
echo "Verifying Node.js installation..."
node -v
npm -v

echo "Node.js installation completed successfully."


```

```
npm init
```

```
vagrant@cloud-native-box:~/DevOps-Software-Delivery-Fundamentals/version-build-test-code-2/sample-app$ npm start

> sample-app@1.0.0 start
> node app.js

Listening on port 8080
```

```
chmod u+x build-docker-image.sh
```



