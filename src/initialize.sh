## Code here runs inside the initialize() function
## Use it for anything that you need to run before any other function, like
## setting environment vairables:
## CONFIG_FILE=settings.ini
##
## Feel free to empty (but not delete) this file.
# if ! test -f "$TOKEN_FILE"; then

# DEFAULT_VIKA_HOST=https://api.vika.cn/fusion/v1

# if [ -z ${VIKA_HOST+x} ]; then
#     echo "\$VIKA_HOST is $VIKA_HOST"; 
# else
#     echo "\$VIKA_HOST is set to default '$DEFAULT_VIKA_HOST'"; 
#     export VIKA_HOST=$DEFAULT_VIKA_HOST
# fi



check_token() {
    TOKEN_FILE=~/.vika/api_token
    if ! test -f "$TOKEN_FILE"; then
        echo "Cannot find API Token, please 'vika login' first"
        exit 1
    fi

    export api_token=$(cat $TOKEN_FILE)
}