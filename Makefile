.PHONY: clean tags

CFLAGS = -g -Wall -Werror

all: shrub

shrub: linenoise.c shrub.c
	$(CC) $(CFLAGS) linenoise.c shrub.c -o shrub

clean:
	@ rm -f *~ TAGS cscope.files cscope.out shrub
	@ rm -rf cmake-build-debug shrub.dSYM
	@ printf "Directory is clean\n"

tags: 
	@ rm -f cscope.out
	@ find . -type f -name '*.c' -o -name '*.h' > cscope.files
	@ cscope -b
	@ ctags -e -L cscope.files
