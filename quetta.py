from selenium import webdriver
from selenium.webdriver.common.by import By
import time
import pandas as pd

# Start driver
driver = webdriver.Chrome()

# Target URL
driver.get("https://www.foodpanda.pk/restaurants/new?lng=66.9987077&lat=30.1834329&vertical=restaurants&query=sajji")
#input("Solve CAPTCHA manually (if shown), then press Enter to continue...")

time.sleep(5)  # Wait for page to load

# Empty list to store scraped data
restaurant_data = []

# Get all restaurant containers
containers = driver.find_elements(By.CLASS_NAME, "box-flex.vendor-tile-new-info")

# Loop through each container
for container in containers:
    try:
        name = container.find_element(By.CLASS_NAME, "vendor-name").text
    except:
        name = None

    try:
        rating = container.find_element(By.CLASS_NAME, "bds-c-rating__label-primary").text
    except:
        rating = None

    try:
        num_reviews = container.find_element(By.CLASS_NAME, "bds-c-rating__label-secondary").text.strip("()")
    except:
        num_reviews = None

    # Append data to the list
    restaurant_data.append({
        "city": "Quetta",  # Hardcode or use dynamically for other cities
        "restaurant_name": name,
        "rating": rating,
        "num_reviews": num_reviews
    })

# Convert to DataFrame and save
df = pd.DataFrame(restaurant_data)
df.to_csv("karachi_restaurants.csv", index=False)

print("Data saved to Quetta_restaurants.csv")

driver.close()
