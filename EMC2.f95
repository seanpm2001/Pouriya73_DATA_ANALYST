!--- START PROGRAM FORTRAN : EMC---
PROGRAM EMC

!---Build the required variables---
REAL,ALLOCATABLE,DIMENSION(:)::NUMBER_TOTAL					
CHARACTER(LEN=10),DIMENSION(5)::READINFOPLOT
INTEGER ::FF=0 ,MM ,FLAG4,FLAG5
INTEGER ::CONTER1=0,CONTER2=0,CR1=1,CR2=1
REAL(kind=3)::NUMBERBAND,NUMBERINFOBAND	
CHARACTER(LEN=129)::							CH1,CH2
REAL,ALLOCATABLE,DIMENSION(:)::					SIZE_PLUS,SIZE_MINEZ
REAL,ALLOCATABLE,DIMENSION(:)::					SIZE_LINE_PLUS,SIZE_LINE_MINEZ
REAL::											MAX_MINEZ,MIN_PLUS,R_MIN_PLUS,R_MAX_MINEZ
REAL::											R_NUMBER_TOTALS,KLS
REAL ::                                         MAX,MAX2
INTEGER ::                                      CONTER_TOTAL
INTEGER  ::                                     COLUMN_MINEZ_MAX,COLUMN_PLUS_MIN
INTEGER ::                                      START_PLUS_MIN, START_MINEZ_MAX
INTEGER ::                                      MMM
INTEGER ::                                      COOL
REAL,ALLOCATABLE,DIMENSION(:)::	                CHART_FINAL_PLUS
REAL,ALLOCATABLE,DIMENSION(:)::	                CHART_FINAL_MINEZ 
REAL,ALLOCATABLE,DIMENSION(:)::	                CHART_CHANGE_ENERGY 
!--- Select file path for processing. ---
!--- This is the output file of the device. ---
!--- The file format is .txt  ---
!--- This file contains millions of data. ---

Open(Unit=1,File="_SRC_",Action="Read",Status="Old")
