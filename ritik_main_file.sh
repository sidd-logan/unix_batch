#!/bin/bash

menu_display(){
		##Ritik will work find_num
       find_num(){
            ##find the numbers and count of number from given string
            ## e.g this is pune station and train no is 12345 
            ## e.g customer mobile number is 12345678
            ## output will print number 12345 and count

	   
            echo "Please enter a string containing numbers:"
            read input_string

            numbers=$(echo "$input_string" | grep -o '[0-9]\+')

            number_array=($numbers)


            for number in "${number_array[@]}"; do
            	count=${#number}
            	echo "Number: $number, Count = $count"
            done
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
