# echo "Enter a number = "
# read n  #Takes input number

#If no input is given, print an error message.
if [[ $# -eq 0 ]]; then
    echo "Error, Please enter a number = "
    exit 1
fi

n=$1

i=1

echo "Table of $n:"

#While loop to print the table of a number
while [[ $i -le 10 ]]
do
    echo "$n × $i = $(( n*i ))"
    i=$(($i+1)) #Increment
    #((++i)) 
done

exit 0