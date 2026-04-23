# Load Balancer Setup

## Overview
Configuring Application Load Balancer with mulitple Target Groups to serve different content (text and images) based on request path.

---

## Target Group

### Text Target Group 
- Name: TG-text
- Target: web-server-text
- Protocol: HTTP (80)
- Helth check path: /

---

### Image Target Group
- Name: TG-images
- Target: web-server-images
- Protocol: HTTP (80)
- Helth check path: /

---

## Application Load Balancer

### Configuration
- Name: my-alb
- Schema: Internet facing
- Attached to public subnet (2)

### Security Group
- HTTP (80) > Allowed from 0.0.0.0/0

---

## Listener Rules (Path-Based Routing)

### Rule 1
- Path: /text/*
- Forword to: TG-text

### Rule 2
- Path: /images/*
- Forword to: TG-images

### Default Rule
- Forword to: TG-text

---

## Traffic Flow
- /text > web-server-text
- /images > web-server-images

---

## Testing (done)
- my-alb-1529130765.ap-southeast-2.elb.amazonaws.com/text/ > Shows text content
- my-alb-1529130765.ap-southeast-2.elb.amazonaws.com/images/ > Shows image content

---

## Outcome
- Implemented path based routing using ALB
- Diffrent Content served from diffrent backend server
- Improved application design and scalability

---

## Status
Completed
