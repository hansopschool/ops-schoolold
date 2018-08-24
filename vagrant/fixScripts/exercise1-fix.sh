#!/bin/bash
#add fix to exercise1 here
curl --ipv4 -v http://www.textfiles.com/art/bnbascii.txt

referance:
https://stackoverflow.com/questions/45554344/curl-7-failed-to-connect-to-port-80-and-443-on-one-domain
-2-First Check your /etc/hosts file entries, may be the URL which You're requesting, is pointing to your localhost.

If the URL is not listed in your /etc/hosts file, then try to execute following command to understand the flow of Curl Execution for the particular URL:

curl --ipv4 -v "https://example.com/";




