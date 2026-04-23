import pandas as pd

# Load data
df = pd.read_csv('shipments.csv')

# Drop missing values
df = df.dropna()

# Convert date column
df['shipment_date'] = pd.to_datetime(df['shipment_date'])

# Create delivery_days column
df['delivery_days'] = (pd.to_datetime(df['delivery_date']) - df['shipment_date']).dt.days

print(df.head())
