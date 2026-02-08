import pandas as pd

# Load raw data
df = pd.read_csv("data/imdb_movies_raw.csv")

print("Original shape:", df.shape)

# Basic cleaning
# Strip spaces from column names
df.columns = [c.strip() for c in df.columns]

# Convert Released_Year to numeric (some rows may have non-year values)
df["Released_Year"] = pd.to_numeric(df["Released_Year"], errors="coerce")

# Convert Runtime like "142 min" -> 142
df["Runtime"] = df["Runtime"].str.replace(" min", "", regex=False)
df["Runtime"] = pd.to_numeric(df["Runtime"], errors="coerce")

# Convert Meta_score to numeric
df["Meta_score"] = pd.to_numeric(df["Meta_score"], errors="coerce")

# Convert Gross to numeric (remove commas)
df["Gross"] = df["Gross"].str.replace(",", "", regex=False)
df["Gross"] = pd.to_numeric(df["Gross"], errors="coerce")

# Convert Votes to numeric
df["No_of_Votes"] = pd.to_numeric(df["No_of_Votes"], errors="coerce")

# Remove rows without title or rating (safety)
df = df.dropna(subset=["Series_Title", "IMDB_Rating"])

print("Cleaned shape:", df.shape)

# Save cleaned file
df.to_csv("data/imdb_movies_clean.csv", index=False)

print("Saved cleaned file to data/imdb_movies_clean.csv")
