# Question 1: List all files in the current directory that start with the letter 'a'
ls a*

# Question 2: List all files in the current directory with a .txt extension
ls *.txt

# Question 3: Find all files in the current directory whose names have exactly five characters
ls ?????   # Matches files with exactly five characters (excluding extensions)

# Question 4: List files in the current directory that start with any letter between 'b' and 'e'
ls [b-e]*

# Question 5: List files in the current directory ending with .log, where the second character is a number
ls ?[0-9].log

