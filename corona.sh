#!/bin/sh

echo "$(curl -s --max-time 1 "https://corona-stats.online/uk?source=2&minimal=true" | sed 's/..[0-9]*m//g; s/  */;/g; 2q; 1d' | awk -F ';' '{print ("cases: "$4) " | " ("deaths: "$7) " | " ("recovered: " $8)}')"
