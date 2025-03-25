source .env
BUY_YEAR_RAW=$(curl -s -L $MB_DATA_API | jq -r .price)
BUY_YEAR=$( printf "%.0f" $BUY_YEAR_RAW )
echo "$((BUY_YEAR / YEAR_TO_DAY))"
