default: all

.PHONY: test

REPORT = perl ../scripts/report.pl --include=../base/cwmp --loglevel=error --nowarnbibref
BASELINE = ../base/cwmp/tr-181-2-4.xml  ../base/cwmp/tr-098-1-6.xml  ../base/cwmp/tr-196-2-0.xml
X-VENDOR = x-small-cell181.xml x-small-cell098.xml x-small-cell196.xml
X-VENDOR-DOC = 

TARGETS = x-small-cell-mme-1.0-dt.xml 	\
	x-small-cell-sgw-1.0-dt.xml	\
	x-small-cell-pgw-1.0-dt.xml 	\
	x-small-cell-hss-1.0-dt.xml	\
	x-small-cell-enb-1.0-dt.xml 	\
	x-small-cell-ue-1.0-dt.xml 	

TARGETS-DOC = $(patsubst %.xml,%.html,$(TARGETS))


all: $(TARGETS) 

doc: $(X-VENDOR-DOC) $(TARGETS-DOC)

DUMMY-PROFILE = --dtspec="urn:small-cell-org:dummy-1-0-0" \
		--dtprofile=Baseline:3 			\
		--dtprofile=FAP_GPS:1 			\
		--dtprofile=FAP_Tunnel:1 		\
		--dtprofile=Baseline:1 			\
		--dtprofile=LTEBaseline:1 		\
	        --dtprofile=LTECellConfigEPC:1  	\
                --dtprofile=LTECellConfigRANPHY:1 	\
                --dtprofile=LTECellConfigRANMACRLC:1 	\
                --dtprofile=LTECellConfigRANRRC:1 	\
                --dtprofile=LTECellConfigRANMobilityIdleModeCommon:1 \
                --dtprofile=LTECellConfigRANNLLTECell:1 

x-dummy-small-cell-dt.xml: x-dummy-small-cell.xml
	$(REPORT) $(DUMMY-PROFILE) --report=xml --outfile=$@ $^

test:
	@echo "Do nothing usefull"
	# $(REPORT) -report=text x-small-cell-mme-1.0.xml
	# $(REPORT) -report=text x-small-cell-sgw-1.0.xml
	# $(REPORT) -report=text x-small-cell-pgw-1.0.xml
	# $(REPORT) -report=text x-small-cell-hss-1.0.xml
	# $(REPORT) -report=text x-small-cell-ue-1-0.xml
	$(REPORT) -report=text x-small-cell-enb-1.0.xml
	# $(REPORT) -report=text ../base/cwmp/tr-196-2-0-1.xml

clean:
	$(RM) $(TARGETS) $(X-VENDOR-DOC)

include ../scripts/report.mk
