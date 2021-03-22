for filename in *.py;
do

  echo ${filename}

  #curlCommand="curl -v -u admin:armerkom --upload-file ${filename} http://nexus/repository/jenkins-plugins/${filename}"
  #${curlCommand}
  #print_if_success
  #if [[ $? -ne 0 ]];then
  #  exit
  #fi
done
