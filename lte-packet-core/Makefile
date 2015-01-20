default: all

.PHONY: test

REPORT = perl ../scripts/report.pl --include=../base/cwmp --loglevel=error --nowarnbibref
BASELINE = ../base/cwmp/tr-181-2-4.xml  ../base/cwmp/tr-098-1-6.xml  ../base/cwmp/tr-196-2-0.xml

TARGETS = x-small-cell-mme-1.0-dt.xml 	\
	x-small-cell-sgw-1.0-dt.xml	\
	x-small-cell-pgw-1.0-dt.xml 	\
	x-small-cell-hss-1.0-dt.xml	\
	x-small-cell-enb-1.0-dt.xml 	\
	x-small-cell-ue-1-0-dt.xml

TARGETS-DOC = $(patsubst %.xml,%.html,$(TARGETS))

all: $(TARGETS) 

doc: $(TARGETS-DOC)


test:
	@echo "Do nothing usefull"
	# $(REPORT) -report=text x-small-cell-mme-1.0.xml
	# $(REPORT) -report=text x-small-cell-sgw-1.0.xml
	# $(REPORT) -report=text x-small-cell-pgw-1.0.xml
	# $(REPORT) -report=text x-small-cell-hss-1.0.xml
	# $(REPORT) -report=text x-small-cell-ue-1-0.xml
	$(REPORT) -report=text x-small-cell-ue-1.0.xml

clean:
	$(RM) $(TARGETS) $(TARGETS-DOC)

include ../report.mk
