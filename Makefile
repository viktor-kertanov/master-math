jp:
	jupyter notebook

vpype_a5:
	vpype read input.svg rotate -- -1 trim 0.3in 0.3in penwidth 0.05mm layout -m 1cm -l -h center -v center 8.3x5.8in write output.svg

vpype_a4:
	vpype read input.svg scaleto 5.8in 5.8in trim 0.4in 0.4in penwidth 0.5mm layout -m 1cm -l -h center -v center a4 write output.svg

vpype_opt:
	vpype read input.svg splitall linemerge --tolerance 0.5mm write output_optimised.svg

dedup:
	vpype read input.svg deduplicate -t 0.1mm write dedup_output.svg
	vpype read dedup_output.svg linemerge -t 0.1mm linesort layout --landscape a5 write dedup_full_output.svg
