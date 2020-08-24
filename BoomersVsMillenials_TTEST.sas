DATA BoomersvsMillenials;
INPUT Jobs Generation $;
DATALINES;
1506812  B
457468   B
1697604  B
462464   B
214879   B
222448   B
1225149  B
1413668  B
564740   B
3937939  B
946602   B
1531321  B
349133   B
966863   B
1505802  B
374103   B
584837   B
808370   B
2275446  B
827748   B
446730   B
124627   B
858635   B
4283180  M
1416322  M
1230220  M
788864   M
337045   M
1654558  M
2016673  M
4504482  M
1981010  M
328219   M
2157397  M
6389681  M
572994   M
615626   M
320408   M
2379228  M
2114982  M
1378460  M
593064   M
828819   M
2167981  M
1386529  M
1461670  M
;
/* Boomer = B, Millennial = M, Job = Employement #s per Job Category */

PROC PRINT;
RUN;

/* F-test for polled variance */
/* Null: pooled variance */
/* Alt: non-pooled variance */

/* two sample t-test */
/* Null: mean employment for Boomers = mean employment for Millennials */
/* Alt: mean employment for Boomers != mean employment for Millenials */

PROC TTEST;
	CLASS Generation;
	VAR Jobs;
RUN;

