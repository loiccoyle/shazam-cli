.PHONY:readme
readme:
	@awk -i inplace -v q="\`\`\`" 'BEGIN {p=1} /^<!-- help start -->/{print;print "";print q;print "$$ shazam -h";system("./shazam -h");print q;print "";p=0} /^<!-- help end -->/{p=1} p' README.md
	@sed -i "s/\/home\/runner/~/" README.md
