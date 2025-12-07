.PHONY: run-all

run-all:
	@find . -type d -name "day-*" -print0 | xargs -0 -I {} make -C {} run
