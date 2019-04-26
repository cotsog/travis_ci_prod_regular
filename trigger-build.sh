body='{
  "request": {
    "message": "Override the commit message: this is an api request",
    "config": {
      "merge_mode": "deep_merge",
      "env": {
        "global": {
          "BAR": "baz"
        }
      },
      "script": "echo FOO"
    }
  }
}'

curl -s -v -X POST \
  -H "Content-Type: application/json" \
  -H "Accept: application/json" \
  -H "Travis-API-Version: 3" \
  -H "Authorization: token TTvrAGpvRzWQRMDeNEcfYQ" \
  -d "$body" \
  https://api.travis-ci.org/repo/cotsog%2Ftravis_ci_prod_regular/requests
