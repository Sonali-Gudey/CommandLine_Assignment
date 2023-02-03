## CommandLine_Assignment

### Question - 1
Write a bash script to get the current date, time, username, home directory and current working directory.

#### Apporach:
Used the following commands to fetch the desired details, each command is as mentioned below.

* $(date +"Year: %Y, Month: %m, Day: %d")	--> Command to fetch the date
* $(date +"%T")	--> Command to fetch the time
* $(whoami) -->	Command to fetch the current working user
* $(echo $HOME)	--> Command to fetch the Home directory
* $(pwd) -->	Command to fetch the current wokring directory

#### Test Run:
![image](https://user-images.githubusercontent.com/123619701/216612605-ac71680c-9313-44b0-875a-9d73c2fe6944.png)


### Question - 2
Write a bash script (name Table.sh) to print the Table of a number by using a while loop. It should support the following requirements.

The script should accept the input from the command line.
If you don’t input any data, then display an error message to execute the script correctly.
#### Apporach:
We verify whether any arguments have been passed, and if not, we issue an error and quit the programme with exit status 1. If not, we run a loop to print all the arguments passed, then another while loop on all the arguments, start a counter internally on the second while loop, increment it after each iteration, fetch the result, and repeat this internal loop for each element in the arguments list until the counter value is less than 10, at which point the programme ends.


#### Code:

```
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
```

#### Test Run:
##### Case-1: When no input is given
![image](https://user-images.githubusercontent.com/123619701/216614178-9de70c87-f24a-4042-9633-87aba02357c5.png)

##### Case-2: When argument is given
![image](https://user-images.githubusercontent.com/123619701/216614898-cd3d41a1-eab4-40f0-bfad-a428ed1acd48.png)

### Question - 3
Write a Function in bash script to check if the number is prime or not? It should support the following requirement. - The script should accept the input from the User.

#### Apporach:
We created a function called is prime to determine whether a number is prime or not. If the number is less than 2, we indicate that it is not a prime, and if not, we run a loop from 2 to number/2 to see if any of the above numbers divide the given number. If we found any numbers, we can conclude that the number is not a prime because it has a divisor other than 1 and itself.

We receive user input in the main code, store it in a variable, and then call the function while sending the argument as command line arguments.

#### Code:
```
    # Reading input from user and storing it in n
    read -p  "Enter a number = " n 
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
      while [[ $i -le $((n/2)) ]]
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
  ```

#### Test Run:
![image](https://user-images.githubusercontent.com/123619701/216615773-280f9ebf-21b9-4704-8955-b0d28e8bcd91.png)

### Question - 4
Create a bash script that supports the following requirement.

Create a folder ‘Assignment’.
Create a file ‘File1.txt’ inside ‘Assignment’ Folder.
Copy all the content of Table.sh(2nd script) in ‘File1.txt’ without using ‘cp’ and ‘mv’ command.
Append the text Welcome to Sigmoid’ to the ‘File1.txt’ file.
List all the directories and files present inside Desktop Folder.

#### Approach:
We have used the following commands to meet the desired requirements and the function of command is as follows.


* mkdir ~/Desktop/Assignment	--> Creating folder using mkdir
* touch ~/Desktop/Assignment/File1.txt -->	Creating file using touch
* cat ~/Desktop/Table.sh >> ~/Desktop/Assignment/File1.txt -->	Copying data in q2 to file1 using cat
* echo "Welcome to Sigmoid" >> ~/Desktop/Assignment/File1.txt -->	Appending given text to file1
* ls -la ~/Desktop/	--> Printing files and folders in Desktop
* List all the directories and files present inside Desktop Folder.

```
  #Creating a folder using mkdir
  mkdir ~/Desktop/Assignment
  echo "Created a folder 'Assignment'"

  #Creating file using touch command
  touch ~/Desktop/Assignment/File1.txt
  echo "Created a file 'File1.txt' in Assignment Folder"


  #Copying data in q2 to file1 using cat
  cat /Users/sonali_gudey/Documents/Practice/Shell_scripting/Table.sh >> ~/Desktop/Assignment/File1.txt
  echo "Data in 'Table.sh' copied to 'File1.txt' using cat command"


  #Appending given text to File1
  echo -e "\nWelcome to Sigmoid" >> ~/Desktop/Assignment/File1.txt

  echo "Folders in the Desktop: "
  #Printing files and folders in Desktop
  ls -la ~/Desktop/

  exit 0
  ```
  
  #### Test Run:
  ![image](https://user-images.githubusercontent.com/123619701/216618013-90073d71-bed7-416a-bfc8-b9d7e3a45dd4.png)
  
  #### Text in File1.txt

![image](https://user-images.githubusercontent.com/123619701/216618574-6cb45ff5-8924-44c9-b637-43629c6890f0.png)

### Question - 5
You have given an array. Using Bash script, print its length, maximum element and minimum element. arr=( 2 3 4 1 6 7).

#### Approach:
We have declared the array internally in the code, we have used the following commands to fetch the required result

* echo ${#arr[@]}	--> Length of the array

We use a for loop to get the maximum and minimum element. Using the first element as the maximum, we traverse each element in the loop to see whether it is greater than the maximum value we have assumed.
#### Code:
```
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
```
#### Test Run:
![image](https://user-images.githubusercontent.com/123619701/216619832-f7a46efc-3b2d-441f-8b23-f7cd2d5b6ac3.png)
