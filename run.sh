sed -i "s/SERVER_PUBLIC_IP/${ICE_IP}/g" /webrtc/ice.js

sed -i 's/wss:\/\//ws:\/\//g' /webrtc/apprtc/out/app_engine/apprtc.py
sed -i 's/https:\/\//http:\/\//g' /webrtc/apprtc/out/app_engine/apprtc.py

sed -i "s/SERVER_PUBLIC_IP/${Candidate}/g" /webrtc/apprtc/out/app_engine/constants.py

supervisord -c /webrtc/apprtc_supervisord.conf
