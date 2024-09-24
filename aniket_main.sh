#!/bin/bash

menu_display(){
#### Aniket will work on add() 
        add(){
                ##add 2,3,4... number 
                ##add any no of string string ie (user enter two string hi and hello then ouput will "hi hello"
                addition()
		{
			
                       if [[ $1 =~ ^-?[0-9]+$ && $2 =~ ^-?[0-9]+$ ]]; then
                       
                    echo $(($1 + $2))
    else
        
        echo "$1 $2"
    fi
     }
 
# Prompt user for input
read -p "Enter the first value: " first_value
read -p "Enter the second value: " second_value
 

result=$(addition "$first_value" "$second_value")
 

echo "Result: $result"
                     


                

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
