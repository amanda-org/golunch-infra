#!/bin/bash

# Recupera o account_id da conta atual
ACCOUNT_ID=$(aws sts get-caller-identity --query Account --output text)

echo "Usando Account ID: $ACCOUNT_ID"

# Executa terraform init (se necessário)
terraform init

# Executa terraform apply passando a variável
terraform apply -var="account=$ACCOUNT_ID" -auto-approve