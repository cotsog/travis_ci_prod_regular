body='{
"request": {
  "branch":"master"
}}'

curl -s -X POST \
  -H "Content-Type: application/json" \
  -H "Accept: application/json" \
  -H "Travis-API-Version: 3" \
  -H "Authorization: token super-secret" \
  -d "$body" \
  https://api.travis-ci.org/repo/cotsog%2Ftravis_ci_prod_regular/requests
