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
