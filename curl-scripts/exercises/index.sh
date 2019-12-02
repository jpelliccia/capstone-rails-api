#!/bin/bash

curl "http://localhost:4741/exercises" \
  --include \
  --request GET \
  --header "Authorization: Token token=${TOKEN}"

echo
