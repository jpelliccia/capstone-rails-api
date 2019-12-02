# Ex: TOKEN=tokengoeshere ID=idgoeshere TEXT=textgoeshere sh curl-scripts/examples/update.sh

curl "http://localhost:4741/exercises/${ID}" \
  --include \
  --request PATCH \
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
