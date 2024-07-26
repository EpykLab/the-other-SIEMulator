#!/bin/bash

TOKEN=$(curl -u "wazuh-wui:MyS3cr37P450r.*-" -k -X GET "https://localhost:55000/security/user/authenticate?raw=true")
curl -k -X DELETE "https://localhost:55000/agents?pretty=true&older_than=21d&agents_list=all&status=never_connected,disconnected" -H  "Authorization: Bearer $TOKEN"
