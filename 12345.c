#include <stdio.h>
#include <stdlib.h>
#include <math.h>

int main(int argc, char** argv)
{
	int x = atoi(argv[1]);
	printf("%2.f",sqrt(cos(x/10.0)));
}
