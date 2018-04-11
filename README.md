# Building up a VPC with Public and Private Subnets with Terraform

## Purpose
    - Note: this a work in progress, I'll add more to this as I see fit.
    - Create an AWS VPC comprised of a public and private subnet.
    - Within the public subnet, build up our internet-facing web servers.
    - Within the private subnet, build up our internal servers that are inaccessible from the outside world, and only accessible through ssh-forwarding and a bastion host.
    - Launch our resources using Terraform into the VPC that has been created. 

## Prerequisites && Assumptions
    - This tutorial assumes that you already have an AWS Account.  If you do not already, go head and create on. You can do this by refering to the AWS documentation found here: [INSERT URL]
    - This tutorial uses Packer to create a simple AMI therefore, you need to Install Packer and set the correct PATH. Documentation on Packer can be found here: [INSERT URL]
    - You have installed Terraform and have it set to the correct PATH, and understand the basics of Terraform.

## Replicating the Terraform project on your machine
    - Clone the repository and cd into the cloned repo.

    Building the AMI with Packer
    - run the command: [packer validate packer.json] to validate the packer.json file.
    - run the command: [packer build packer.json] to build your AMI.
    
    Building infrastructure with Terraform
    - run the command: [terraform init] and you should see a message demonstrating that it initialized successfully.
    - runing the command: [terraform plan] will show you the resources that will be added.
    - running the command: [terraform apply] will build and launch resources accordingly.

     
 

