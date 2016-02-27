SUBDIRS=000.trackdisk 001.simple_image 002.sprite_display 003.music

.PHONY: subdirs $(SUBDIRS)

all: subdirs

clean:
	for dir in $(SUBDIRS); do \
		echo Cleaning $$dir; \
		make -C $$dir clean; \
	done

subdirs: $(SUBDIRS)

$(SUBDIRS):
	@echo ""
	make -C $@


