#include <stdio.h>
#define LIST_LEN 4

int main() {
  unsigned char list[LIST_LEN] = {10, 0, 2, 1};
  unsigned char largest = list[0];
  for (int i = 1; i < LIST_LEN; i++)
    if (list[i] > largest)
      largest = list[i];
  printf("%d", largest);
  return 0;
}