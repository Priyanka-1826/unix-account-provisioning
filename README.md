# Unix Account Provisioning via Putty

Author: **Priyanka Nadendla**  
GitHub: [https://github.com/priyanka-1826/unix-account-provisioning](https://github.com/priyanka-1826/unix-account-provisioning)

## 📌 Overview
This project demonstrates **Identity & Access Management (IAM)** tasks on Unix/Linux systems using Putty and shell scripting.

### Features
- User provisioning & de-provisioning
- Access validation and troubleshooting
- Bulk user creation from CSV
- ServiceNow integration for incident/request creation
- Logging of provisioning and API responses

## 🚀 Usage
```bash
./create_user.sh username
./validate_access.sh username
./remove_user.sh username
./bulk_provision.sh users.csv
./servicenow_integration.sh
```

## 📝 Sample CSV
```
alice,developers
bob,admins
charlie,testers
```

## 🔗 Integration
- **ServiceNow Table API** used for IAM workflow automation.

