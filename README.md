# aws-lambda-package-windows
Package an AWS Lambda function with Docker amazonlinux image on Windows 10

# Step 1

Read this and make sure you are sharing your Windows drive with Docker

```
https://blogs.msdn.microsoft.com/stevelasker/2016/06/14/configuring-docker-for-windows-volumes/
```

# Step 2

Create a C:\Users\Dockerhost folder and give Dockerhost user permission to read/write then create a sub-folder called lambda e.g. C:\Users\Dockerhost\lambda

# Step 3

Build the Docker file:

```
docker build -t amazon . ; docker run -it -v C:\Users\Dockerhost\lambda\:/lambda/zip amazon bash package.sh
```

# Step 4

Go to your C:\Users\Dockerhost\lambda\ folder and upload the file to AWS
