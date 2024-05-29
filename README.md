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
                    echo "Ошибка: Деление на ноль невозможно."
                    exit 1
                else
                    result=$(echo "scale=2; $1 / $2" | bc)
                fi
                ;;
            *)
                echo "Недопустимая операция. Используйте +, -, * или /."
                exit 1
                ;;
        esac
        echo "Результат: $result"
    }
    
    echo "Введите первое число:"
    read num1
    
    echo "Введите второе число:"
    read num2
    
    echo "Введите операцию (+, -, *, /):"
    read operation
    
    perform_operation "$num1" "$num2" "$operation"

    ```
    
## Установка
1. Clone the repository using the command:
```bash
git clone https://github.com/shokorev25/radius.git
```
4. Download and save the script to a file, for example, `arithmetic.sh`.
3. Make the file executable with the command:
    ```bash
    chmod +x arithmetic.sh
    ```

## Использование

Run the script with the command:
```bash
./arithmetic.sh
