#!/bin/sh
source "./test.env"
# Проверяем, что передан аргумент
if [ $# -eq 0 ]; then
  echo "Usage: $0 <variable_name>"
  exit 1
fi

# Используем первый аргумент как имя переменной
variable_name=$1

# Получаем значение переменной
variable_value="${!variable_name}"

# Выводим значение переменной
echo "Значение переменной $variable_name: $variable_value"
