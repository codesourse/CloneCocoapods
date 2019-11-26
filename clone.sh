 
path="/Users/your computer user/.cocoapods/repos/master/Specs/"

ls $path | while read line
do
path1=$path$line

 
ls  -r $path1 | while read line1
do
    path2=$path1"/"$line1
    
    ls    $path2 | while read line2
    do
    line3=$path2"/"$line2

    git_url=$(cat $line3 |jq -r '.source.git')
    strB="http"
    if [[ $git_url =~ $strB ]]
    then
    echo $git_url
    #git clone $git_url
    else
    echo $line3
    giturl=$(pod ipc spec $line3 |jq -r '.source.git')
    echo $giturl
    git clone $giturl
    fi
    done
    break
    
done

done
