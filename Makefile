.PHONY: pb download

pb:
	@rm -rf pb && mkdir pb
	buf generate -v
	@./pb_gen_extra.sh

download:
	@cd include && ./download.sh
