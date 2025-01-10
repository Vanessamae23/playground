echo "Transform the data"

# Replace empty space with comma
sed 's/ /,/g' raw_data.csv > temp.csv; mv temp.csv raw_data.csv

# Edit in place and delete the header row
sed -i '.bak' '1d' raw_data.csv

# Create temp if not exist. Append the data and new headers to temp.csv
> temp.csv 
echo "date,first_num,second_num,third_num,fourth_num,fifth_num,sixth_num,multiplier" >> temp.csv
cat raw_data.csv >> temp.csv

mv temp.csv raw_data.csv

echo "done."
