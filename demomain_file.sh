#!/bin/bash

menu_display(){


        ## Arjun will work on subtract 
         

	subtract(){


		## subtract 2,3,4 .. numbers
                ## delete a,e,i,o,u from entered string

		# Function to check if the input is all digits (numbers
                
		# Function to check if the input is all digits (numbers)
is_number() {
    [[ $1 =~ ^[0-9]+$ ]]
}

# Function to remove vowels from a string
remove_vowels() {
    local str=$1
    local no_vowels=""

    # Loop through each character in the string
    for ((i = 0; i < ${#str}; i++)); do
        char=${str:i:1}  # Extract each character
        # Append the character to the result if it's not a vowel
        if [[ "$char" != "a" && "$char" != "e" && "$char" != "i" && "$char" != "o" && "$char" != "u" && "$char" != "A" && "$char" != "E" && "$char" != "I" && "$char" != "O" && "$char" != "U" ]]; then
            no_vowels+=$char
        fi
    done

    echo "$no_vowels"
}

# Main logic
echo "Enter input (either numbers or a string):"
read -a input  # Read input as an array

# Check if the first element is a number (assuming all inputs are either all numbers or a string)
if is_number "${input[0]}"; then
    # Subtract numbers
    result=${input[0]}  # Initialize result with the first number

    for ((i = 1; i < ${#input[@]}; i++)); do
        result=$((result - input[i]))
    done

    echo "The result of the subtraction is: $result"
else
    # Remove vowels from the string
    full_string="${input[@]}"  # Combine all parts into a single string
    result_string=$(remove_vowels "$full_string")
    echo "The string without vowels is: $result_string"
fi


            
 }
	

        echo "Running Munu program"

	while true;
        do
        
        echo "1. Addition"
        echo "2. Subtraction"
        echo "3. Multiplication"
        echo "4. Find length"
        echo "5. Find numbers"
        echo "6. Find vowels"
        	      echo "7. Exit"
        echo "Enter your choice: [1-7]"

        read choice
        
	if [ $choice -eq 7 ]; then
		echo "Exiting......"
		exit 1
        fi

        case $choice in
        1) add;;
        2) subtract;;
        3) multiply;;
        4) find_len;;
	      5) find_num;;    
        6) find_vowels;;
        *) echo "Invalid option, Please Enter valid options";;
        esac
done
}
menu_display
