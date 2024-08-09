# Node.js Sample App for Fly.io

## Run the Sample App Locally

```
git clone https://github.com/aungkohtat/DevOps-Software-Delivery-Fundamentals.git

```
```
cd DevOps-Software-Delivery-Fundamentals
```

## instrall node.js

```
curl -fsSL https://deb.nodesource.com/setup_18.x | sudo -E bash -
sudo apt-get install -y nodejs
```

## check Listening on port 8080

![](/images/Screenshot%202024-08-09%20at%2012.51.30 PM.png)

![](/images/Screenshot%202024-08-09%20at%2012.50.14 PM.png)


## Deploying an App on a Server

- deploying an app using Fly.io
### Step 1: Install flyctl.

```
curl -L https://fly.io/install.sh | sh
```
### Step 2: Sign up for a Fly.io account. Run the fly auth command:

```
fly auth signup
```

```
vagrant@cloud-native-box:~/DevOps-Software-Delivery-Fundamentals$ fly auth signup
-bash: fly: command not found
vagrant@cloud-native-box:~/DevOps-Software-Delivery-Fundamentals$ export FLYCTL_INSTALL="/home/vagrant/.fly"
export PATH="$FLYCTL_INSTALL/bin:$PATH"
vagrant@cloud-native-box:~/DevOps-Software-Delivery-Fundamentals$ 
vagrant@cloud-native-box:~/DevOps-Software-Delivery-Fundamentals$ source ~/.bashrc
vagrant@cloud-native-box:~/DevOps-Software-Delivery-Fundamentals$ fly auth signup
failed opening browser. Copy the url (https://fly.io/app/auth/cli/6e75716b696c33673235336b7433783568756b6b726d6a6b6d6e723734357a74) into a browser and continue
Opening https://fly.io/app/auth/cli/6e75716b696c33673235336b7433783568756b6b726d6a6b6d6e723734357a74 ...

Waiting for session... Done
successfully logged in as aungkohtet.cloud@gmail.com
vagrant@cloud-native-box:~/DevOps-Software-Delivery-Fundamentals$ 
```


```
fly auth login
```
![](/images/Screenshot%202024-08-09%20at%201.11.34 PM.png)

### Step 3: Configure the build. 


1. Use Buildpacks to package the app.
2. Use the Node.js Buildpack specifically.
3. Send requests to the app on port 8080.

### Step 4: Launch the app. Run fly launch:

```
fly launch --generate-name --copy-config --yes
```
![](/images/Screenshot%202024-08-09%20at%201.20.12 PM.png)
![](/images/Screenshot%202024-08-09%20at%201.20.32 PM.png)
![](/images/Screenshot%202024-08-09%20at%201.21.49 PM.png)

## Reference

For more information, check out the [Introduction to DevOps and Software Delivery](https://www.gruntwork.io/fundamentals-of-devops/introduction-to-devops-and-software-delivery#example_run_sample_app_locally).


**Happy_Learning!!!**


