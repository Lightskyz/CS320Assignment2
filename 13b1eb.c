#include <stdio.h>
#include <stdlib.h>
#include <math.h>
int main(int argc, char ** argv)
{
	int x = atoi(argv[1]);
	printf("%.3f",cos(x*(M_PI/180)));
	return 0;
}
