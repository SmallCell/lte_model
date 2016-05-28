default: all

PYTHONPATH:=$(shell /bin/pwd):$(PYTHONPATH)

all: femto-access-point/all lte-packet-core/all

test: all \
      femto-access-point/test

doc: femto-access-point/doc lte-packet-core/doc

clean: femto-access-point/clean lte-packet-core/clean

gen-hrl: lte-packet-core/gen-hrl

# Subdir rules
%/all:; $(MAKE) -C $* all
%/doc:; $(MAKE) -C $* doc
%/test:; $(MAKE) -C $* test
%/gen-hrl:; $(MAKE) -C $* gen-hrl
%/clean:; $(MAKE) -C $* clean

# BBF scripts update
get-deps: base/cwmp.zip scripts/report.pl report.mk

base/cwmp.zip:
	-@mkdir -p base
	cd base; wget http://www.broadband-forum.org/cwmp.zip; unzip cwmp.zip

scripts/report.pl:
	wget https://tr69xmltool.iol.unh.edu/repos/cwmp-xml-tools/Report_Tool/report.pl -O $@
	chmod +x $@

report.mk:
	wget https://tr69xmltool.iol.unh.edu/repos/cwmp-xml-tools/Report_Tool/report.mk -O $@
