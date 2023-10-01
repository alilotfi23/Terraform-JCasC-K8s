# Terraform-JCasC-K8s
Deploying Jenkins(JCasC) on Kubernetes with Helm and Terraform
## terraform provider file
A provider in Terraform is a plugin that enables interaction with an API. This includes Cloud providers and Software-as-a-service providers. The providers are specified in the Terraform configuration code. They tell Terraform which services it 
## terraform versions file
Stick to a provider version that ensures there are no breaking changes.
## terrafprm main file
main.tf will contain the main set of configurations for your module.
Install provider

```shell
terraform init
```
The terraform plan command creates an execution plan, which lets you preview the changes that Terraform plans to make to your infrastructure

```shell
terraform plan
```
The terraform apply command is used to apply the changes required to reach the desired state of the configuration
```shell
terraform apply
```
# Helm
Helm is a tool that automates the creation, packaging, configuration, and deployment of Kubernetes applications by combining your configuration files into a single reusable package.
## values.yaml
All Helm-packed applications have associated values.yaml file which dictates the configuration of an application.
# JCasC
The Jenkins Configuration as Code (JCasC) feature defines Jenkins configuration parameters in a human-readable YAML file that can be stored as source code.
