# Vault Kubernetes Example

## Summary

This is a docker-compose stack that contains:
- a vault in dev mode
- a vault agent that connects to the vault using kubernetes auth
- an ansible runner to configure the vault

## Run

Run the docker-compose stack using `docker-compose up`

## Service Account Token

To simulate the service account token mounted in `/var/run/secrets/kubernetes.io/serviceaccount/token`
we manually create the token using the step cli command unsing a JWK created for the demo (see the `crypto` 
folder).

The token and certificates are then mounted in the containers at the same path they would appear
in kubernetes.