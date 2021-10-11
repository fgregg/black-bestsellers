import sys
import csv

reader = csv.reader(sys.stdin)
writer = csv.writer(sys.stdout)

for row in reader:
    row = [col.strip() for col in row]
    writer.writerow(row)
