default: all

PYTHONPATH:=$(shell /bin/pwd):$(PYTHONPATH)

all: femto-access-point/all

get-deps: base/cwmp.zip scripts/report.pl scripts/report.mk
base/cwmp.zip:
	-@mkdir -p base
	cd base; wget http://www.broadband-forum.org/cwmp.zip; unzip cwmp.zip
scripts/report.pl:
	wget https://tr69xmltool.iol.unh.edu/repos/cwmp-xml-tools/Report_Tool/report.pl -O $@
	chmod +x $@
scripts/report.mk:
	wget https://tr69xmltool.iol.unh.edu/repos/cwmp-xml-tools/Report_Tool/report.mk -O $@

test: all \
      femto-access-point/test 

clean: femto-access-point/clean


# Subdir rules
%/all:; $(MAKE) -C $* all
%/test:; $(MAKE) -C $* test
%/clean:; $(MAKE) -C $* clean
