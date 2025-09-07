num=25

if [ $num -gt 10 ] && [ $num -lt 50 ]; then
    echo "Number is between 10 and 50"
fi

if [ $num -lt 10 ] || [ $num -gt 50 ]; then
    echo "Number is outside 10–50"
fi

if ! [ $num -eq 25 ]; then
    echo "Number is not 25"
fi
