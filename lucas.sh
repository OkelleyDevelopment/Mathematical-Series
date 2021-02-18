#!/bin/bash

echo "Enter n: "
read n

echo "Enter a: "
read a

echo "Enter b: "
read b


function lucas {
    if [$1 = 0]; then
        return 2;
    elif [$1 = 1]; then
        return 1;
    fi

    echo "$1"

    n_minus_one=$(expr $1 - 1)
    n_minus_two=$(expr $2 - 2)
    result = $(expr $1 \* lucas n_minus_one $2 $3 + $3 \* lucas n_minus_two $2 $3)
    echo sum is $result
    return result
}

lucas $n $a $b
