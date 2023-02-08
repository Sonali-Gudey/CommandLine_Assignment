 read -p  "Enter a number = " n # Reading input from user and storing it in n

function check_prime(){
    flag=0
    n=$1

    # 1 and 0 are not prime numbers
    # Changing flag to 1 for non-prime number
    if [ $n -eq 1 ] || [ $n -eq 0 ]; then
    echo "$n is Not Prime number"
    return
    fi

    i=2
    sqrt_num=$(echo "sqrt($n)" | bc)
    while [[ $i -le $(($sqrt_num)) ]]
    do
        if [[ $(($n%$i)) -eq 0 ]]; then
        echo "$n is Not a Prime number"
        return
        fi
        ((++i))
    done

    echo "$n is a Prime number"
}
check_prime $n

exit 0
