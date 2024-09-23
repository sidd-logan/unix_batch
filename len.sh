#!/bin/bash


find_len() {
  read str
  local len=0

  # Process each character in the string
  while [ -n "$str" ]; do
    str="${str#?}"  # Remove the first character from the string
    len=$((len + 1))  # Increment the length counter
  done

  echo "The length of  string is  $len"  # Output the length
}

# Example usage
#input_string="example"
#find_len "$input_string"

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

