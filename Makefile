bbs.csv : raw/BBS_Sep_21_2021.xlsx
	in2csv $< | tail -n +9 foo | python scripts/strip_whitespace.py > $@
