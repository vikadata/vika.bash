
check_token

url="${VIKA_HOST}/datasheets/${args[datasheetId]}/records?viewId=${ars[viewId]}&fieldKey=name"
if [[ ${DEBUG_MODE} ]]; then
  echo "url: ${url}"
  echo "api token: ${api_token}"
fi;

curl -s $url \
  -H "Authorization: Bearer ${api_token}"
