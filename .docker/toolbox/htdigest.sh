#!/bin/sh

sedi()
{
    sed --version >/dev/null 2>&1 && sed -i -- "$@" || sed -i "" "$@";
}

rm -f /openssl/.htdigest;
printf "%s:%s:%s" "$TRAEFIK_USER" "traefik" $(printf "$TRAEFIK_USER:traefik:$TRAEFIK_PASSWORD" | openssl dgst -md5) > /openssl/auth/.htdigest;

sedi "s/(stdin)=//g" /openssl/auth/.htdigest;
sedi "s/:://g" /openssl/auth/.htdigest;

exit 0;