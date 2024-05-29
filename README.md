# Arithmetic

This Bash script performs basic arithmetic operations (addition, subtraction, multiplication, division) on two numbers entered by the user.

## Script

    ```bash
    #!/bin/bash

    perform_operation() {
        case "$3" in
            "+")
                result=$(echo "$1 + $2" | bc)
                ;;
            "-")
                result=$(echo "$1 - $2" | bc)
                ;;
            "*")
                result=$(echo "$1 * $2" | bc)
                ;;
            "/")
                if [ "$2" -eq 0 ]; then
                    echo "Division by zero is impossible."
                    exit 1
                else
                    result=$(echo "scale=2; $1 / $2" | bc)
                fi
                ;;
            *)
                echo "Invalid operation. Use +, -, * or /."
                exit 1
                ;;
        esac
        echo "Результат: $result"
    }
    
    echo "Enter first number:"
    read num1
    
    echo "Enter second number:"
    read num2
    
    echo "Enter the operation (+, -, *, /):"
    read operation
    
    perform_operation "$num1" "$num2" "$operation"

    ```
    
## Installation
1. Clone the repository using the command:
```bash
git clone https://github.com/shokorev25/radius.git
```
2. Or download and save the script to a file `arithmetic.sh`.
3. Make the file executable with the command:
    ```bash
    chmod +x arithmetic.sh
    ```

## Usage

Run the script with the command:
```bash
./arithmetic.sh
```

## License
This project is licensed under the MIT license - see the LICENSE file for details.

## The author of the project

[shokorev25]([https://github.com/shokorev25 ])
