import sys
import csv

reader = csv.DictReader(sys.stdin)
writer = csv.DictWriter(sys.stdout, reader.fieldnames)
writer.writeheader()

for row in reader:
    row['RTD Sales'] = int(row['RTD Sales'].replace(',', ''))
    row['YTD Sales'] = int(row['YTD Sales'].replace(',', ''))
    writer.writerow(row)
