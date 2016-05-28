default: all

.PHONY: test gen-hrl gen-txt

REPORT = perl -X -I../scripts/plugins ../scripts/report.pl --include=../base/cwmp --loglevel=error --nowarnbibref

BASELINE = ../base/cwmp/tr-181-2-4.xml  ../base/cwmp/tr-098-1-6.xml  ../base/cwmp/tr-196-2-0.xml

X-VENDOR = x-small-cell181.xml x-small-cell098.xml x-small-cell196.xml
X-VENDOR-DOC = $(patsubst %.xml,%.html,$(X-VENDOR))

TARGETS = x-dummy-small-cell-dt.xml
TARGETS-DOC = $(patsubst %.xml,%.html,$(TARGETS))
TARGETS-HRL = $(patsubst %.xml,%.hrl,$(TARGETS))
TARGETS-TXT = $(patsubst %.xml,%.txt,$(TARGETS))


all: $(TARGETS)

doc: $(X-VENDOR-DOC) $(TARGETS-DOC)

DUMMY-PROFILE = --dtspec="urn:small-cell-org:dummy-1-0-0" \
		--dtprofile=Baseline:1			\
		--dtprofile=Baseline:3			\
		--dtprofile=FAP_GPS:1 			\
		--dtprofile=FAP_Tunnel:1 		\
		--dtprofile=LTEBaseline:1 		\
	        --dtprofile=LTECellConfigEPC:1  	\
                --dtprofile=LTECellConfigRANPHY:1 	\
                --dtprofile=LTECellConfigRANMACRLC:1 	\
                --dtprofile=LTECellConfigRANRRC:1 	\
                --dtprofile=LTECellConfigRANMobilityIdleModeCommon:1 \
                --dtprofile=LTECellConfigRANNLLTECell:1

x-dummy-small-cell-dt.xml: x-dummy-small-cell.xml
	$(REPORT) $(DUMMY-PROFILE) --report=xml --outfile=$@ $^

gen-hrl: $(TARGETS-HRL)
	cp $(TARGETS-HRL) ../include

gen-txt: $(TARGETS-TXT)

test:
	$(REPORT) -report=text x-dummy-small-cell-dt.xml

clean:
	$(RM) $(TARGETS) $(TARGETS-DOC) $(X-VENDOR-DOC)  $(TARGETS-HRL)  $(TARGETS-TXT)

REPORTSPECS_EXTRA = xml:.hrl:--plugin=hrl_--report=hrl

include ../report.mk
