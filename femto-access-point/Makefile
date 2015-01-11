
.PHONY: test

REPORT = perl ../scripts/report.pl --include=../base/cwmp --loglevel=error --nowarnbibref
X-VENDOR = x-small-cell181.xml x-small-cell098.xml x-small-cell196.xml 
X-VENDOR-DOC = $(patsubst %.xml,%.html,$(X-VENDOR))
TARGETS = x-dummy-small-cell-dt.xml x-dummy-small-cell-dt.html

all: $(TARGETS) 

doc: $(X-VENDOR-DOC)

DUMMY-PROFILE = --dtspec="urn:small-cell-org:dummy-1-0-0" \
		--dtprofile=Baseline:2 \
		--dtprofile=FAP_GPS:1 \
		--dtprofile=IPInterface:2 \
		--dtprofile=Hosts:2  \
		--dtprofile=LTEBaseline:1 \
                --dtprofile=LTECellConfigEPC:1 \
                --dtprofile=LTECellConfigRANPHY:1 \
                --dtprofile=LTECellConfigRANMACRLC:1 \
                --dtprofile=LTECellConfigRANRRC:1 \
                --dtprofile=LTECellConfigRANMobilityIdleModeCommon:1 \
                --dtprofile=LTECellConfigRANNLLTECell:1 

x-dummy-small-cell-dt.xml: $(X-VENDOR)
	$(REPORT) $(DUMMY-PROFILE) --report=xml --outfile=$@ $^

test:
	@echo "Do nothing usefull"
	$(REPORT) --report=text x-cata181.xml

# %.html: %.xml
# 	@echo 'Generate DOC $(REPORT_HTML) $<'
# 	$(REPORT) --report=html --outfile=$@ $<


# %.txt: %.xml
# 	@echo 'Generate DOC $(REPORT_HTML) $<'
# 	$(REPORT) --report=text --outfile=$@ $<

clean:
	$(RM) $(TARGETS) $(X-VENDOR-DOC)

include ../scripts/report.mk
