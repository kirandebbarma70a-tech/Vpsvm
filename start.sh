#!/bin/bash

echo "=========================================="
echo "Starting Dummy HTTP Server on Port 10000..."
echo "=========================================="

# Render का पोर्ट चेक पास करने के लिए पोर्ट 10000 पर पाइथन सर्वर चलाएं
python3 -m http.server 10000 --bind 0.0.0.0 &>/dev/null &

echo "=========================================="
echo "Starting SSHX Terminal Session..."
echo "=========================================="

# sshx को चलाएं ताकि लॉक्स में लिंक मिल जाए
exec sshx
