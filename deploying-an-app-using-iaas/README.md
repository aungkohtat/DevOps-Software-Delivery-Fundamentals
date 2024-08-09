## Deploying an App Using IaaS

- Step 1: Sign up for AWS
- Step 2: Create an IAM user
- Step 3: Login as the IAM user
- Step 4: Deploy an EC2 instance

![](/images/001.png)

### User data script

```
#!/usr/bin/env bash

set -e

curl -fsSL https://rpm.nodesource.com/setup_21.x | bash -
yum install -y nodejs

tee app.js > /dev/null << "EOF"
const http = require('http');

const server = http.createServer((req, res) => {
  res.writeHead(200, { 'Content-Type': 'text/plain' });
  res.end('Hello, World!\n');
});

const port = 80;
server.listen(port,() => {
  console.log(`Listening on port ${port}`);
});
EOF

nohup node app.js &
```

- Copy and paste that IP address, open http://<IP> in your browser

![](/images/002.png)

