source .env
BUY_YEAR_RAW=$(curl -s -L $MB_DATA_API | jq -r .price)
BUY_YEAR=$( printf "%.0f" $BUY_YEAR_RAW )
DAYS_PASSED=$((10#$(date +%j)))
EXPECT_BUY=$((BUY_YEAR / YEAR_TO_DAY))
echo "$((DAYS_PASSED*EXPECT_BUY))"
