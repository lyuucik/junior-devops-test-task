#!/bin/bash

start_time=$(date +%s)

log_dir="/var/log"
search_term="php7.4"

count=$(grep -r --binary-files=without-match "$search_term" "$log_dir" 2>/dev/null | wc -l)

end_time=$(date +%s)
duration=$((end_time - start_time))

echo "Number of string with '$search_term': $count."
echo "The search was spent $duration sec."
