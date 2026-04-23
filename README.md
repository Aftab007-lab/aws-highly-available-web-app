# aws-highly-available-web-app

## Project Overview
This project demostrates the design and implementation of a highly available and scalable web application on AWS. The architecture follows best practices by deploying resources in private subnets, using a load balancer for traffic distribution and anabling auto scaling based on demand.

---

## Architecture
The application is built using a multi-tier architecture:
User > Application Load Balancer > Target Group (Text Service) > EC2 Instances (Auto Scaling)

- Public Subnets: Load Balancer, Bastion Host
- Private Subnets: Web Servers (EC2)

---

## AWS Services Used
- VPC (Virtual Private Cloud)
- EC2 (Elastic COmpute Cloud)
- Application Load Balancer (ALB)
- Target Groups
- Auto Scaling Group (ASG)
- Internet Gateway & NAT Gateway
- Security Groups

---

## Key Features
- High Availability across multiple Availability Zones(AZ's)
- Auto Scaling based on CPU utilization
- Secure architecture with private subnets
- Bastion host for controlled SSH access
- Path-based routing using ALB
- Separation of workloads (text service & image service)

---

## Traffic Flow
- /text/* > Routed to Auto scaling EC2 instances (text-based response)
- /images/* > Routed to dedicated image server

The load balancer ensures traffic is distributed only to heathy instances using health checks.

---

## Security Design
- EC2 instances are deployed in private subnets (no public IP)
- Bastion host used as a secure entry point
- Security groups restrict SSH access to authorized IP only
- Only the Load Balancer is exposed to the internet

---

## Auto Scaling
- Launch Template used for instance configuration
- Auto Scaling Group maintains desired capacity
- Target tracking policy based on CPU utilization (50% in our project)
- Automatically replaces unhealthy instances

---

## Testing & Validation
- Verified load balancing by accessing application multiple times
- Tested Auto Scaling by terminating insances and observing automatic replacement
- Confirmed health checks and target group status

---

## Screenshots (yet to upload)
- VPC and Subnet Confiuration
- EC2 Instances
- Load Balancer and Target Groups
- Auto Scaling Group
- Application Output (/text/* and /images/*)

---

## Outcome
- Successfully implemented a highly available and scalable architecture
- Achieved fault tolerance and traffic distribution
- Demonstrated real-world AWS and DevOps practices

---

## Conclustion
This project showcases practical experience in designing cloud infrastructure with a focus on scalability, security, and reliability. It reflects a production-oriented approach using core AWS services.

---
