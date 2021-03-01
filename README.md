Platform design available here : https://github.com/Pujadeep1/SKY/blob/main/Platform_Design.PNG

I was able to create VM instances in GCP using Terraform. 
While trying to install puppet server/agent on these instances, i encountered error as below:

Reading package lists... Done
W: Failed to fetch http://repo.mysql.com/apt/debian/dists/buster/InRelease  Temporary failure resolving 'repo.mysql.com'
W: Some index files failed to download. They have been ignored, or old ones used instead.

After which, starting puppet server on the instance failed. 

I proceeded with writing code only after this point as i could not install Jenkins via a configuration management tool on GCP VM instance. 

This repo contains:

- Platform design 
- Link to hello world application code : 
- App binary
- Terraform code for VM creation
- Puppet code for Jenkins installation
- Jenkinsfile added in app repo
