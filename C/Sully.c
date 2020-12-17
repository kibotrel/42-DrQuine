#include <stdlib.h>
#include <unistd.h>
#include <stdio.h>

int main()
{
    int i = 5;

    if (i > 0)
    {
        FILE *fp;
        char filename[16];
        char command[64];
        char *string = "#include <stdlib.h>%c#include <unistd.h>%c#include <stdio.h>%c%cint main()%c{%c    int i = %d;%c%c    if (i > 0)%c    {%c        FILE *fp;%c        char filename[16];%c        char command[64];%c        char *string = %c%s%c;%c%c        sprintf(filename, %cSully_%cd.c%c, i);%c        if (access(filename, F_OK) != -1)%c        {%c            i--;%c            sprintf(filename, %cSully_%cd.c%c, i);%c        }%c        sprintf(filename, %cSully_%cd.c%c, i);%c        fp = fopen(filename, %cw%c);%c        fprintf(fp, string, 10, 10, 10, 10, 10, 10, i, 10, 10, 10, 10, 10, 10, 10, 34, string, 34, 10, 10, 34, 37, 34, 10, 10, 10, 10, 34, 37, 34, 10, 10, 34, 37, 34, 10, 34, 34, 10, 10, 10, 34, 37, 37, 37, 34, 10, 10, 10, 10);%c        fclose(fp);%c        sprintf(command, %cgcc %cs -o Sully_%cd && ./Sully_%cd%c, filename, i, i);%c        system(command);%c    }%c}%c";

        sprintf(filename, "Sully_%d.c", i);
        if (access(filename, F_OK) != -1)
        {
            i--;
            sprintf(filename, "Sully_%d.c", i);
        }
        sprintf(filename, "Sully_%d.c", i);
        fp = fopen(filename, "w");
        fprintf(fp, string, 10, 10, 10, 10, 10, 10, i, 10, 10, 10, 10, 10, 10, 10, 34, string, 34, 10, 10, 34, 37, 34, 10, 10, 10, 10, 34, 37, 34, 10, 10, 34, 37, 34, 10, 34, 34, 10, 10, 10, 34, 37, 37, 37, 34, 10, 10, 10, 10);
        fclose(fp);
        sprintf(command, "gcc %s -o Sully_%d && ./Sully_%d", filename, i, i);
        system(command);
    }
}
