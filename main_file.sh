#!/bin/bash

menu_display(){
#### Aniket will work on add() 
        add(){
                ##add 2,3,4... number 
                ##add any no of string string ie (user enter two string hi and hello then ouput will "hi hello"
                read -p "Enter first input: "
		input1

		read -p "Enter second input: "
		input2

		if [[ $input =~ ^[0-9]+$ ]] && [[ $input2 =~ ^[0-9]+$ ]]; then
			sum=$((input1 + input2))
			echo "sum of integers: $sum"

		else
			echo "concatenated sreing : $input1 $input2"

		fi


                

        }

        ## Arjun will work on subtract 
         subtract(){
                ## subtract 2,3,4 .. numbers 
                ## delete a,i,o,u from entered string
              
        }
        ## Farheen will work on multiply
         multiply(){
               ## multiply 2,3,4 .. numbers
               ##multipy entered string ex. if user enter sidd the output will sidd sidd
        }

        ##chetan will work find_len
         find_len(){
                ##find a string lenght without using command
                ## you can use for while loop
                
                }
                
		##Ritik will work find_num
       find_num(){
            ##find the numbers and count of number from given string
            ## e.g this is pune station and train no is 12345 
            ## e.g customer mobile number is 12345678
            ## output will print number 12345 and count =5
       
       }

 ### Shikha will work on 
	find_vowels(){
	
		## find the vowels and its count from perticular string you can ingore repeat vowels
    ## e.g this is pune station and train no is 12345 ## o/p will total vowel=3 vovels are= a i o
    ## e.g customer mobile number is 12345678
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
