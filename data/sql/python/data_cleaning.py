import pandas as pd

# Load data
df = pd.read_csv('shipments.csv')

# Drop missing values
df = df.dropna()

# Convert date columns
df['shipment_date'] = pd.to_datetime(df['shipment_date'])
df['delivery_date'] = pd.to_datetime(df['delivery_date'])

# Create delivery_days column
df['delivery_days'] = (df['delivery_date'] - df['shipment_date']).dt.days

# Flag late deliveries
df['is_late'] = df['delivery_status'].apply(lambda x: 1 if x == 'Late' else 0)

print(df.head())
