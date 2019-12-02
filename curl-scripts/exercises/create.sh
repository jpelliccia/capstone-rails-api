#!/bin/bash

curl "http://localhost:4741/exercises" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "exercise": {
      "name": "'"${NAME}"'",
      "reps": "'"${REPS}"'",
      "sets": "'"${SETS}"'",
      "weight": "'"${WEIGHT}"'",
      "date": "'"${DATE}"'",
      "user_id": "'"${USER}"'"
    }
  }'

echo
