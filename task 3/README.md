# Terraform Modular Environment AWS Infrastructure

This project demonstrates a modular approach to provisioning AWS infrastructure using Terraform. It is structured to support multiple environments (`dev`, `prod`, and `test`) while promoting reuse, clarity, and scalability.

---

## Root Structure
```bash
task 3/
|
|----------- modules/ # Reusable Terraform modules
| |---- ec2/ 
| |---- eip/ 
| |---- nat/ 
| |---- s3/ 
| |---- sg/ 
| |---- subnet/ 
| |---- vpc/ 
| |---- igw/
|----------- dev/ # Development environment configuration
| |---- main.tf 
| |---- variables.tf 
| |---- terraform.tfvars 
| |---- backend.tf 
| |---- provider.tf 
| |---- output.tf 
|
|----------- prod/ # Production environment
| |---- (same structure as dev/)
|
|----------- test/ # Testing environment
| |----(same structure as dev/)
```
## Module Structure
This is how the structure of every module in the file "module" (ec2, eip, nat, etc.) Looks like: 
```bash
| |-------- ec2 (module name)
| |-- main.tf
| |-- output.tf
| |-- variables.tf
```
## File Structure 

