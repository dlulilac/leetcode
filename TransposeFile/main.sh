#!/bin/bash
awk 'BEGIN{count=0;}  {for(i=1;i<=NF;i++) {mColumn[count]=$i;count++}}; END{for(i=0; i<NF; i++) {printf("%s",mColumn[i]);for(j=1;j<NR;j++) {printf(" %s",mColumn[j*NF+i]);}printf("\n");}}' file.txt