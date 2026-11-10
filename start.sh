#!/bin/bash

echo "=========================================="
echo "Starting SSHX Terminal Session..."
echo "=========================================="

# sshx को बैकग्राउंड में चलाना ताकि लिंक लॉक्स में आ जाए
sshx &

# sshx को इनिशियलाइज होने के लिए थोड़ा समय देना
sleep 3

echo "=========================================="
echo "Starting Main Web Server App..."
echo "=========================================="

# वर्चुअल एनवायरनमेंट एक्टिवेट करके Python सर्वर स्टार्ट करना
source /opt/venv/bin/activate
exec python3 /app/server.py
