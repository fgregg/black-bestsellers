.PHONY : datasette
datasette : bbs.db
	datasette $< --metadata metadata.yaml --plugins-dir=datasette_bbs/ --template-dir=templates/

bbs.db : bbs.csv
	- rm $@
	csvs-to-sqlite $^ $@  -i Title -i Author -i Publisher -i Imprint -d "Publication Date" -f Author -f Title -f Publisher -f Imprint

bbs.csv : raw/BBS_Sep_27_2021.xlsx\ -\ Black\ Best-Sellers.csv
	tail -n +8 "$<" | \
            python scripts/strip_whitespace.py | \
            python scripts/to_number.py > $@
