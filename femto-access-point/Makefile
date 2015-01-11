
.PHONY: test

REPORTFLAGS =
REPORT=perl ../scripts/report.pl --include=../base/cwmp --loglevel=error --nowarnbibref

all: 

test:
	@echo "Do nothing usefull"
	$(REPORT) --report=text x-cata181.xml

%.html: %.xml
	@echo 'Generate DOC $(REPORT_HTML) $<'
	$(REPORT) --report=html --outfile=$@ $<


%.txt: %.xml
	@echo 'Generate DOC $(REPORT_HTML) $<'
	$(REPORT) --report=text --outfile=$@ $<


