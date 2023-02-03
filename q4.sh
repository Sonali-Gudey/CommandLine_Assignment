# Creating a folder using mkdir
mkdir ~/Desktop/Assignment
echo "Created a folder 'Assignment'"

# Creating file using touch command
touch ~/Desktop/Assignment/File1.txt
echo "Created a file 'File1.txt' in Assignment Folder"


# Copying data in q2 to file1 using cat
cat /Users/sonali_gudey/Documents/Practice/Shell_scripting/Table.sh >> ~/Desktop/Assignment/File1.txt
echo "Data in 'Table.sh' copied to 'File1.txt' using cat command"


# Appending given text to File1
echo -e "\nWelcome to Sigmoid" >> ~/Desktop/Assignment/File1.txt

echo "Folders in the Desktop: "
# Printing files and folders in Desktop
ls -la ~/Desktop/

exit 0