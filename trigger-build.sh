body='{
"request": {
  "branch":"master"
}}'

curl -s -X POST \
  -H "Content-Type: application/json" \
  -H "Accept: application/json" \
  -H "Travis-API-Version: 3" \
  -H "Authorization: token 8WxtFuNRSpPE2snD0F3_Zg" \
  -d "$body" \
  https://api.travis-ci.org/repo/cotsog%2Ftravis_ci_prod_regular/requests