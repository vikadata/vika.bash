# vika login TOKEN


FILE=~/.vika/api_token
DIR=$(dirname $FILE)

mkdir -p $DIR

api_token=${args[token]}

echo $api_token > $FILE

echo "Login Success. Save the token to ${FILE}"
