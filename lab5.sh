#!/bin/bash

# 1. Extract ERROR messages along with timestamps from a log file
echo "Extracting ERROR messages..."
awk '$2 == "ERROR" {print $1, $4}' log.txt

# 2. Compute the average of each subject from a tab-separated CSV file
echo "Computing subject averages..."
awk 'NR>1 {math+=$2; science+=$3; english+=$4; count++} 
END {print "Math Avg:", math/count; print "Science Avg:", science/count; print "English Avg:", english/count}' records.txt

# 3. Count occurrences of each IP in a server log
echo "Counting IP occurrences..."
awk '{count[$1]++} END {for (ip in count) print ip, count[ip]}' server.log

# 4. Swap the first and last words in lines of text
echo "Swapping first and last words..."
sed -E 's/^([^ ]+) (.*) ([^ ]+)$/\3 \2 \1/' file.txt

# 5. Remove consecutive duplicate words in a file
echo "Removing consecutive duplicate words..."
sed -E 's/\b([a-zA-Z]+) \1\b/\1/g' duplicates.txt

# 6. Find all lines containing "error" in log.txt
echo "Searching for 'error' in log.txt..."
grep "error" log.txt

# 7. Count occurrences of "success" in data.txt
echo "Counting occurrences of 'success' in data.txt..."
grep -o "success" data.txt | wc -l

# 8. Extract lines from records.txt that start with a digit
echo "Extracting lines starting with a digit..."
grep "^[0-9]" records.txt

# 9. Display all lines in file.txt that do not contain "failed"
echo "Displaying lines without 'failed'..."
grep -v "failed" file.txt

# 10. Find .txt files that contain "TODO"
echo "Searching for 'TODO' in .txt files..."
grep -l "TODO" *.txt

echo "Script execution completed!"

