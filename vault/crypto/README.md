# Crypto Keys Setup

Requires step-cli from smallstep

## Create JWK
`step crypto jwk create jwk.pub.json jwk.json --password-file=password.txt`

## Create JWT
`step crypto jwt sign --key jwk.json --iss "fake@docker-compose" --aud "http://vault:8200" --sub auth --exp $(date -v+10y +"%s") --password-file=password.txt > ../../serviceaccount/token`

## Verify JWT
`step crypto jwt verify --key jwk.pub.json --iss "fake@docker-compose" -aud "http://vault:8200" < ../../serviceaccount/token`

## Convert JWK to PEM
`step crypto key format jwk.pub.json --pem > ../../serviceaccount/ca.crt`