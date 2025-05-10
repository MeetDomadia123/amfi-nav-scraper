
URL="https://www.amfiindia.com/spages/NAVAll.txt"
OUTPUT_TSV="nav_data.tsv"


curl -s "$URL" | awk -F ';' '
BEGIN {
    OFS = "\t";
    print "Scheme Name", "Asset Value";
}
NF >= 5 && $1 ~ /^[0-9]+$/ {
    print $4, $5;
}' > "$OUTPUT_TSV"

echo "✅ Scheme Name and Asset Value saved to $OUTPUT_TSV"
