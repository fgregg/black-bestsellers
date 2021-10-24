.PHONY : datasette
datasette : bbs.db
	datasette $< --metadata metadata.yaml --plugins-dir=datasette_bbs/ --template-dir=templates/ --setting default_facet_size 5 --setting default_page_size 25

bbs.db : bbs.csv
	- rm $@
	csvs-to-sqlite $^ $@  -pk ISBN -i Title -i Author -i Publisher -i Imprint -d "Publication Date" -f Author -f Title -f Publisher -f Imprint

bbs.csv : raw/BBS_Sep_27_2021.xlsx\ -\ Black\ Best-Sellers.csv
	tail -n +8 "$<" | \
            python scripts/strip_whitespace.py | \
            python scripts/to_number.py > $@
