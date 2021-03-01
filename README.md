# SKY

#Platform Design


![image](https://user-images.githubusercontent.com/57166493/109477166-b9c3c080-7a9d-11eb-8be8-856a8defe9ed.png)

Illustration:

Provision 2 VM instances in GCP via Terraform
Install Puppet master on one instance and perform required configurations (Jenkins in manifests)
Install Puppet agent on another instance and run it to install Jenkins on this instance
Create a K8s cluster with GKE
Configure this Jenkins instance with a job to pull code from SCM that has Jenkinsfile defining the pipeline configs (Build + Deploy to K8s cluster)

