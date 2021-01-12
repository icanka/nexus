cd ./packages/Packages || exit


function print_if_success {
	if [[ $? -eq 0 ]];then
		printf "%25s\n" "SUCCESS"
		return 0
	else
		return 1
	fi
}

curlCommand="curl -v -u admin:armerkom --upload-file "
for filename in *;
do
  curlCommand="curl -v -u admin:armerkom --upload-file ${filename} http://jenkins.local:8081/repository/test-yum/gamsys/${filename}"
  ${curlCommand}
  print_if_success
  if [[ $? -ne 0 ]];then
    exit
  fi
done