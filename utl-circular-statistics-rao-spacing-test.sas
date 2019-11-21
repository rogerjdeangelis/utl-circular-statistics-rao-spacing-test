Circular statistics rao's spacing test                                                                        
                                                                                                              
 Problem                                                                                                      
   Are birth times uniformly ditributed over the 24 hour day                                                  
                                                                                                              
graphic                                                                                                       
https://tinyurl.com/t76t68y                                                                                   
https://github.com/rogerjdeangelis/utl-circular-statistics-rao-spacing-test/blob/master/circular.pdf          
                                                                                                              
github                                                                                                        
https://github.com/rogerjdeangelis/utl-circular-statistics-rao-spacing-test                                   
                                                                                                              
SAS-L                                                                                                         
https://listserv.uga.edu/cgi-bin/wa?A2=SAS-L;de7d7f5f.1911c                                                   
                                                                                                              
see                                                                                                           
http://jammalam.faculty.pstat.ucsb.edu/html/favorite/test.htm                                                 
                                                                                                              
R circstats package                                                                                           
https://cran.r-project.org/web/packages/CircStats/CircStats.pdf                                               
                                                                                                              
*_                   _                                                                                        
(_)_ __  _ __  _   _| |_                                                                                      
| | '_ \| '_ \| | | | __|                                                                                     
| | | | | |_) | |_| | |_                                                                                      
|_|_| |_| .__/ \__,_|\__|                                                                                     
        |_|                                                                                                   
;                                                                                                             
                                                                                                              
We convert time to arc lengths on a circle (column degrees)                                                   
Note one minute =360/1440 = 0.25 degrees (arc length)                                                         
                                                                                                              
options validvarname=upcase;                                                                                  
libname sd1 "d:/sd1";                                                                                         
data sd1.births ;                                                                                             
  format timeampm timeampm8.;                                                                                 
  informat timeampm time8.;                                                                                   
  input timeampm seq degrees;                                                                                 
cards4;                                                                                                       
12:20AM 01 5                                                                                                  
12:40AM 02 10                                                                                                 
12:40AM 03 10                                                                                                 
12:48AM 04 12                                                                                                 
1:08AM 04 17                                                                                                  
5:40AM 06 85                                                                                                  
6:00AM 07 90                                                                                                  
6:36AM 08 99                                                                                                  
6:40AM 09 100                                                                                                 
7:20AM 10 110                                                                                                 
10:12AM 11 153                                                                                                
3:32PM 12 233                                                                                                 
3:40PM 13 235                                                                                                 
7:44PM 14 296                                                                                                 
10:04PM 15 331                                                                                                
;;;;                                                                                                          
run;quit;                                                                                                     
                                                                                                              
options ls=64 ps=28;                                                                                          
proc chart data=sd1.births;                                                                                   
  vbar degrees;                                                                                               
run;quit;                                                                                                     
                                                                                                              
SD1.BIRTHS total obs=15   Only need                                                                           
                          This variable                                                                       
                          -------------                                                                       
Obs    TIMEAMPM    SEQ    DEGREES                                                                             
                                                                                                              
  1    12:20 AM      1        5                                                                               
  2    12:40 AM      2       10                                                                               
  3    12:40 AM      3       10                                                                               
  4    12:48 AM      4       12                                                                               
  5     1:08 AM      4       17                                                                               
  6     5:40 AM      6       85                                                                               
  7     6:00 AM      7       90                                                                               
  8     6:36 AM      8       99                                                                               
  9     6:40 AM      9      100                                                                               
 10     7:20 AM     10      110                                                                               
 11    10:12 AM     11      153                                                                               
 12     3:32 PM     12      233                                                                               
 13     3:40 PM     13      235                                                                               
 14     7:44 PM     14      296                                                                               
 15    10:04 PM     15      331                                                                               
                                                                                                              
                                                                                                              
6 +-------------------------------------------------------------+ 6                                           
  |                                                             |                                             
  |                                                             |                                             
  |                                                             |                                             
5 +      *****      *****                                       + 5                                           
  |      *****      *****                                       |                                             
  |      *****      *****      Bimodal Distribution is          |                                             
  |      *****      *****      an indication of lack of         |                                             
4 +      *****      *****      support for uniform soacing      + 4                                           
  |      *****      *****                                       |                                             
  |      *****      *****                                       |                                             
  |      *****      *****                                       |                                             
3 +      *****      *****                                       + 3                                           
  |      *****      *****                                       |                                             
  |      *****      *****                                       |                                             
  |      *****      *****                                       |                                             
2 +      *****      *****                 *****      *****      + 2                                           
  |      *****      *****                 *****      *****      |                                             
  |      *****      *****                 *****      *****      |                                             
  |      *****      *****                 *****      *****      |                                             
1 +      *****      *****      *****      *****      *****      + 1                                           
  |      *****      *****      *****      *****      *****      |                                             
  |      *****      *****      *****      *****      *****      |                                             
  |      *****      *****      *****      *****      *****      |                                             
  ---------------------------------------------------------------                                             
           0          80        160        240        320                                                     
                                                                                                              
*            _               _                                                                                
  ___  _   _| |_ _ __  _   _| |_                                                                              
 / _ \| | | | __| '_ \| | | | __|                                                                             
| (_) | |_| | |_| |_) | |_| | |_                                                                              
 \___/ \__,_|\__| .__/ \__,_|\__|                                                                             
                |_|                                                                                           
;                                                                                                             
                                                                                                              
                                                                                                              
       Rao's Spacing Test of Uniformity                                                                       
                                                                                                              
Test Statistic = 177                                                                                          
                                                                                                              
Level 0.1 critical value = 157.06                                                                             
                                                                                                              
Reject null hypothesis of uniformity   ** Due to bimodality?                                                  
                                                                                                              
                            _                                                                                 
                           (_)        _                                                                       
                 _   (_)       *     (_)                                                                      
                (_)   *************                                                                           
                  ****             ****                                                                       
               ***         90          ***                                                                    
             **                           **                                                                  
       _    **                               **                                                               
      (_) *                                   *                                                               
         *                                     *                                                              
       **                                       **                                                            
       *                                         *                                                            
      *                                           *   _  _                                                    
     **                                           ** (_)(_)                                                   
     *                                             * (_)(_)                                                   
     *                                             *                                                          
     *                                             *                                                          
     *                                             *                                                          
     * 180                 +                    0  *                                                          
     *                                             *                                                          
     *                                             *   _                                                      
     **                                           **  (_)                                                     
      *                                           *                                                           
       *                                         *                                                            
       **                                       **                                                            
        **                                     *                                                              
          *                                   *                                                               
           **                               **                                                                
       _      **                            **                                                                
      (_)       ***       270           .***                                                                  
          _         ****             ****                                                                     
         (_)         *************       _                                                                    
                           *            (_)                                                                   
                                                                                                              
*                                                                                                             
 _ __  _ __ ___   ___ ___  ___ ___                                                                            
| '_ \| '__/ _ \ / __/ _ \/ __/ __|                                                                           
| |_) | | | (_) | (_|  __/\__ \__ \                                                                           
| .__/|_|  \___/ \___\___||___/___/                                                                           
|_|                                                                                                           
;                                                                                                             
                                                                                                              
%utlfkil(d:/xpt/want.xpt);                                                                                    
%utlfkil(d:/pdf/circular.pdf);                                                                                
%utlfkil(d:/txt/want.txt);                                                                                    
                                                                                                              
%utl_submit_r64('                                                                                             
library(CircStats);                                                                                           
library(haven);                                                                                               
library(SASxport);                                                                                            
have<-read_sas("d:/sd1/births.sas7bdat");                                                                     
sink("d:/txt/want.txt");                                                                                      
rao.spacing(have$DEGREES, alpha=0.1, rad=FALSE);                                                              
sink();                                                                                                       
pdf("d:/pdf/circular.pdf");                                                                                   
circ.plot(2*pi*have$DEGREES/360);                                                                             
pdf();                                                                                                        
');                                                                                                           
                                                                                                              
data _null_;                                                                                                  
  infile "d:/txt/want.txt";                                                                                   
  input;                                                                                                      
  *if _n_ in (2,4,6);                                                                                         
  put _infile_;                                                                                               
run;quit;                                                                                                     
                                                                                                              
