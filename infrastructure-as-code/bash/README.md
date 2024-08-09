# Lab-03. How to Manage Your Infrastructure as Code
- How to manage
your infrastructure
as code

## EC2 Instance Bash Script
- install aws cli
```
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install
```

```
$ export AWS_ACCESS_KEY_ID=(your access key id)

$ export AWS_SECRET_ACCESS_KEY=(your secret access key)

```

## Ad Hoc Scripts


1. Create a security group.
2. Update the security group to allow inbound HTTP requests on port 80.
3. Deploy an EC2 instance that uses that security group and runs the Node.js app on boot in a user data script.
4. Output the IDs of the security group and EC2 instance and the public IP of the EC2 instance.
```
chmod u+x deploy-ec2-instance.sh
```

output
```
vagrant@cloud-native-box:~/DevOps-Software-Delivery-Fundamentals/infrastructure-as-code/bash$ ./deploy-ec2-instance.sh 
Instance ID = i-012c9897941a0c070
Security Group ID = sg-0a9e411147855855e
Public IP = 3.22.235.145
vagrant@cloud-native-box:~/DevOps-Software-Delivery-Fundamentals/infrastructure-as-code/bash$ 
```
