# 1. Check if a number is even or odd
echo "Enter a number:"
read num
if [ $((num % 2)) -eq 0 ]; then
    echo "$num is even"
else
    echo "$num is odd"
fi

# 2. Check if a year is a leap year or not
echo "Enter a year:"
read year
if (( year % 400 == 0 )) || (( year % 4 == 0 && year % 100 != 0 )); then
    echo "$year is a leap year"
else
    echo "$year is not a leap year"
fi

# 3. Find the factorial of a number
echo "Enter a number for factorial calculation:"
read num
fact=1
for (( i=1; i<=num; i++ )); do
    fact=$((fact * i))
done
echo "Factorial of $num is $fact"

# 4. Swap two integers
echo "Enter two numbers to swap:"
read a b
echo "Before swapping: a=$a, b=$b"
temp=$a
a=$b
b=$temp
echo "After swapping: a=$a, b=$b"

# 5. Compute GCD & LCM of two numbers
echo "Enter two numbers for GCD & LCM calculation:"
read a b

gcd() {
    local x=$a
    local y=$b
    while [ $y -ne 0 ]; do
        temp=$y
        y=$((x % y))
        x=$temp
    done
    echo "GCD is $x"
    echo "LCM is $(( (a * b) / x ))"
}

gcd
