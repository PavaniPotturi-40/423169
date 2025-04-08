# 1. Find all lines containing the word "error" in log.txt
grep "error" log.txt

# 2. Count the occurrences of the word "success" in data.txt
grep -o "success" data.txt | wc -l

# 3. Extract all lines from records.txt that start with a digit
grep "^[0-9]" records.txt

# 4. Display all lines in file.txt that do not contain the word "failed"
grep -v "failed" file.txt

# 5. Find all .txt files in the current directory that contain the word "TODO"
grep -l "TODO" *.txt

