#include <stdio.h>
#include <stdlib.h>

#include "linenoise.h"

int main()
{
	char *line;
	
	while ((line = linenoise("shrub> ")) != NULL) {
		printf("You wrote: %s\n", line);
		linenoiseFree(line); /* Or just free(line) if you use libc malloc. */
	}
}
