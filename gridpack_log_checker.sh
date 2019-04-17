ARR=($(ls -d */))

for dir in ${ARR[@]};do
    echo "@@"$dir"@@"
    cat $dir/log.txt | grep error
    
done
