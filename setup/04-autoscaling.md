# Auto Scaling group

## Overview 
This phase covers configuring Auto Scaling to automatically manage EC2 instances based on load, ensuring high availability and scalability

---

## Launch Template

### Configuration
- Name: web-template
- AMI: Amazon Linux 2
- Instance Type: t2.micro
- Key Pair: Configured
- Security Group:
  - HTTP (80) > Allowed
  - SSH (22) > Allowed
- Tag:
  - Key: Auto Scaling
  - Value: Yes

### User Data

```bash
#!/bin/bash
yum install httpd -y
systemctl start httpd
systemctl enable httpd
echo "Hello this is from auto scaling instance $(hostname)" > /var/www/html/index.html
```

---

## Auto Scaling Group (ASG)

### Configuration
- Name: web-asg
- Launch Template: web-template

### Network
- VPC: project-vpc
- Subnets:
  - Private Subnet 1
  - Private Subnet 2

### Load Balancer Integration
- Attached to Target Group: TG-text

---

## Capacity Settings
- Minimum Instances: 1
- Desire Instances: 2
- Maximum Instances: 3

---

## Scaling Policy 

### Type
- Target Tracking Scaling Policy

### Metric
- Average CPU Utilization

### Traget Value
- 50%
  - Which means if the CPU is >50% then add instance and if the CPU is <50% and remove instances.

---

## Testing

### Test 1
- Generate load on instances (e.g continus request or connecting instance and runing cmd yes > /dev/null &)

### Test 2
- Monitor new instances are launched automatically

### Test 3 
- Verify new instances are launched automatically
- Verify the Tag

### Test 4
- Stoped manually crated instances and check with DNC link
- Verified and it is accessible
 
---

## Outcome
- Automatic Scaling based on load
- High availablility achieved 
- Fault tolerance improved
- No manual intervention required

---

### Status
Completed
