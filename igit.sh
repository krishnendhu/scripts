set +x

echo "#####################" 
echo "Changes between dates" 
echo "#####################" 

while read -r line
do
  name=$line
  location=`echo $name | awk -F: '{print $1}'| cut -f 2 -d  "'"`
  remote_location=`echo $name | awk -F"," '{print $1}' | awk -F" " '{print $2}'|cut -f 2 -d  "'" `
  if [ -d "$location" ]; then
  pushd $location > /dev/null 2>&1
  echo " +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ " 
  echo " $location - $remote_location " 
  echo " +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ " 
  git --no-pager log --pretty="%ad %h %s [%an]" --date=short --graph --since "Nov 8 2014" --until "Nov 13 2014" 
  popd > /dev/null 2>&1
  echo "  " 
  fi 
done < DEPS.git  
