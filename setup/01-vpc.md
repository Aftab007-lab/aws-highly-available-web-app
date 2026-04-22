# VPC Setup

## VPC Details
- CIDR: 10.0.0.0/26

## Subnets
### Public Subnets
- 10.0.0.0/28
- 10.0.0.16/28
(16 IP's each subnets)

### Private Subnets
- 10.0.0.32/28
- 10.0.0.63/28
(16 IP's each subnets)

## Internet Gateway
- Created and attached to VPC

## Route Tables

### Public Route Table
- Added route:
  - Destination: 0.0.0.0/0
  - Target: Internet Gatway (IGW)
- Associated with:
  - Public Subnet 1
  - Public Subnet 2

### Private Route Table
- Added route:
  - Destination: 0.0.0.0/0
  - Target: NAT Gateway
- Associated with:
  - Private Subnet 1
  - Private Subnet 2

## NAT Gateway
- Created in Public Subnet
- Attached to Private Route Table
- Elasti IP attached

## Status
Completed
