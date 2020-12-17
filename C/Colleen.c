/*
    This is the first comment.
*/

#include <stdio.h>

void quine()
{
    char* string ="/*%c    This is the first comment.%c*/%c%c#include <stdio.h>%c%cvoid quine()%c{%c    char* string =%c%s%c;%c%c    printf(string, 10, 10, 10, 10, 10, 10, 10, 10, 34, string, 34, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10);%c}%c%cint main()%c{%c    /*%c        This is the second comment.%c    */%c%c    quine();%c}%c";

    printf(string, 10, 10, 10, 10, 10, 10, 10, 10, 34, string, 34, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10);
}

int main()
{
    /*
        This is the second comment.
    */

    quine();
}
