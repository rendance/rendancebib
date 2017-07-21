.PHONY: check

# debian package libxml2-utils
XMLL := $(shell command -v xmllint 2> /dev/null)

# debian package libxerces-c-samples
SAXC := $(shell command -v SAXCount 2> /dev/null)

check:
ifdef XMLL
	xmllint --noout rbib.xml --schema rbib.xsd
else
	@echo "xmllint not installed"
endif
ifdef SAXC
	SAXCount -v=always -n -s -f rbib.xml
else
	@echo "SAXCount not installed"
endif
