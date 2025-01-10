 echo -e '\nDonwloading Data...'

 # Download Data
 curl -o raw_data.csv https://raw.githubusercontent.com/Educative-Content/Transferring-Data-with-ETL/main/raw_data/raw_data.csv

 # Check if file exists and print message
 if [ -s raw_data.csv ]
 then
    echo "Done."
 else
    echo "Something Went Wrong."
 fi
