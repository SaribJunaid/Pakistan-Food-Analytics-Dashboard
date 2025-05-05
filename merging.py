import pandas as pd

# List of CSV file names to merge
file_names = ['Islamabad_restaurants.csv', 'karachi_restaurants.csv', 'Lahore_restaurants.csv','Peshawar_restaurants.csv','Quetta_restaurants.csv']

# Create an empty DataFrame to store merged data
merged_data = pd.DataFrame()

# Merge CSV files
for filename in file_names:
    df = pd.read_csv(filename)
    merged_data = pd.concat([merged_data, df], ignore_index=True)

# Save the merged DataFrame to a new CSV file
merged_data.to_csv('merged_data_pandas.csv', index=False)