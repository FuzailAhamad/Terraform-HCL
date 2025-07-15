# Terraform-HCL

<h2> 🚀 Launch EC2 Instance with Terraform (Modular Setup) </h2>

This Terraform project launches an EC2 instance in AWS using a clean and modular HCL structure. It includes configuration for the instance, security group, key pair, and provider.


## 📁 Project Structure
```
bash
.
├── InstID.tf              # Finds the latest Ubuntu AMI
├── Instance.tf            # Defines the EC2 instance
├── SecurityGroup.tf       # Creates Security Group with ingress/egress rules
├── keypair.tf             # Uploads public SSH key to AWS
├── provider.tf            # AWS provider & region configuration
├── README.md              # Project documentation
└── .gitignore             # (recommended - ignore sensitive files)
```

🛠️ What This Project Does
✅ Finds the latest Ubuntu 22.04 LTS AMI using Canonical’s official AMI ID

✅ Launches an EC2 instance (t2.small)

✅ Creates and attaches a Security Group:

   - SSH access from a specific IP

   - HTTP access open to all

✅ Uploads an SSH public key to AWS

✅ Outputs the AMI ID


🌐 Prerequisites
    
  -  Terraform
  - AWS CLI
  - AWS credentials configured via:
     - aws configure or
     - Environment variables


🚀 How to Use

1️⃣ Initialize the Project
```
terraform init
```
2️⃣ (Optional) Format and Validate
```
terraform fmt
terraform validate
```
3️⃣ Review the Plan
```
terraform plan
```
4️⃣ Apply the Configuration
```
terraform apply
```

<h2>🔐 Security Notes </h2>
⚠️ Do not expose your private .pem key.

⚠️ Replace placeholder or real public IPs in SecurityGroup.tf with care.

✅ Only the public key is stored via aws_key_pair, which is safe.

✅ Use .gitignore to avoid pushing .tfstate, .pem, and .tfvars.

📄 Recommended .gitignore
gitignore
Copy
Edit
*.pem
*.tfvars
*.tfstate*
.terraform/
crash.log
📤 Outputs
AMI ID used to launch the EC2 instance

(You can extend outputs to include instance ID, public IP, etc.)

👨‍💻 Author
Fuzail Ahamad

📬 Optional: fuzailahamad2002@gmail.com
