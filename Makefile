jp:
	jupyter notebook

vpype_a5:
	vpype read input.svg layout --landscape a5 write output.svg

vpype_opt:
	vpype read input.svg splitall linemerge --tolerance 0.5mm write output_optimised.svg

dedup:
	vpype read input.svg deduplicate -t 0.1mm write dedup_output.svg
	vpype read dedup_output.svg linemerge -t 0.1mm linesort layout --landscape a5 write dedup_full_output.svg
