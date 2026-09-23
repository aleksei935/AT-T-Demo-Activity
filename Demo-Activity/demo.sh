#!/usr/bin/env bash
set -euo pipefail

BASE="https://wp.sfdcdigital.com/en-us/wp-content/uploads/sites/4"
OUT="assets"
mkdir -p "$OUT"

FILES=(
  "2024/09/icon-agentforce.svg"
  "2024/06/icon-data-cloud.svg"
  "2024/06/icon-platform.svg"
  "2024/06/icon-sales.svg"
  "2025/10/sales-revenue-icon.svg"
  "2024/06/icon-service.svg"
  "2025/04/field-service-icon.svg"
  "2024/06/icon-marketing.svg"
  "2024/06/icon-commerce.svg"
  "2024/06/icon-tableau.svg"
  "2024/06/icon-mulesoft.svg"
  "2024/06/icon-slack.svg"
  "2024/06/icon-net-zero.svg"
  "2024/06/icon-small-business.svg"
  "2024/06/icon-partner-apps.svg"
  "2024/06/icon-cust-success.svg"
  "2024/06/icon-heroku.svg"
)

for f in "${FILES[@]}"; do
  curl -fsSL "$BASE/$f" -o "$OUT/$(basename "$f")"
  echo "saved $OUT/$(basename "$f")"
done

curl -fsSL "https://www.salesforce.com/news/wp-content/uploads/sites/3/2021/05/Salesforce-logo.jpg" -o "$OUT/Salesforce-logo.jpg"
echo "saved $OUT/Salesforce-logo.jpg"

echo
echo "Now open salesforce-b2c-journey.html and set: var ICON_SOURCE=\"local\";"
