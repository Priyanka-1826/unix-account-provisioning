#!/bin/bash
# servicenow_integration.sh - Create ServiceNow incident via REST API

SERVICENOW_INSTANCE="your_instance.service-now.com"
SERVICENOW_USER="your_username"
SERVICENOW_PASS="your_password"

RESPONSE=$(curl -s -u "$SERVICENOW_USER:$SERVICENOW_PASS"   -X POST "https://$SERVICENOW_INSTANCE/api/now/table/incident"   -H "Content-Type: application/json"   -d '{
        "short_description": "Unix account provisioning request",
        "assignment_group": "Access Management",
        "urgency": "2",
        "impact": "2"
      }')

echo "Response: $RESPONSE"
echo "$(date) : $RESPONSE" >> logs/servicenow.log
