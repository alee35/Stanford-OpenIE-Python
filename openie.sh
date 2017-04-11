for f in ./hansard/*.txt; do
	python main.py -f "$f" >> output.txt;
done

awk 'NR % 2 == 0' hansard_output.txt >> clean_hansard_output.txt;
