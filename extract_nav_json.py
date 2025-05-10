import requests #type:ignore
import json


url = "https://www.amfiindia.com/spages/NAVAll.txt"
response = requests.get(url)
lines = response.text.splitlines()

data = []
for line in lines:
    parts = line.split(";")
    if len(parts) >= 5 and parts[0].isdigit():
        data.append({
            "Scheme Name": parts[3].strip(),
            "Asset Value": parts[4].strip()
        })


with open("nav_data.json", "w") as f:
    json.dump(data, f, indent=2)

