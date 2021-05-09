
//AUTHOR: STEPHEN MARKS

#include <stdio.h>
#include <stdlib.h>

extern int polySolve(int w, int x, int y, int z);
extern int main(int argc, char **argv) {
	int w = atoi(argv[1]);
	int x = atoi(argv[2]);
	int y = atoi(argv[3]);
	int z = atoi(argv[5]);
	printf("%d\n", polySolve(int w, int x, int y, int z));
	return 0;
}
