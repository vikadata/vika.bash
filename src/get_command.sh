
check_token

# if [[ ${args[env]} ]]; then
#     # exists, do setter
#     VOP_ENVINRONMNET="${args[env]}"
#     echo $VOP_ENVINRONMNET > /tmp/VOP_ENVINRONMNET
#     echo "Success set the environment to '$VOP_ENVINRONMNET'"
# else

url="${VIKA_HOST}/datasheets/${args[datasheetId]}/records?viewId=${ars[viewId]}&fieldKey=name"
if [[ ${DEBUG_MODE} ]]; then
  echo "url: ${url}"
  echo "api token: ${api_token}"
fi;

curl -s $url \
  -H "Authorization: Bearer ${api_token}"