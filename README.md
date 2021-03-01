# SKY - Platform Design


![image](https://user-images.githubusercontent.com/57166493/109477702-5c7c3f00-7a9e-11eb-8b6c-8cc3db91624a.png)


Illustration:

- Provision 2 VM instances in GCP via Terraform
- Install Puppet master on one instance and perform required configurations (Jenkins in manifests)
- Install Puppet agent on another instance and run it to install Jenkins on this instance
- Create a K8s cluster with GKE
- Configure this Jenkins instance with a job to pull code from SCM that has Jenkinsfile defining the pipeline configs (Build + Deploy to K8s cluster)

