ARR=($(ls *tgz))

for pack in ${ARR[@]};do

    name=${pack%.tgz}
    mkdir -p $name
    cd $name
    tar -xf ../$pack
    ./runcmsgrid.sh 1 1 1 &> log.txt
    cd -

done
