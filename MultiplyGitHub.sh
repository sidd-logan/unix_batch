#!/usr/bin/bash
# Function to multiply numbers
multiply_numbers() {
	    local result=1
	        for num in "$@"; do
			        result=$((result * num))
				    done
				        echo "Product of numbers: $result"
				}

			# Function to repeat a string
			repeat_string() {
				    local str="$1"
				        local count="$2"
					    local result=""
					        for ((i = 1; i <= count; i++)); do
							        result+="$str "
								    done
								        echo "Repeated string: $result"
								}

							# Main script
							if [ "$#" -lt 2 ]; then
								    echo "Usage: $0 number1 [number2 ...] string"
								        exit 1
							fi

							# Extract numbers and string
							numbers=()
							while [[ $1 =~ ^[0-9]+$ ]]; do
								    numbers+=("$1")
								        shift
								done

								if [ "$#" -lt 1 ]; then
									    echo "Usage: $0 number1 [number2 ...] string"
									        exit 1
								fi

								string="$1"

								# Calculate the product of the numbers
								multiply_numbers "${numbers[@]}"

								# If the product is 2, repeat the string 2 times
								product=$((1))
								for num in "${numbers[@]}"; do
									    product=$((product * num))
								    done

								    if [ "$product" -eq 2 ]; then
									        repeat_string "$string" 2
								    fi
