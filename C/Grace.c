#include <stdio.h>

#define OUTPUT "Grace_kid.c"
#define STRING "#include <stdio.h>%c%c#define OUTPUT %cGrace_kid.c%c%c#define STRING %c%s%c%c#define MAIN int main(){FILE *fp; fp = fopen(OUTPUT, %cw%c); fprintf(fp, STRING, 10,10,34,34,10,34,STRING,34,10,34,34,10,10,10,10,10,10,10); fclose(fp);}%c%c/*%c    This is a comment.%c*/%c%cMAIN%c"
#define MAIN int main(){FILE *fp; fp = fopen(OUTPUT, "w"); fprintf(fp, STRING, 10,10,34,34,10,34,STRING,34,10,34,34,10,10,10,10,10,10,10); fclose(fp);}

/*
    This is a comment.
*/

MAIN
