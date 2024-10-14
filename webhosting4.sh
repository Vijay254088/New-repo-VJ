#!/bin/bash
URL="https://www.guvin.in"
HTTP_STATUS=$(curl -o/dev/null-s-w "%{http_code}" "$URL")
if [[ "HTTP_STATUS -ge 200 ]]; then

	echo "success:the websit is reachable"
else 
	echo "faliure:the websit is not reachble"
f
