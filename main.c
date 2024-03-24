#include <stdio.h>
#include "test.h"

int sumFunc(int a, int b) {
	int c = 0;
	c = a + b;
	return c;
}

int testFunc(void) {
	
	printf("testFunc\n");

}

void main(void) {
	
	int sum = 0;
	int array[3] = {0,};

	sum = sumFunc(10, 3);
	test();
//	printf("sum: %d\n",sum);

	printf("git TEST\n");

	printf("Hello World\n");
}
