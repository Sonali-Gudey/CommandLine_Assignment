arr=( 2 3 4 1 6 7 )
# Length of the array
echo "Length of the array = ${#arr[@]}"


# Initialising first element to the max
max=${arr[0]}
# Using for loop to traverse the array and find the maximum element
for ele in "${arr[@]}";
do
    if [ $ele -ge $max ]; then
        max=$ele
    fi
done
echo "Maximum element in the array is $max"


# Initialising first element to the min
min=${arr[0]}
# Using for loop to traverse the array and find the minimum element
for ele in "${arr[@]}";
do
    if [ $ele -le $min ]; then
        min=$ele
    fi
done
echo "Minimum element in the array is $min"