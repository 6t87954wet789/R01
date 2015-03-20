> getwd()
[1] "C:/Users/SasquatchFarmer/Documents"
> USDA = read.csv("C:\C\Education\edX MIT 15.071 - The Analytics Edge\Unit 01 Data Files\USDA.csv")
Error: '\C' is an unrecognized escape in character string starting ""C:\C"


> USDA = read.csv("C:\C\Education\edX MIT 15.071 - The Analytics Edge\Unit 01 Data Files\USDA.csv")> > 
> getwd()
[1] "C:/C/Education/edX MIT 15.071 - The Analytics Edge/Unit 01 Data Files"
> USDA = read.csv("USDA.csv")
> str(USDA)
'data.frame':   7058 obs. of  16 variables:
 $ ID          : int  1001 1002 1003 1004 1005 1006 1007 1008 1009 1010 ...
 $ Description : Factor w/ 7054 levels "ABALONE,MIXED SPECIES,RAW",..: 1303 1302 1298 2303 2304 2305 2306 2307 2308 2309 ...
 $ Calories    : int  717 717 876 353 371 334 300 376 403 387 ...
 $ Protein     : num  0.85 0.85 0.28 21.4 23.24 ...
 $ TotalFat    : num  81.1 81.1 99.5 28.7 29.7 ...
 $ Carbohydrate: num  0.06 0.06 0 2.34 2.79 0.45 0.46 3.06 1.28 4.78 ...
 $ Sodium      : int  714 827 2 1395 560 629 842 690 621 700 ...
 $ SaturatedFat: num  51.4 50.5 61.9 18.7 18.8 ...
 $ Cholesterol : int  215 219 256 75 94 100 72 93 105 103 ...
 $ Sugar       : num  0.06 0.06 0 0.5 0.51 0.45 0.46 NA 0.52 NA ...
 $ Calcium     : int  24 24 4 528 674 184 388 673 721 643 ...
 $ Iron        : num  0.02 0.16 0 0.31 0.43 0.5 0.33 0.64 0.68 0.21 ...
 $ Potassium   : int  24 26 5 256 136 152 187 93 98 95 ...
 $ VitaminC    : num  0 0 0 0 0 0 0 0 0 0 ...
 $ VitaminE    : num  2.32 2.32 2.8 0.25 0.26 0.24 0.21 NA 0.29 NA ...
 $ VitaminD    : num  1.5 1.5 1.8 0.5 0.5 0.5 0.4 NA 0.6 NA ...
> summary(USDA)
       ID                                                              Description      Calories    
 Min.   : 1001   BEEF,CHUCK,UNDER BLADE CNTR STEAK,BNLESS,DENVER CUT,LN,0" FA:   2   Min.   :  0.0  
 1st Qu.: 8387   CAMPBELL,CAMPBELL'S SEL MICROWAVEABLE BOWLS,HEA             :   2   1st Qu.: 85.0  
 Median :13294   OIL,INDUSTRIAL,PALM KERNEL (HYDROGENATED),CONFECTION FAT    :   2   Median :181.0  
 Mean   :14260   POPCORN,OIL-POPPED,LOFAT                                    :   2   Mean   :219.7  
 3rd Qu.:18337   ABALONE,MIXED SPECIES,RAW                                   :   1   3rd Qu.:331.0  
 Max.   :93600   ABALONE,MXD SP,CKD,FRIED                                    :   1   Max.   :902.0  
                 (Other)                                                     :7048   NA's   :1      
    Protein         TotalFat       Carbohydrate        Sodium         SaturatedFat     Cholesterol     
 Min.   : 0.00   Min.   :  0.00   Min.   :  0.00   Min.   :    0.0   Min.   : 0.000   Min.   :   0.00  
 1st Qu.: 2.29   1st Qu.:  0.72   1st Qu.:  0.00   1st Qu.:   37.0   1st Qu.: 0.172   1st Qu.:   0.00  
 Median : 8.20   Median :  4.37   Median :  7.13   Median :   79.0   Median : 1.256   Median :   3.00  
 Mean   :11.71   Mean   : 10.32   Mean   : 20.70   Mean   :  322.1   Mean   : 3.452   Mean   :  41.55  
 3rd Qu.:20.43   3rd Qu.: 12.70   3rd Qu.: 28.17   3rd Qu.:  386.0   3rd Qu.: 4.028   3rd Qu.:  69.00  
 Max.   :88.32   Max.   :100.00   Max.   :100.00   Max.   :38758.0   Max.   :95.600   Max.   :3100.00  
 NA's   :1       NA's   :1        NA's   :1        NA's   :84        NA's   :301      NA's   :288      
     Sugar           Calcium             Iron           Potassium          VitaminC       
 Min.   : 0.000   Min.   :   0.00   Min.   :  0.000   Min.   :    0.0   Min.   :   0.000  
 1st Qu.: 0.000   1st Qu.:   9.00   1st Qu.:  0.520   1st Qu.:  135.0   1st Qu.:   0.000  
 Median : 1.395   Median :  19.00   Median :  1.330   Median :  250.0   Median :   0.000  
 Mean   : 8.257   Mean   :  73.53   Mean   :  2.828   Mean   :  301.4   Mean   :   9.436  
 3rd Qu.: 7.875   3rd Qu.:  56.00   3rd Qu.:  2.620   3rd Qu.:  348.0   3rd Qu.:   3.100  
 Max.   :99.800   Max.   :7364.00   Max.   :123.600   Max.   :16500.0   Max.   :2400.000  
 NA's   :1910     NA's   :136       NA's   :123       NA's   :409       NA's   :332       
    VitaminE          VitaminD       
 Min.   :  0.000   Min.   :  0.0000  
 1st Qu.:  0.120   1st Qu.:  0.0000  
 Median :  0.270   Median :  0.0000  
 Mean   :  1.488   Mean   :  0.5769  
 3rd Qu.:  0.710   3rd Qu.:  0.1000  
 Max.   :149.400   Max.   :250.0000  
 NA's   :2720      NA's   :2834      
> summary(USDA)
       ID                                                              Description      Calories    
 Min.   : 1001   BEEF,CHUCK,UNDER BLADE CNTR STEAK,BNLESS,DENVER CUT,LN,0" FA:   2   Min.   :  0.0  
 1st Qu.: 8387   CAMPBELL,CAMPBELL'S SEL MICROWAVEABLE BOWLS,HEA             :   2   1st Qu.: 85.0  
 Median :13294   OIL,INDUSTRIAL,PALM KERNEL (HYDROGENATED),CONFECTION FAT    :   2   Median :181.0  
 Mean   :14260   POPCORN,OIL-POPPED,LOFAT                                    :   2   Mean   :219.7  
 3rd Qu.:18337   ABALONE,MIXED SPECIES,RAW                                   :   1   3rd Qu.:331.0  
 Max.   :93600   ABALONE,MXD SP,CKD,FRIED                                    :   1   Max.   :902.0  
                 (Other)                                                     :7048   NA's   :1      
    Protein         TotalFat       Carbohydrate        Sodium         SaturatedFat     Cholesterol     
 Min.   : 0.00   Min.   :  0.00   Min.   :  0.00   Min.   :    0.0   Min.   : 0.000   Min.   :   0.00  
 1st Qu.: 2.29   1st Qu.:  0.72   1st Qu.:  0.00   1st Qu.:   37.0   1st Qu.: 0.172   1st Qu.:   0.00  
 Median : 8.20   Median :  4.37   Median :  7.13   Median :   79.0   Median : 1.256   Median :   3.00  
 Mean   :11.71   Mean   : 10.32   Mean   : 20.70   Mean   :  322.1   Mean   : 3.452   Mean   :  41.55  
 3rd Qu.:20.43   3rd Qu.: 12.70   3rd Qu.: 28.17   3rd Qu.:  386.0   3rd Qu.: 4.028   3rd Qu.:  69.00  
 Max.   :88.32   Max.   :100.00   Max.   :100.00   Max.   :38758.0   Max.   :95.600   Max.   :3100.00  
 NA's   :1       NA's   :1        NA's   :1        NA's   :84        NA's   :301      NA's   :288      
     Sugar           Calcium             Iron           Potassium          VitaminC       
 Min.   : 0.000   Min.   :   0.00   Min.   :  0.000   Min.   :    0.0   Min.   :   0.000  
 1st Qu.: 0.000   1st Qu.:   9.00   1st Qu.:  0.520   1st Qu.:  135.0   1st Qu.:   0.000  
 Median : 1.395   Median :  19.00   Median :  1.330   Median :  250.0   Median :   0.000  
 Mean   : 8.257   Mean   :  73.53   Mean   :  2.828   Mean   :  301.4   Mean   :   9.436  
 3rd Qu.: 7.875   3rd Qu.:  56.00   3rd Qu.:  2.620   3rd Qu.:  348.0   3rd Qu.:   3.100  
 Max.   :99.800   Max.   :7364.00   Max.   :123.600   Max.   :16500.0   Max.   :2400.000  
 NA's   :1910     NA's   :136       NA's   :123       NA's   :409       NA's   :332       
    VitaminE          VitaminD       
 Min.   :  0.000   Min.   :  0.0000  
 1st Qu.:  0.120   1st Qu.:  0.0000  
 Median :  0.270   Median :  0.0000  
 Mean   :  1.488   Mean   :  0.5769  
 3rd Qu.:  0.710   3rd Qu.:  0.1000  
 Max.   :149.400   Max.   :250.0000  
 NA's   :2720      NA's   :2834      
> subset(USDA, Description =="POPCORN,OIL-POPPED,LOFAT")
        ID              Description Calories Protein TotalFat Carbohydrate Sodium SaturatedFat
6581 25000 POPCORN,OIL-POPPED,LOFAT      402   10.72      6.1        76.04    627        1.184
6582 25001 POPCORN,OIL-POPPED,LOFAT      424   12.60      9.5        72.00    884        1.415
     Cholesterol Sugar Calcium Iron Potassium VitaminC VitaminE VitaminD
6581           0  0.65      14 2.87       284        0     0.41        0
6582           0  0.92      11 2.28       241        0     0.50        0
> subsetsubset(USDA, Sodium == max(USDA$Sodium))
Error: could not find function "subsetsubset"
> subset(USDA, Sodium == max(USDA$Sodium))
 [1] ID           Description  Calories     Protein      TotalFat     Carbohydrate Sodium      
 [8] SaturatedFat Cholesterol  Sugar        Calcium      Iron         Potassium    VitaminC    
[15] VitaminE     VitaminD    
<0 rows> (or 0-length row.names)
> max(USDA$Sodium)
[1] NA
> max(USDA$Sodium, na.rm = TRUE)
[1] 38758
> subset(USDA, Sodium == max(USDA$Sodium, na.rm = TRUE))
      ID Description Calories Protein TotalFat Carbohydrate Sodium SaturatedFat Cholesterol Sugar Calcium
265 2047  SALT,TABLE        0       0        0            0  38758            0           0     0      24
    Iron Potassium VitaminC VitaminE VitaminD
265 0.33         8        0        0        0
> subset(USDA, Sodium == min(USDA$Sodium, na.rm = TRUE))
        ID                                                  Description Calories Protein TotalFat
289   4001                                              FAT,BEEF TALLOW      902    0.00   100.00
290   4002                                                         LARD      902    0.00   100.00
308   4031      SHORTENING,HOUSEHOLD,PARTIALLY HYDROG SOYBN -COTTONSEED      884    0.00   100.00
309   4034          OIL,SOYBN,SALAD OR COOKING,(PARTIALLY HYDROGENATED)      884    0.00   100.00
310   4037                                                OIL,RICE BRAN      884    0.00   100.00
311   4038                                               OIL,WHEAT GERM      884    0.00   100.00
312   4042                                    OIL,PNUT,SALAD OR COOKING      884    0.00   100.00
313   4044                                   OIL,SOYBN,SALAD OR COOKING      884    0.00   100.00
314   4047                                                    OIL,COCNT      862    0.00   100.00
316   4055                                                     OIL,PALM      884    0.00   100.00
317   4058                                  OIL,SESAME,SALAD OR COOKING      884    0.00   100.00
318   4060                       OIL,SUNFLOWER,LINOLEIC (LESS THAN 60%)      884    0.00   100.00
326   4141                   SALAD DRSNG,FRENCH DRSNG,COMM,REG,WO/ SALT      459    0.77    44.81
333   4501                                             OIL,COCOA BUTTER      884    0.00   100.00
334   4502                                  OIL,CTTNSD,SALAD OR COOKING      884    0.00   100.00
335   4506                         OIL,SUNFLOWER,LINOLEIC,(APPROX. 65%)      884    0.00   100.00
336   4510           OIL,SAFFLOWER,SALAD OR COOKING,LINOLEIC,(OVER 70%)      884    0.00   100.00
337   4511                      OIL,SAFFLOWER,SALAD OR COOKING,HI OLEIC      884    0.00   100.00
338   4513                                    VEGETABLE OIL,PALM KERNEL      862    0.00   100.00
339   4514                                                OIL,POPPYSEED      884    0.00   100.00
340   4515                                               OIL,TOMATOSEED      884    0.00   100.00
341   4516                                                  OIL,TEASEED      884    0.00   100.00
342   4517                                                OIL,GRAPESEED      884    0.00   100.00
343   4518           OIL,CORN,INDUSTRIAL & RTL,ALLPURP SALAD OR COOKING      884    0.00   100.00
344   4520                                            FAT,MUTTON TALLOW      902    0.00   100.00
345   4528                                                   OIL,WALNUT      884    0.00   100.00
346   4529                                                   OIL,ALMOND      884    0.00   100.00
347   4530                                           OIL,APRICOT KERNEL      884    0.00   100.00
348   4531                                           OIL,SOYBN LECITHIN      763    0.00   100.00
349   4532                                                 OIL,HAZELNUT      884    0.00   100.00
350   4534                                                  OIL,BABASSU      884    0.00   100.00
351   4536                                                  OIL,SHEANUT      884    0.00   100.00
353   4541                                                OIL,CUPU ASSU      884    0.00   100.00
354   4542                                                  FAT,CHICKEN      900    0.00    99.80
355   4543 OIL,SOYBN,SALAD OR COOKING,(PARTIALLY HYDROGENATED) & CTTNSD      884    0.00   100.00
356   4544                            SHORTENING,HOUSEHOLD,LARD&VEG OIL      900    0.00   100.00
357   4545              OIL,SUNFLOWER,LINOLEIC,(PARTIALLY HYDROGENATED)      884    0.00   100.00
358   4546                         SHORTENING BREAD,SOYBN (HYDR)&CTTNSD      884    0.00   100.00
359   4548               SHORTENING CAKE MIX,SOYBN (HYDR)&CTTNSD (HYDR)      884    0.00   100.00
360   4549                           SHORTENING INDUSTRIAL,LARD&VEG OIL      900    0.00   100.00
361   4550                SHORTENING FRYING (HVY DUTY),BF TALLOW&CTTNSD      900    0.00   100.00
362   4551  SHORTENING CONFECTIONERY,COCNT (HYDR)&OR PALM KERNEL (HYDR)      884    0.00   100.00
363   4554                    SHORTENING INDUSTRIAL,SOYBN (HYDR)&CTTNSD      884    0.00   100.00
364   4556                     SHORTENING FRYING (HVY DUTY),PALM (HYDR)      884    0.00   100.00
365   4559                       SHORTENING HOUSEHOLD SOYBN (HYDR)&PALM      884    0.00   100.00
366   4560 SHORTENING FRYING HVY DUTY,SOYBN HYDR,LINOLEIC (LESS THAN 1%      884    0.00   100.00
367   4570                   SHORTENING,CONFECTIONERY,FRACTIONATED PALM      884    0.00   100.00
368   4572                                            OIL,NUTMEG BUTTER      884    0.00   100.00
369   4573                                           OIL,UCUHUBA BUTTER      884    0.00   100.00
370   4574                                                     FAT,DUCK      882    0.00    99.80
371   4575                                                   FAT,TURKEY      900    0.00    99.80
372   4576                                                    FAT,GOOSE      900    0.00    99.80
373   4581                                                  OIL,AVOCADO      884    0.00   100.00
374   4582                                                   OIL,CANOLA      884    0.00   100.00
375   4583                                                  OIL,MUSTARD      884    0.00   100.00
376   4584                          OIL,SUNFLOWER,HI OLEIC (70% & OVER)      884    0.00   100.00
378   4586      SHORTENING,SPL PURPOSE FOR CAKES&FROSTINGS,SOYBN (HYDR)      884    0.00   100.00
379   4587   SHORTENING,SPL PURPOSE FOR BAKING,SOYBN (HYDR) PALM&CTTNSD      884    0.00   100.00
380   4588                                                      OIL,OAT      884    0.00   100.00
381   4589                                           FISH OIL,COD LIVER      902    0.00   100.00
382   4590                                             FISH OIL,HERRING      902    0.00   100.00
383   4591                                            FISH OIL,MENHADEN      902    0.00   100.00
384   4592                                 FISH OIL,MENHADEN,FULLY HYDR      902    0.00   100.00
385   4593                                              FISH OIL,SALMON      902    0.00   100.00
386   4594                                             FISH OIL,SARDINE      902    0.00   100.00
387   4595             SHORTENING,MULTIPURPOSE,SOYBN (HYDR)&PALM (HYDR)      884    0.00   100.00
410   4634                 MARGARINE-LIKE,VEG OIL SPRD,20% FAT,WO/ SALT      175    0.00    19.50
417   4642                           OIL,INDUSTRIAL,MID-OLEIC,SUNFLOWER      884    0.00   100.00
418   4643                   OIL,INDUSTRIAL,CANOLA W/ ANTIFOAMING AGENT      884    0.00   100.00
419   4644            OIL,INDUSTRIAL,CANOLA FOR SALADS,WOKS & LT FRYING      884    0.00   100.00
420   4645       OIL,INDUS,CANOLA (PART HYDROG) OIL FOR DEEP FAT FRYING      884    0.00   100.00
421   4646                                         OIL,INDUSTRIAL,COCNT      884    0.00   100.00
422   4648   OIL,INDUSTRIAL,SOY (PART HYDR),FOR POPCORN & FLAVORING VEG      884    0.00   100.00
423   4649          SHORTENING,INDUS,SOY (PART HYDROG),POURABLE LIQ FRY      884    0.00   100.00
424   4650              OIL,INDUSTRIAL,SOY,REFINED,FOR WOKS & LT FRYING      884    0.00   100.00
425   4651   OIL,INDUSTRIAL,SOY (PART HYDR),FOR NON-DAIRY BUTTER FLAVOR      884    0.00   100.00
426   4652              OIL,INDUSTRIAL,SOY ( PART HYDROGENATED),ALLPURP      884    0.00   100.00
427   4653           OIL,INDUSTRIAL,SOY (PART HYDR ) & SOY,POURABLE FRY      884    0.00   100.00
428   4654     OIL,INDUS,SOY (PART HYDROG) & CTTNSD,TORTILLA SHORTENING      884    0.00   100.00
438   4664       OIL,INDUSTRIAL,SOY (PARTHYDR ),PALM, ICINGS & FILLINGS      884    0.00   100.00
440   4666  SHORTENING,INDUSTRIAL,SOY (PARTIALLY HYDR )&CORN FOR FRYING      884    0.00   100.00
441   4667   SHORTENING,INDUS,SOY (PART HYDR ) FOR BAKING & CONFECTIONS      884    0.00   100.00
443   4669                          USDA CMDTY FD,OIL,VEG,SOYBN,REFINED      884    0.00   100.00
444   4670                       USDA CMDTY FD,OIL,VEG,LO SATURATED FAT      884    0.00   100.00
450   4678 OIL,VEG,NATREON CANOLA,HI STABILITY,NON TRANS,HI OLEIC (70%)      884    0.00   100.00
454   4685                   OIL,COOKING & SALAD,ENOVA,80% DIGLYCERIDES      884    0.00   100.00
467   4698                               OIL,INDUSTRIAL,CANOLA,HI OLEIC      900    0.00   100.00
468   4699                              OIL,INDUSTRIAL,SOY,LO LINOLENIC      900    0.00   100.00
469   4700                        OIL,INDUSTRIAL,SOY,ULTRA LO LINOLENIC      884    0.00   100.00
470   4701                                OIL,INDUSTRIAL,SOY,FULLY HYDR      884    0.00   100.00
471   4702                             OIL,INDUSTRIAL,CTTNSD,FULLY HYDR      884    0.00   100.00
1638  8145            CEREALS,WHL WHEAT HOT NAT CRL,CKD W/ H2O,WO/ SALT       62    2.00     0.40
1833  8542 CEREALS RTE,KELLOGG'S,FRSTD MINI-WHEATS BITE SIZE STRAWB DEL      347    8.30     1.70
1927  9004                                      APPLES,RAW,WITHOUT SKIN       48    0.27     0.13
1986  9070                                           CHERRIES,SWEET,RAW       63    1.06     0.20
2024  9111                      GRAPEFRUIT,RAW,PINK&RED&WHITE,ALL AREAS       32    0.63     0.10
2025  9112                            GRAPEFRUIT,RAW,PINK&RED,ALL AREAS       42    0.77     0.14
2027  9114                            GRAPEFRUIT,RAW,PINK & RED,FLORIDA       30    0.55     0.10
2028  9116                               GRAPEFRUIT,RAW,WHITE,ALL AREAS       33    0.69     0.10
2029  9117                              GRAPEFRUIT,RAW,WHITE,CALIFORNIA       37    0.88     0.10
2030  9118                                 GRAPEFRUIT,RAW,WHITE,FLORIDA       32    0.63     0.10
2069  9172                                                  LONGANS,RAW       60    1.31     0.10
2083  9191                                               NECTARINES,RAW       44    1.06     0.32
2088  9200                                     ORANGES,RAW,ALL COMM VAR       47    0.94     0.12
2089  9201                             ORANGES,RAW,CALIFORNIA,VALENCIAS       49    1.04     0.30
2091  9203                                          ORANGES,RAW,FLORIDA       46    0.70     0.21
2115  9236                                                  PEACHES,RAW       39    0.91     0.25
2157  9279                                                    PLUMS,RAW       46    0.70     0.28
2185  9312                                              ROSE-APPLES,RAW       25    0.60     0.30
2200  9340                                              PEARS,ASIAN,RAW       42    0.50     0.23
3369 11996                                  FIDDLEHEAD FERNS,FRZ,UNPREP       34    4.31     0.35
3396 12058                                                   ACORNS,RAW      387    6.15    23.86
3397 12059                                                 ACORNS,DRIED      509    8.10    31.41
3398 12060                                         ACORN FLOUR,FULL FAT      501    7.49    30.17
3430 12120                                        HAZELNUTS OR FILBERTS      628   14.95    60.75
3431 12121                               HAZELNUTS OR FILBERTS,BLANCHED      629   13.70    61.15
3432 12122                       HAZELNUTS OR FILBERTS,DRY RSTD,WO/SALT      646   15.03    62.40
3443 12142                                                       PECANS      691    9.17    71.97
3893 14052                     ALCOHOLIC BEV,DISTILLED,WHISKEY,86 PROOF      250    0.00     0.00
4058 14432                             WATER,BTLD,NON-CARBONATED,DANNON        0    0.00     0.00
4059 14433                     WATER,BTLD,NON-CARBONATED,PEPSI,AQUAFINA        0    0.00     0.00
4060 14434                             WATER,BTLD,NON-CARBONATED,DASANI        0    0.00     0.00
4062 14437                          WATER,BTLD,NON-CARBONATED,CALISTOGA        0    0.00     0.00
4083 14544                       TEA,BLACK,BREWED,PREP W/ DISTILLED H2O        1    0.00     0.00
4093 14559                              WATER,BTLD,NON-CARBONATED,EVIAN        0    0.00     0.00
4098 14605      WATER W/ ADDED VITAMINS & MINERALS,SWTND, FRUIT FLAVORS       22    0.00     0.00
4142 14652                FRUIT-FLAVORED DRK,DRY PDR,LO CAL,W/ HI VIT C      200    0.00     0.00
4430 16038                      BEANS,NAVY,MATURE SEEDS,CKD,BLD,WO/SALT      140    8.23     0.62
5218 18217                                         CRACKERS,MATZO,PLAIN      395   10.00     1.40
5656 19171         COCOA,DRY PDR,UNSWTND,HERSHEY'S EUROPEAN STYLE COCOA      400   20.00    10.00
5777 19337                         SWEETENERS,TABLETOP,ASPRT,EQ,PACKETS      365    2.17     0.00
5882 19868                SWEETENERS,TABLETOP,SUCRALOSE,SPLENDA PACKETS      336    0.00     0.00
5965 20051                                  RICE,WHITE,MEDIUM-GRAIN,CKD      130    2.38     0.21
5967 20053                                   RICE,WHITE,SHORT-GRAIN,CKD      130    2.36     0.19
5974 20061                                             RICE FLOUR,WHITE      366    5.95     1.42
6003 20092                                            PASTA,CORN,COOKED      126    2.63     0.73
6075 20451                            RICE,WHITE,MEDIUM-GRAIN,CKD,UNENR      130    2.38     0.21
6077 20453                             RICE,WHITE,SHORT-GRAIN,CKD,UNENR      130    2.36     0.19
6700 35014                             OIL,BELUGA,WHALE (ALASKA NATIVE)      900    0.00   100.00
6732 35057                    OIL,BEARDED SEAL (OOGRUK) (ALASKA NATIVE)      899    0.56    99.60
6783 35156                             OIL,SPOTTED SEAL (ALASKA NATIVE)      894    0.00    99.32
6850 42063                                                PECTIN,LIQUID       11    0.00     0.00
6894 42231                                    OIL,FLAXSEED,COLD PRESSED      884    0.11    99.98
6910 42289                                          OIL,CORN AND CANOLA      884    0.00   100.00
6925 43028     JAMS & PRESERVES,DIETETIC (WITH NA SACCHARIN),ANY FLAVOR      132    0.30     0.30
6929 43058                   CANDIES,HARD,DIETETIC OR LO CAL (SORBITOL)      394    0.00     0.00
7042 44005                                    OIL,CORN,PEANUT,AND OLIVE      884    0.00   100.00
7049 44203                         COCKTAIL MIX,NON-ALCOHOLIC,CONCD,FRZ      287    0.08     0.01
     Carbohydrate Sodium SaturatedFat Cholesterol Sugar Calcium  Iron Potassium VitaminC VitaminE
289          0.00      0       49.800         109  0.00       0  0.00         0      0.0     2.70
290          0.00      0       39.200          95  0.00       0  0.00         0      0.0     0.60
308          0.00      0       25.000           0  0.00       0  0.00         0      0.0     6.13
309          0.00      0       14.900           0  0.00       0  0.00         0      0.0     8.10
310          0.00      0       19.700           0  0.00       0  0.07         0      0.0    32.30
311          0.00      0       18.800           0  0.00       0  0.00         0      0.0   149.40
312          0.00      0       16.900           0  0.00       0  0.03         0      0.0    15.69
313          0.00      0       15.650           0  0.00       0  0.05         0      0.0     8.18
314          0.00      0       86.500           0  0.00       0  0.04         0      0.0     0.09
316          0.00      0       49.300           0  0.00       0  0.01         0      0.0    15.94
317          0.00      0       14.200           0  0.00       0  0.00         0      0.0     1.40
318          0.00      0       10.100           0  0.00       0  0.03         0      0.0    41.08
326         15.58      0        5.648           0 15.95      24  0.80        67      0.0     4.12
333          0.00      0       59.700           0  0.00       0  0.00         0      0.0     1.80
334          0.00      0       25.900           0  0.00       0  0.00         0      0.0    35.30
335          0.00      0       10.300           0  0.00       0  0.00         0      0.0    41.08
336          0.00      0        6.203           0  0.00       0  0.00         0      0.0    34.10
337          0.00      0        7.541           0  0.00       0  0.00         0      0.0    34.10
338          0.00      0       81.500           0  0.00       0  0.00         0      0.0     3.81
339          0.00      0       13.500           0  0.00       0  0.00         0      0.0    11.40
340          0.00      0       19.700           0  0.00       0  0.00         0      0.0     3.80
341          0.00      0       21.100           0  0.00       0  0.00         0      0.0     0.00
342          0.00      0        9.600           0  0.00       0  0.00         0      0.0    28.80
343          0.00      0       12.948           0  0.00       0  0.00         0      0.0    14.30
344          0.00      0       47.300         102  0.00       0  0.00         0      0.0     2.80
345          0.00      0        9.100           0  0.00       0  0.00         0      0.0     0.40
346          0.00      0        8.200           0  0.00       0  0.00         0      0.0    39.20
347          0.00      0        6.300           0  0.00       0  0.00         0      0.0     4.00
348          0.00      0       15.005           0  0.00       0  0.00         0      0.0     8.18
349          0.00      0        7.400           0  0.00       0  0.00         0      0.0    47.20
350          0.00      0       81.200           0  0.00       0  0.00         0      0.0    19.10
351          0.00      0       46.600           0  0.00       0  0.00         0      0.0     0.00
353          0.00      0       53.200           0  0.00       0    NA         0      0.0     0.60
354          0.00      0       29.800          85  0.00       0  0.00         0      0.0     2.70
355          0.00      0       18.000           0  0.00       0  0.00         0      0.0    12.10
356          0.00      0       40.300          56  0.00       0  0.00         0      0.0     1.00
357          0.00      0       13.000           0  0.00       0  0.00         0      0.0    41.08
358          0.00      0       22.000           0  0.00       0  0.00         0      0.0     6.13
359          0.00      0       27.200           0  0.00       0  0.00         0      0.0     6.13
360          0.00      0       35.700          56    NA       0  0.00         0      0.0     1.00
361          0.00      0       44.900         100    NA       0  0.00         0      0.0     4.00
362          0.00      0       91.300           0  0.00       0  0.00         0      0.0     1.95
363          0.00      0       25.600           0  0.00       0  0.00         0      0.0     6.13
364          0.00      0       47.500           0    NA       0  0.00         0      0.0    19.00
365          0.00      0       25.020           0    NA       0  0.00         0      0.0       NA
366          0.00      0       21.100           0  0.00       0  0.00         0      0.0     6.13
367          0.00      0       65.500           0    NA       0  0.00         0      0.0    19.00
368          0.00      0       90.000           0  0.00       0  0.00         0      0.0     0.20
369          0.00      0       85.200           0  0.00       0  0.00         0      0.0     0.60
370          0.00      0       33.200         100  0.00       0  0.00         0      0.0     2.70
371          0.00      0       29.400         102  0.00       0  0.00         0      0.0     2.90
372          0.00      0       27.700         100    NA       0  0.00         0      0.0     2.70
373          0.00      0       11.560          NA    NA       0  0.00         0      0.0       NA
374          0.00      0        7.365           0  0.00       0  0.00         0      0.0    17.46
375          0.00      0       11.582          NA    NA       0  0.00         0      0.0       NA
376          0.00      0        9.859           0  0.00       0  0.00         0      0.0    41.08
378          0.00      0       20.001           0  0.00       0  0.00         0      0.0     6.13
379          0.00      0       28.843           0  0.00       0  0.00         0      0.0     6.13
380          0.00      0       19.620           0  0.00       0  0.00         0      0.0    14.40
381          0.00      0       22.608         570    NA       0  0.00         0      0.0       NA
382          0.00      0       21.290         766    NA       0  0.00         0      0.0       NA
383          0.00      0       30.427         521    NA       0  0.00         0      0.0       NA
384          0.00      0       95.600         500    NA       0  0.00         0      0.0       NA
385          0.00      0       19.872         485    NA       0  0.00         0      0.0       NA
386          0.00      0       29.892         710    NA       0  0.00         0      0.0       NA
387          0.00      0       30.423           0    NA       0  0.00         0      0.0       NA
410          0.40      0        2.870           0  0.00       0  0.00        25      0.0     4.50
417          0.00      0        9.009           0  0.00       0  0.03         0      0.0    41.08
418          0.00      0        7.615           0  0.00       0  0.00         0      0.0    17.10
419          0.00      0        7.758           0  0.00       0  0.00         0      0.0    17.46
420          0.00      0       10.117           0  0.00       0  0.00         0      0.0    17.46
421          0.00      0       86.002           0  0.00       0  0.04         0      0.0     0.09
422          0.00      0       17.683           0  0.00       0  0.00         0      0.0     8.10
423          0.00      0       18.358           0  0.00       0  0.00         0      0.0     8.10
424          0.00      0       15.340           0  0.00       0  0.02         0      0.0     8.18
425          0.00      0       18.101           0  0.00       0  0.00         0      0.0     8.10
426          0.00      0       24.750           0  0.00       0  0.00         0      0.0     8.10
427          0.00      0       15.341           0  0.00       0  0.00         0      0.0     8.10
428          0.00      0       25.883           0  0.00       0  0.00         0      0.0    12.10
438          0.00      0       28.421           0  0.00       0  0.00         0      0.0     8.10
440          0.00      0       17.416           0  0.00       0  0.00         0      0.0     6.13
441          0.00      0       18.788           0  0.00       0  0.00         0      0.0     6.13
443          0.00      0       15.251           0  0.00       0  0.02         0      0.0     8.18
444          0.00      0        7.429           0  0.00       0  0.02         0      0.0     9.21
450          0.00      0        6.511           0  0.00      NA    NA        NA      0.0    21.80
454          0.00      0        4.630          NA    NA      NA    NA        NA       NA    21.64
467          0.00      0        6.787           0  0.00       0  0.00         0      0.0    17.46
468          0.00      0       15.084           0  0.00       0  0.05         0      0.0     8.18
469          0.00      0       14.853           0  0.00       0  0.05         0      0.0     8.18
470          0.00      0       93.966           0  0.00       0  0.05         0      0.0     8.18
471          0.00      0       93.608           0  0.00       0  0.00         0      0.0    35.30
1638        13.70      0        0.060           0  0.08       7  0.62        71      0.0     0.24
1833        82.70      0        0.300           0 23.50      31 31.20       330      0.0     0.00
1927        12.76      0        0.021           0 10.10       5  0.07        90      4.0     0.05
1986        16.01      0        0.038           0 12.82      13  0.36       222      7.0     0.07
2024         8.08      0        0.014           0  6.98      12  0.09       139     34.4     0.13
2025        10.66      0        0.021           0  6.89      22  0.08       135     31.2     0.13
2027         7.50      0        0.014           0    NA      15  0.12       127     37.0       NA
2028         8.41      0        0.014           0  7.31      12  0.06       148     33.3     0.13
2029         9.09      0        0.014           0    NA      12  0.08       143     33.3       NA
2030         8.19      0        0.014           0    NA      15  0.05       150     37.0       NA
2069        15.14      0           NA           0    NA       1  0.13       266     84.0       NA
2083        10.55      0        0.025           0  7.89       6  0.28       201      5.4     0.77
2088        11.75      0        0.015           0  9.35      40  0.10       181     53.2     0.18
2089        11.89      0        0.035           0    NA      40  0.09       179     48.5       NA
2091        11.54      0        0.025           0  9.14      43  0.09       169     45.0     0.18
2115         9.54      0        0.019           0  8.39       6  0.25       190      6.6     0.73
2157        11.42      0        0.017           0  9.92       6  0.17       157      9.5     0.26
2185         5.70      0           NA           0    NA      29  0.07       123     22.3       NA
2200        10.65      0        0.012           0  7.05       4  0.00       121      3.8     0.12
3369         5.74      0           NA           0    NA      24  0.73       129     17.8       NA
3396        40.75      0        3.102           0    NA      41  0.79       539      0.0       NA
3397        53.66      0        4.084           0    NA      54  1.04       709      0.0       NA
3398        54.65      0        3.923           0    NA      43  1.21       712      0.0       NA
3430        16.70      0        4.464           0  4.34     114  4.70       680      6.3    15.03
3431        17.00      0        4.669           0  3.49     149  3.30       658      2.0    17.50
3432        17.60      0        4.511           0  4.89     123  4.38       755      3.8    15.28
3443        13.86      0        6.180           0  3.97      70  2.53       410      1.1     1.40
3893         0.10      0        0.000           0  0.10       0  0.02         1      0.0       NA
4058         0.00      0           NA          NA    NA       3  0.00         0       NA       NA
4059         0.00      0           NA          NA    NA       0  0.00         0       NA       NA
4060         0.00      0           NA          NA    NA       0  0.00         0       NA       NA
4062         0.00      0           NA          NA    NA       0    NA         0       NA       NA
4083         0.30      0        0.002           0    NA       0  0.01        21      0.0       NA
4093         0.00      0           NA          NA    NA       8  0.00         0       NA       NA
4098         5.49      0        0.000           0  5.49      17  0.00         0     12.7     1.90
4142        88.79      0        0.000           0  0.00     800  0.00         1   2400.0     0.68
4430        26.05      0        0.098          NA  0.37      69  2.36       389      0.9     0.01
5218        83.70      0        0.226           0  0.29      13  3.16       112      0.0     0.06
5656        60.00      0        0.000           0  0.00       0 36.00        NA      0.0       NA
5777        89.08      0        0.000           0 80.70       0  0.04         4      0.0     0.00
5882        91.17      0        0.000           0 80.33       0  0.00         4      0.0     0.00
5965        28.59      0        0.057           0    NA       3  1.49        29      0.0       NA
5967        28.73      0        0.051           0    NA       1  1.46        26      0.0       NA
5974        80.13      0        0.386           0  0.12      10  0.35        76      0.0     0.11
6003        27.91      0        0.102           0    NA       1  0.25        31      0.0       NA
6075        28.59      0        0.057           0    NA       3  0.20        29      0.0       NA
6077        28.73      0        0.051           0    NA       1  0.20        26      0.0       NA
6700         0.00      0       14.490          NA  0.00       0  0.00         0       NA     8.27
6732         0.00      0       10.926          52    NA       0  0.00         0      0.0    10.28
6783         0.00      0       14.740          NA  0.00       0  0.00         0      0.0     6.28
6850         2.10      0        0.000           0  0.00       0  0.00         0      0.0     0.00
6894         0.00      0        8.976           0  0.00       1  0.00         0      0.0     0.47
6910         0.00      0        8.026           0  0.00       0  0.00         0      0.0    14.84
6925        53.60      0        0.016           0 37.81       9  0.40        69      0.0     0.09
6929        98.60      0        0.000           0 93.00       0  0.00         0      0.0     0.00
7042         0.00      0       14.367           0  0.00       0  0.13         0      0.0    14.78
7049        71.60      0        0.003           0 48.44       2  0.04        23      4.2     0.02
     VitaminD
289       0.7
290       2.5
308       0.0
309       0.0
310        NA
311       0.0
312       0.0
313       0.0
314       0.0
316        NA
317       0.0
318        NA
326        NA
333        NA
334       0.0
335       0.0
336        NA
337       0.0
338       0.0
339        NA
340        NA
341        NA
342        NA
343       0.0
344       0.7
345       0.0
346       0.0
347        NA
348       0.0
349        NA
350        NA
351        NA
353        NA
354       4.8
355       0.0
356       0.0
357        NA
358        NA
359       0.0
360        NA
361        NA
362       0.0
363       0.0
364        NA
365        NA
366        NA
367        NA
368        NA
369        NA
370       4.8
371       4.8
372        NA
373        NA
374       0.0
375        NA
376       0.0
378        NA
379        NA
380        NA
381     250.0
382        NA
383        NA
384        NA
385        NA
386       8.3
387        NA
410       0.0
417        NA
418        NA
419        NA
420        NA
421        NA
422        NA
423        NA
424        NA
425       0.0
426       0.0
427        NA
428       0.0
438        NA
440       0.0
441        NA
443        NA
444        NA
450       0.0
454        NA
467       0.0
468       0.0
469       0.0
470       0.0
471       0.0
1638       NA
1833      0.0
1927      0.0
1986      0.0
2024      0.0
2025      0.0
2027      0.0
2028      0.0
2029      0.0
2030      0.0
2069       NA
2083      0.0
2088      0.0
2089      0.0
2091      0.0
2115      0.0
2157      0.0
2185       NA
2200      0.0
3369      0.0
3396       NA
3397       NA
3398       NA
3430      0.0
3431      0.0
3432      0.0
3443      0.0
3893       NA
4058       NA
4059       NA
4060       NA
4062       NA
4083       NA
4093       NA
4098      0.0
4142      0.0
4430      0.0
5218      0.0
5656       NA
5777      0.0
5882      0.0
5965      0.0
5967      0.0
5974      0.0
6003       NA
6075      0.0
6077      0.0
6700      5.7
6732      0.7
6783      0.7
6850      0.0
6894      0.0
6910      0.0
6925      0.0
6929      0.0
7042      0.0
7049      0.0
> which.max(USDA$Sodium)
[1] 265
> USDA[which.max(USDA$Sodium),]
      ID Description Calories Protein TotalFat Carbohydrate Sodium SaturatedFat Cholesterol Sugar Calcium
265 2047  SALT,TABLE        0       0        0            0  38758            0           0     0      24
    Iron Potassium VitaminC VitaminE VitaminD
265 0.33         8        0        0        0
> USDA[which.max(USDA$Sodium)]
Error in `[.data.frame`(USDA, which.max(USDA$Sodium)) : 
  undefined columns selected
> USDA[which.max(USDA$Sodium), Description]
Error in `[.data.frame`(USDA, which.max(USDA$Sodium), Description) : 
  object 'Description' not found
> USDA[which.max(USDA$Sodium),]$Description
[1] SALT,TABLE
7054 Levels: ABALONE,MIXED SPECIES,RAW ABALONE,MXD SP,CKD,FRIED ABIYUCH,RAW ... ZWIEBACK
> names(USDA)
 [1] "ID"           "Description"  "Calories"     "Protein"      "TotalFat"     "Carbohydrate" "Sodium"      
 [8] "SaturatedFat" "Cholesterol"  "Sugar"        "Calcium"      "Iron"         "Potassium"    "VitaminC"    
[15] "VitaminE"     "VitaminD"    
> USDA$Description(which.max(USDA$Sodium))
Error: attempt to apply non-function
> USDA$Description[which.max(USDA$Sodium)]
[1] SALT,TABLE
7054 Levels: ABALONE,MIXED SPECIES,RAW ABALONE,MXD SP,CKD,FRIED ABIYUCH,RAW ... ZWIEBACK
> HighSodium = subset(USDA, Sodium > 10000)
> nrow(HighSodium)
[1] 10
> HighSodium$Description
 [1] SALT,TABLE                                             
 [2] SOUP,BF BROTH OR BOUILLON,PDR,DRY                      
 [3] SOUP,BEEF BROTH,CUBED,DRY                              
 [4] SOUP,CHICK BROTH OR BOUILLON,DRY                       
 [5] SOUP,CHICK BROTH CUBES,DRY                             
 [6] GRAVY,AU JUS,DRY                                       
 [7] ADOBO FRESCO                                           
 [8] LEAVENING AGENTS,BAKING PDR,DOUBLE-ACTING,NA AL SULFATE
 [9] LEAVENING AGENTS,BAKING SODA                           
[10] DESSERTS,RENNIN,TABLETS,UNSWTND                        
7054 Levels: ABALONE,MIXED SPECIES,RAW ABALONE,MXD SP,CKD,FRIED ABIYUCH,RAW ... ZWIEBACK
> USDA[which.max(USDA$Sodium),c("Description")]
[1] SALT,TABLE
7054 Levels: ABALONE,MIXED SPECIES,RAW ABALONE,MXD SP,CKD,FRIED ABIYUCH,RAW ... ZWIEBACK
> USDA[which.max(USDA$Sodium),c("Description", "Sodium")]
    Description Sodium
265  SALT,TABLE  38758
> USDA[which.max(USDA$Sodium),c("Description")]
[1] SALT,TABLE
7054 Levels: ABALONE,MIXED SPECIES,RAW ABALONE,MXD SP,CKD,FRIED ABIYUCH,RAW ... ZWIEBACK
> USDA$Sodium[match("CAVIAR"), USDA$Description]
Error in match("CAVIAR") : argument "table" is missing, with no default
> USDA$Sodium[match("CAVIAR", USDA$Description)]
[1] 1500
> summary(USDA)
       ID                                                              Description      Calories    
 Min.   : 1001   BEEF,CHUCK,UNDER BLADE CNTR STEAK,BNLESS,DENVER CUT,LN,0" FA:   2   Min.   :  0.0  
 1st Qu.: 8387   CAMPBELL,CAMPBELL'S SEL MICROWAVEABLE BOWLS,HEA             :   2   1st Qu.: 85.0  
 Median :13294   OIL,INDUSTRIAL,PALM KERNEL (HYDROGENATED),CONFECTION FAT    :   2   Median :181.0  
 Mean   :14260   POPCORN,OIL-POPPED,LOFAT                                    :   2   Mean   :219.7  
 3rd Qu.:18337   ABALONE,MIXED SPECIES,RAW                                   :   1   3rd Qu.:331.0  
 Max.   :93600   ABALONE,MXD SP,CKD,FRIED                                    :   1   Max.   :902.0  
                 (Other)                                                     :7048   NA's   :1      
    Protein         TotalFat       Carbohydrate        Sodium         SaturatedFat     Cholesterol     
 Min.   : 0.00   Min.   :  0.00   Min.   :  0.00   Min.   :    0.0   Min.   : 0.000   Min.   :   0.00  
 1st Qu.: 2.29   1st Qu.:  0.72   1st Qu.:  0.00   1st Qu.:   37.0   1st Qu.: 0.172   1st Qu.:   0.00  
 Median : 8.20   Median :  4.37   Median :  7.13   Median :   79.0   Median : 1.256   Median :   3.00  
 Mean   :11.71   Mean   : 10.32   Mean   : 20.70   Mean   :  322.1   Mean   : 3.452   Mean   :  41.55  
 3rd Qu.:20.43   3rd Qu.: 12.70   3rd Qu.: 28.17   3rd Qu.:  386.0   3rd Qu.: 4.028   3rd Qu.:  69.00  
 Max.   :88.32   Max.   :100.00   Max.   :100.00   Max.   :38758.0   Max.   :95.600   Max.   :3100.00  
 NA's   :1       NA's   :1        NA's   :1        NA's   :84        NA's   :301      NA's   :288      
     Sugar           Calcium             Iron           Potassium          VitaminC           VitaminE      
 Min.   : 0.000   Min.   :   0.00   Min.   :  0.000   Min.   :    0.0   Min.   :   0.000   Min.   :  0.000  
 1st Qu.: 0.000   1st Qu.:   9.00   1st Qu.:  0.520   1st Qu.:  135.0   1st Qu.:   0.000   1st Qu.:  0.120  
 Median : 1.395   Median :  19.00   Median :  1.330   Median :  250.0   Median :   0.000   Median :  0.270  
 Mean   : 8.257   Mean   :  73.53   Mean   :  2.828   Mean   :  301.4   Mean   :   9.436   Mean   :  1.488  
 3rd Qu.: 7.875   3rd Qu.:  56.00   3rd Qu.:  2.620   3rd Qu.:  348.0   3rd Qu.:   3.100   3rd Qu.:  0.710  
 Max.   :99.800   Max.   :7364.00   Max.   :123.600   Max.   :16500.0   Max.   :2400.000   Max.   :149.400  
 NA's   :1910     NA's   :136       NA's   :123       NA's   :409       NA's   :332        NA's   :2720     
    VitaminD       
 Min.   :  0.0000  
 1st Qu.:  0.0000  
 Median :  0.0000  
 Mean   :  0.5769  
 3rd Qu.:  0.1000  
 Max.   :250.0000  
 NA's   :2834      
> summary(USDA$Sodium)
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max.    NA's 
    0.0    37.0    79.0   322.1   386.0 38760.0      84 
> sd(USDA$Sodium)
[1] NA
> sd(USDA$Sodium, na.rm = TRUE)
[1] 1045.417
> plot(USDA$Protein, USDA$TotalFat)
> plot(USDA$Protein, USDA$TotalFat, xlab = "Protein", ylab = "TotalFat", main = "Fat vs Protein")
> plot(USDA$Protein, USDA$TotalFat, xlab = "Protein", ylab = "Total Fat", main = "Fat vs Protein")
> plot(USDA$Protein, USDA$TotalFat, xlab = "Protein", ylab = "Total Fat", main = "Fat vs Protein", col = "red")
> hist(USDA$TotalFat, blocks=20)
Warning messages:
1: In plot.window(xlim, ylim, "", ...) :
  "blocks" is not a graphical parameter
2: In title(main = main, sub = sub, xlab = xlab, ylab = ylab, ...) :
  "blocks" is not a graphical parameter
3: In axis(1, ...) : "blocks" is not a graphical parameter
4: In axis(2, ...) : "blocks" is not a graphical parameter
> hist(USDA$TotalFat, blocks=10)
Warning messages:
1: In plot.window(xlim, ylim, "", ...) :
  "blocks" is not a graphical parameter
2: In title(main = main, sub = sub, xlab = xlab, ylab = ylab, ...) :
  "blocks" is not a graphical parameter
3: In axis(1, ...) : "blocks" is not a graphical parameter
4: In axis(2, ...) : "blocks" is not a graphical parameter
> hist(USDA$TotalFat, blocks=10)
Warning messages:
1: In plot.window(xlim, ylim, "", ...) :
  "blocks" is not a graphical parameter
2: In title(main = main, sub = sub, xlab = xlab, ylab = ylab, ...) :
  "blocks" is not a graphical parameter
3: In axis(1, ...) : "blocks" is not a graphical parameter
4: In axis(2, ...) : "blocks" is not a graphical parameter
> hist(USDA$TotalFat, blocks=3)
Warning messages:
1: In plot.window(xlim, ylim, "", ...) :
  "blocks" is not a graphical parameter
2: In title(main = main, sub = sub, xlab = xlab, ylab = ylab, ...) :
  "blocks" is not a graphical parameter
3: In axis(1, ...) : "blocks" is not a graphical parameter
4: In axis(2, ...) : "blocks" is not a graphical parameter
> hist(USDA$VitaminC, blocks=3)
Warning messages:
1: In plot.window(xlim, ylim, "", ...) :
  "blocks" is not a graphical parameter
2: In title(main = main, sub = sub, xlab = xlab, ylab = ylab, ...) :
  "blocks" is not a graphical parameter
3: In axis(1, ...) : "blocks" is not a graphical parameter
4: In axis(2, ...) : "blocks" is not a graphical parameter
> hist(USDA$VitaminC, blocks=30)
Warning messages:
1: In plot.window(xlim, ylim, "", ...) :
  "blocks" is not a graphical parameter
2: In title(main = main, sub = sub, xlab = xlab, ylab = ylab, ...) :
  "blocks" is not a graphical parameter
3: In axis(1, ...) : "blocks" is not a graphical parameter
4: In axis(2, ...) : "blocks" is not a graphical parameter
> hist(USDA$VitaminC, xlab = "Vitamin C (mg)", main = "Histogram of Vitamin C", xlim = c(0, 100))
> hist(USDA$VitaminC, xlab = "Vitamin C (mg)", main = "Histogram of Vitamin C", xlim = c(0, 100), blocks=10)
Warning messages:
1: In plot.window(xlim, ylim, "", ...) :
  "blocks" is not a graphical parameter
2: In title(main = main, sub = sub, xlab = xlab, ylab = ylab, ...) :
  "blocks" is not a graphical parameter
3: In axis(1, ...) : "blocks" is not a graphical parameter
4: In axis(2, ...) : "blocks" is not a graphical parameter
> hist(USDA$VitaminC, xlab = "Vitamin C (mg)", main = "Histogram of Vitamin C", xlim = c(0, 100), breaks=100)
> hist(USDA$VitaminC, xlab = "Vitamin C (mg)", main = "Histogram of Vitamin C", xlim = c(0, 100), breaks=1000)
> hist(USDA$VitaminC, xlab = "Vitamin C (mg)", main = "Histogram of Vitamin C", xlim = c(0, 100), breaks=100)
> hist(USDA$VitaminC, xlab = "Vitamin C (mg)", main = "Histogram of Vitamin C",  breaks=100)
> hist(USDA$VitaminC, xlab = "Vitamin C (mg)", main = "Histogram of Vitamin C", xlim = c(0, 100), breaks=2000)
> hist(USDA$VitaminC, xlab = "Vitamin C (mg)", main = "Histogram of Vitamin C", breaks=2000, xlim = c(0, 100))
> hist(USDA$VitaminC, xlab = "Vitamin C (mg)", main = "Histogram of Vitamin C", breaks=2000, xlim = c(0, 100))
> boxplot(USDA$Sugar, main = "Boxplot of Sugar Levels")
> boxplot(USDA$Sugar, main = "Boxplot of Sugar Levels", ylab = "Sugar (g)")
> str(USDA)
'data.frame':   7058 obs. of  16 variables:
 $ ID          : int  1001 1002 1003 1004 1005 1006 1007 1008 1009 1010 ...
 $ Description : Factor w/ 7054 levels "ABALONE,MIXED SPECIES,RAW",..: 1303 1302 1298 2303 2304 2305 2306 2307 2308 2309 ...
 $ Calories    : int  717 717 876 353 371 334 300 376 403 387 ...
 $ Protein     : num  0.85 0.85 0.28 21.4 23.24 ...
 $ TotalFat    : num  81.1 81.1 99.5 28.7 29.7 ...
 $ Carbohydrate: num  0.06 0.06 0 2.34 2.79 0.45 0.46 3.06 1.28 4.78 ...
 $ Sodium      : int  714 827 2 1395 560 629 842 690 621 700 ...
 $ SaturatedFat: num  51.4 50.5 61.9 18.7 18.8 ...
 $ Cholesterol : int  215 219 256 75 94 100 72 93 105 103 ...
 $ Sugar       : num  0.06 0.06 0 0.5 0.51 0.45 0.46 NA 0.52 NA ...
 $ Calcium     : int  24 24 4 528 674 184 388 673 721 643 ...
 $ Iron        : num  0.02 0.16 0 0.31 0.43 0.5 0.33 0.64 0.68 0.21 ...
 $ Potassium   : int  24 26 5 256 136 152 187 93 98 95 ...
 $ VitaminC    : num  0 0 0 0 0 0 0 0 0 0 ...
 $ VitaminE    : num  2.32 2.32 2.8 0.25 0.26 0.24 0.21 NA 0.29 NA ...
 $ VitaminD    : num  1.5 1.5 1.8 0.5 0.5 0.5 0.4 NA 0.6 NA ...
> hist(USDA$VitaminC, xlab = "Vitamin C (mg)", main = "Histogram of Vitamin C")
> HighSodium = USDA$Sodium > mean(USDA$Sodium, na.rm=TRUE)
> str(HighSodium)
 logi [1:7058] TRUE TRUE FALSE TRUE TRUE TRUE ...
> HighSodium = as.numeric(USDA$Sodium > mean(USDA$Sodium, na.rm=TRUE))
> str(HighSodium)
 num [1:7058] 1 1 0 1 1 1 1 1 1 1 ...
> USDA$HighSodium = as.numeric(USDA$Sodium > mean(USDA$Sodium, na.rm=TRUE))
> str(USDA)
'data.frame':   7058 obs. of  17 variables:
 $ ID          : int  1001 1002 1003 1004 1005 1006 1007 1008 1009 1010 ...
 $ Description : Factor w/ 7054 levels "ABALONE,MIXED SPECIES,RAW",..: 1303 1302 1298 2303 2304 2305 2306 2307 2308 2309 ...
 $ Calories    : int  717 717 876 353 371 334 300 376 403 387 ...
 $ Protein     : num  0.85 0.85 0.28 21.4 23.24 ...
 $ TotalFat    : num  81.1 81.1 99.5 28.7 29.7 ...
 $ Carbohydrate: num  0.06 0.06 0 2.34 2.79 0.45 0.46 3.06 1.28 4.78 ...
 $ Sodium      : int  714 827 2 1395 560 629 842 690 621 700 ...
 $ SaturatedFat: num  51.4 50.5 61.9 18.7 18.8 ...
 $ Cholesterol : int  215 219 256 75 94 100 72 93 105 103 ...
 $ Sugar       : num  0.06 0.06 0 0.5 0.51 0.45 0.46 NA 0.52 NA ...
 $ Calcium     : int  24 24 4 528 674 184 388 673 721 643 ...
 $ Iron        : num  0.02 0.16 0 0.31 0.43 0.5 0.33 0.64 0.68 0.21 ...
 $ Potassium   : int  24 26 5 256 136 152 187 93 98 95 ...
 $ VitaminC    : num  0 0 0 0 0 0 0 0 0 0 ...
 $ VitaminE    : num  2.32 2.32 2.8 0.25 0.26 0.24 0.21 NA 0.29 NA ...
 $ VitaminD    : num  1.5 1.5 1.8 0.5 0.5 0.5 0.4 NA 0.6 NA ...
 $ HighSodium  : num  1 1 0 1 1 1 1 1 1 1 ...
> USDA$HighProtein = as.numeric(USDA$Protein > mean(USDA$Protein, na.rm=TRUE))
> USDA$HighTotalFat = as.numeric(USDA$TotalFat> mean(USDA$TotalFat, na.rm=TRUE))
> str(USDA)
'data.frame':   7058 obs. of  19 variables:
 $ ID          : int  1001 1002 1003 1004 1005 1006 1007 1008 1009 1010 ...
 $ Description : Factor w/ 7054 levels "ABALONE,MIXED SPECIES,RAW",..: 1303 1302 1298 2303 2304 2305 2306 2307 2308 2309 ...
 $ Calories    : int  717 717 876 353 371 334 300 376 403 387 ...
 $ Protein     : num  0.85 0.85 0.28 21.4 23.24 ...
 $ TotalFat    : num  81.1 81.1 99.5 28.7 29.7 ...
 $ Carbohydrate: num  0.06 0.06 0 2.34 2.79 0.45 0.46 3.06 1.28 4.78 ...
 $ Sodium      : int  714 827 2 1395 560 629 842 690 621 700 ...
 $ SaturatedFat: num  51.4 50.5 61.9 18.7 18.8 ...
 $ Cholesterol : int  215 219 256 75 94 100 72 93 105 103 ...
 $ Sugar       : num  0.06 0.06 0 0.5 0.51 0.45 0.46 NA 0.52 NA ...
 $ Calcium     : int  24 24 4 528 674 184 388 673 721 643 ...
 $ Iron        : num  0.02 0.16 0 0.31 0.43 0.5 0.33 0.64 0.68 0.21 ...
 $ Potassium   : int  24 26 5 256 136 152 187 93 98 95 ...
 $ VitaminC    : num  0 0 0 0 0 0 0 0 0 0 ...
 $ VitaminE    : num  2.32 2.32 2.8 0.25 0.26 0.24 0.21 NA 0.29 NA ...
 $ VitaminD    : num  1.5 1.5 1.8 0.5 0.5 0.5 0.4 NA 0.6 NA ...
 $ HighSodium  : num  1 1 0 1 1 1 1 1 1 1 ...
 $ HighProtein : num  0 0 0 1 1 1 1 1 1 1 ...
 $ HighTotalFat: num  1 1 1 1 1 1 1 1 1 1 ...
> head(USDA)
    ID              Description Calories Protein TotalFat Carbohydrate Sodium SaturatedFat Cholesterol Sugar
1 1001         BUTTER,WITH SALT      717    0.85    81.11         0.06    714       51.368         215  0.06
2 1002 BUTTER,WHIPPED,WITH SALT      717    0.85    81.11         0.06    827       50.489         219  0.06
3 1003     BUTTER OIL,ANHYDROUS      876    0.28    99.48         0.00      2       61.924         256  0.00
4 1004              CHEESE,BLUE      353   21.40    28.74         2.34   1395       18.669          75  0.50
5 1005             CHEESE,BRICK      371   23.24    29.68         2.79    560       18.764          94  0.51
6 1006              CHEESE,BRIE      334   20.75    27.68         0.45    629       17.410         100  0.45
  Calcium Iron Potassium VitaminC VitaminE VitaminD HighSodium HighProtein HighTotalFat
1      24 0.02        24        0     2.32      1.5          1           0            1
2      24 0.16        26        0     2.32      1.5          1           0            1
3       4 0.00         5        0     2.80      1.8          0           0            1
4     528 0.31       256        0     0.25      0.5          1           1            1
5     674 0.43       136        0     0.26      0.5          1           1            1
6     184 0.50       152        0     0.24      0.5          1           1            1
> USDA$HighCarbs = as.numeric(USDA$Carbohydrate > mean(USDA$Carbohydrate, na.rm=TRUE))
> head(USDA)
    ID              Description Calories Protein TotalFat Carbohydrate Sodium SaturatedFat Cholesterol Sugar
1 1001         BUTTER,WITH SALT      717    0.85    81.11         0.06    714       51.368         215  0.06
2 1002 BUTTER,WHIPPED,WITH SALT      717    0.85    81.11         0.06    827       50.489         219  0.06
3 1003     BUTTER OIL,ANHYDROUS      876    0.28    99.48         0.00      2       61.924         256  0.00
4 1004              CHEESE,BLUE      353   21.40    28.74         2.34   1395       18.669          75  0.50
5 1005             CHEESE,BRICK      371   23.24    29.68         2.79    560       18.764          94  0.51
6 1006              CHEESE,BRIE      334   20.75    27.68         0.45    629       17.410         100  0.45
  Calcium Iron Potassium VitaminC VitaminE VitaminD HighSodium HighProtein HighTotalFat HighCarbs
1      24 0.02        24        0     2.32      1.5          1           0            1         0
2      24 0.16        26        0     2.32      1.5          1           0            1         0
3       4 0.00         5        0     2.80      1.8          0           0            1         0
4     528 0.31       256        0     0.25      0.5          1           1            1         0
5     674 0.43       136        0     0.26      0.5          1           1            1         0
6     184 0.50       152        0     0.24      0.5          1           1            1         0
> head( subset(USDA, HighCarbs))
Error in subset.data.frame(USDA, HighCarbs) : 'subset' must be logical
> head( subset(USDA, HighCarbs == 1))
     ID                                     Description Calories Protein TotalFat Carbohydrate Sodium
21 1021                                  CHEESE,GJETOST      466    9.65    29.51        42.65    600
62 1069                       CREAM SUBSTITUTE,POWDERED      545    4.79    35.48        54.88    181
63 1070                        DESSERT TOPPING,POWDERED      577    4.90    39.92        52.54    122
66 1073                  DESSERT TOPPING,SEMI SOLID,FRZ      318    1.25    25.31        23.05     25
82 1090                 MILK,DRY,WHL,W/ ADDED VITAMIN D      496   26.32    26.71        38.42    371
83 1091 MILK,DRY,NONFAT,REG,WO/ ADDED VIT A & VITAMIN D      362   36.16     0.77        51.98    535
   SaturatedFat Cholesterol Sugar Calcium Iron Potassium VitaminC VitaminE VitaminD HighSodium HighProtein
21       19.160          94    NA     400 0.52      1409      0.0       NA       NA          1           0
62       32.525           0 54.88      22 1.15       812      0.0     0.59      0.0          0           0
63       36.723           0 52.54      17 0.03       166      0.0     1.52      0.0          0           0
66       21.783           0 23.05       6 0.12        18      0.0     0.96      0.0          0           0
82       16.742          97 38.42     912 0.47      1330      8.6     0.58     10.5          1           1
83        0.499          20 51.98    1257 0.32      1794      6.8     0.00      0.0          1           1
   HighTotalFat HighCarbs
21            1         1
62            1         1
63            1         1
66            1         1
82            1         1
83            0         1
> mean(USDA$Carbohydrate, na.rm=TRUE)
[1] 20.69786
> head( subset(USDA, HighProtein == 1))
    ID      Description Calories Protein TotalFat Carbohydrate Sodium SaturatedFat Cholesterol Sugar Calcium
4 1004      CHEESE,BLUE      353   21.40    28.74         2.34   1395       18.669          75  0.50     528
5 1005     CHEESE,BRICK      371   23.24    29.68         2.79    560       18.764          94  0.51     674
6 1006      CHEESE,BRIE      334   20.75    27.68         0.45    629       17.410         100  0.45     184
7 1007 CHEESE,CAMEMBERT      300   19.80    24.26         0.46    842       15.259          72  0.46     388
8 1008   CHEESE,CARAWAY      376   25.18    29.20         3.06    690       18.584          93    NA     673
9 1009   CHEESE,CHEDDAR      403   24.90    33.14         1.28    621       21.092         105  0.52     721
  Iron Potassium VitaminC VitaminE VitaminD HighSodium HighProtein HighTotalFat HighCarbs
4 0.31       256        0     0.25      0.5          1           1            1         0
5 0.43       136        0     0.26      0.5          1           1            1         0
6 0.50       152        0     0.24      0.5          1           1            1         0
7 0.33       187        0     0.21      0.4          1           1            1         0
8 0.64        93        0       NA       NA          1           1            1         0
9 0.68        98        0     0.29      0.6          1           1            1         0
> head( subset(USDA, HighProtein == 1), 20)
     ID                         Description Calories Protein TotalFat Carbohydrate Sodium SaturatedFat
4  1004                         CHEESE,BLUE      353   21.40    28.74         2.34   1395       18.669
5  1005                        CHEESE,BRICK      371   23.24    29.68         2.79    560       18.764
6  1006                         CHEESE,BRIE      334   20.75    27.68         0.45    629       17.410
7  1007                    CHEESE,CAMEMBERT      300   19.80    24.26         0.46    842       15.259
8  1008                      CHEESE,CARAWAY      376   25.18    29.20         3.06    690       18.584
9  1009                      CHEESE,CHEDDAR      403   24.90    33.14         1.28    621       21.092
10 1010                     CHEESE,CHESHIRE      387   23.37    30.60         4.78    700       19.475
11 1011                        CHEESE,COLBY      394   23.76    32.11         2.57    604       20.218
15 1015    CHEESE,COTTAGE,LOWFAT,2% MILKFAT       86   11.83     2.45         3.66    330        0.979
16 1016    CHEESE,COTTAGE,LOWFAT,1% MILKFAT       72   12.39     1.02         2.72    406        0.645
18 1018                         CHEESE,EDAM      357   24.99    27.80         1.43    965       17.572
19 1019                         CHEESE,FETA      264   14.21    21.28         4.09   1116       14.946
20 1020                      CHEESE,FONTINA      389   25.60    31.14         1.55    800       19.196
22 1022                        CHEESE,GOUDA      356   24.94    27.44         2.22    819       17.614
23 1023                      CHEESE,GRUYERE      413   29.81    32.34         0.36    336       18.913
24 1024                    CHEESE,LIMBURGER      327   20.05    27.25         0.49    800       16.746
25 1025                     CHEESE,MONTEREY      373   24.48    30.28         0.68    536       19.066
26 1026          CHEESE,MOZZARELLA,WHL MILK      300   22.17    22.35         2.19    627       13.152
27 1027 CHEESE,MOZZARELLA,WHL MILK,LO MOIST      318   21.60    24.64         2.47    415       15.561
28 1028    CHEESE,MOZZARELLA,PART SKIM MILK      254   24.26    15.92         2.77    619       10.114
   Cholesterol Sugar Calcium Iron Potassium VitaminC VitaminE VitaminD HighSodium HighProtein HighTotalFat
4           75  0.50     528 0.31       256        0     0.25      0.5          1           1            1
5           94  0.51     674 0.43       136        0     0.26      0.5          1           1            1
6          100  0.45     184 0.50       152        0     0.24      0.5          1           1            1
7           72  0.46     388 0.33       187        0     0.21      0.4          1           1            1
8           93    NA     673 0.64        93        0       NA       NA          1           1            1
9          105  0.52     721 0.68        98        0     0.29      0.6          1           1            1
10         103    NA     643 0.21        95        0       NA       NA          1           1            1
11          95  0.52     685 0.76       127        0     0.28      0.6          1           1            1
15          10  3.67      91 0.15        84        0     0.04      0.0          1           1            0
16           4  2.72      61 0.14        86        0     0.01      0.0          1           1            0
18          89  1.43     731 0.44       188        0     0.24      0.5          1           1            1
19          89  4.09     493 0.65        62        0     0.18      0.4          1           1            1
20         116  1.55     550 0.23        64        0     0.27      0.6          1           1            1
22         114  2.22     700 0.24       121        0     0.24      0.5          1           1            1
23         110  0.36    1011 0.17        81        0     0.28      0.6          1           1            1
24          90  0.49     497 0.13       128        0     0.23      0.5          1           1            1
25          89  0.50     746 0.72        81        0     0.26      0.6          1           1            1
26          79  1.03     505 0.44        76        0     0.19      0.4          1           1            1
27          89  1.01     575 0.20        75        0     0.21      0.5          1           1            1
28          64  1.13     782 0.22        84        0     0.14      0.3          1           1            1
   HighCarbs
4          0
5          0
6          0
7          0
8          0
9          0
10         0
11         0
15         0
16         0
18         0
19         0
20         0
22         0
23         0
24         0
25         0
26         0
27         0
28         0
> tail( subset(USDA, HighProtein == 1), 20)
        ID                                        Description Calories Protein TotalFat Carbohydrate Sodium
7000 43378 PORK,CURED,BACON,CKD,BRLD,PAN-FRIED OR RSTD,RED NA      541   37.04    41.78         1.43   1030
7001 43379                    CHEESE,PAST PROCESS,SWISS,LOFAT      165   25.50     5.10         4.30   1430
7006 43390 TURKEY,LT OR DK MEAT,SMOKED,CKD,W/SKN,BONE REMOVED      200   28.10     9.70         0.00    996
7007 43391 TURKEY,LT OR DK MEAT,SMOKED,CKD,SKN & BONE REMOVED      162   29.30     5.00         0.00    996
7011 43398      CHEESE,PAST PROCESS,CHEDDAR OR AMERICAN,LO NA      376   22.20    31.19         1.60      7
7014 43405                            CHEESE,SWISS,LOW SODIUM      374   28.40    27.40         3.40     14
7015 43406                               YEAST EXTRACT SPREAD      185   23.88     0.90        20.42   2962
7016 43410                     CHICKEN,MEATLESS,BREADED,FRIED      234   21.28    12.77         8.51    400
7023 43483                                      MILLET,PUFFED      354   13.00     3.40        80.00      5
7027 43507                                  FRANKFURTER,LO NA      312   12.00    28.51         1.80    311
7035 43572                         POPCORN,MICROWAVE,LOFAT&NA      429   12.60     9.50        73.39    490
7036 43584                                    AMARANTH FLAKES      353   15.54     7.00        71.15     35
7037 43589                               CHEESE,SWISS,LOW FAT      173   28.40     5.10         3.40    260
7039 43597                            CHEESE,MOZZARELLA,LO NA      280   27.50    17.10         3.10     16
7053 48052                                 VITAL WHEAT GLUTEN      370   75.16     1.85        13.79     29
7054 80200                                      FROG LEGS,RAW       73   16.40     0.30         0.00     58
7055 83110                                    MACKEREL,SALTED      305   18.50    25.10         0.00   4450
7056 90240                         SCALLOP,(BAY&SEA),CKD,STMD      111   20.54     0.84         5.41    667
7057 90560                                          SNAIL,RAW       90   16.10     1.40         2.00     70
7058 93600                                   TURTLE,GREEN,RAW       89   19.80     0.50         0.00     68
     SaturatedFat Cholesterol Sugar Calcium Iron Potassium VitaminC VitaminE VitaminD HighSodium HighProtein
7000       13.739         110  0.00      11 1.44       565      0.0     0.31      1.0          1           1
7001        3.303          35  1.35     684 0.43       180      0.0     0.07      0.1          1           1
7006        2.831          82  0.00      26 1.79       280      0.0     0.34      0.0          1           1
7007        1.368          76  0.00      25 1.78       298      0.0     0.33      0.1          1           1
7011       19.651          94  0.45     616 0.39       162      0.0     0.27      0.6          0           1
7014       17.744          92  1.31     961 0.17       111      0.0     0.37      0.5          0           1
7015        0.000           0  1.60      67 4.04      2100      0.0     0.00      0.0          1           1
7016        1.130           0  0.00      42 3.83       300      0.0     1.95      0.0          1           1
7023        0.670           0  0.55       8 2.81        40      0.0     0.66      0.0          0           1
7027       12.038          61  0.00      20 1.43       166      0.0     0.17      0.9          0           1
7035        1.415           0  0.54      11 2.28       241      0.0     5.01      0.0          1           1
7036        1.325           0  0.42      17 1.76       353      2.5     1.31      0.0          0           1
7037        3.304          35  1.33     961 0.17       111      0.0     0.07      0.1          0           1
7039       10.867          54  1.23     731 0.25        95      0.0     0.15      0.3          0           1
7053        0.272           0  0.00     142 5.20       100      0.0     0.00      0.0          0           1
7054        0.076          50  0.00      18 1.50       285      0.0     1.00      0.2          0           1
7055        7.148          95  0.00      66 1.40       520      0.0     2.38     25.2          1           1
7056        0.218          41  0.00      10 0.58       314      0.0     0.00      0.0          1           1
7057        0.361          50  0.00      10 3.50       382      0.0     5.00      0.0          0           1
7058        0.127          50  0.00     118 1.40       230      0.0     0.50      0.0          0           1
     HighTotalFat HighCarbs
7000            1         0
7001            0         0
7006            0         0
7007            0         0
7011            1         0
7014            1         0
7015            0         0
7016            1         0
7023            0         1
7027            1         0
7035            0         1
7036            0         1
7037            0         0
7039            1         0
7053            0         0
7054            0         0
7055            1         0
7056            0         0
7057            0         0
7058            0         0
> tail( subset(USDA, HighProtein == 1), 20)$Description
 [1] PORK,CURED,BACON,CKD,BRLD,PAN-FRIED OR RSTD,RED NA CHEESE,PAST PROCESS,SWISS,LOFAT                   
 [3] TURKEY,LT OR DK MEAT,SMOKED,CKD,W/SKN,BONE REMOVED TURKEY,LT OR DK MEAT,SMOKED,CKD,SKN & BONE REMOVED
 [5] CHEESE,PAST PROCESS,CHEDDAR OR AMERICAN,LO NA      CHEESE,SWISS,LOW SODIUM                           
 [7] YEAST EXTRACT SPREAD                               CHICKEN,MEATLESS,BREADED,FRIED                    
 [9] MILLET,PUFFED                                      FRANKFURTER,LO NA                                 
[11] POPCORN,MICROWAVE,LOFAT&NA                         AMARANTH FLAKES                                   
[13] CHEESE,SWISS,LOW FAT                               CHEESE,MOZZARELLA,LO NA                           
[15] VITAL WHEAT GLUTEN                                 FROG LEGS,RAW                                     
[17] MACKEREL,SALTED                                    SCALLOP,(BAY&SEA),CKD,STMD                        
[19] SNAIL,RAW                                          TURTLE,GREEN,RAW                                  
7054 Levels: ABALONE,MIXED SPECIES,RAW ABALONE,MXD SP,CKD,FRIED ABIYUCH,RAW ... ZWIEBACK
> head( subset(USDA, HighCarbs == 1))$Description
[1] CHEESE,GJETOST                                  CREAM SUBSTITUTE,POWDERED                      
[3] DESSERT TOPPING,POWDERED                        DESSERT TOPPING,SEMI SOLID,FRZ                 
[5] MILK,DRY,WHL,W/ ADDED VITAMIN D                 MILK,DRY,NONFAT,REG,WO/ ADDED VIT A & VITAMIN D
7054 Levels: ABALONE,MIXED SPECIES,RAW ABALONE,MXD SP,CKD,FRIED ABIYUCH,RAW ... ZWIEBACK
> head( subset(USDA, HighCarbs == 1),25)$Description
 [1] CHEESE,GJETOST                                              
 [2] CREAM SUBSTITUTE,POWDERED                                   
 [3] DESSERT TOPPING,POWDERED                                    
 [4] DESSERT TOPPING,SEMI SOLID,FRZ                              
 [5] MILK,DRY,WHL,W/ ADDED VITAMIN D                             
 [6] MILK,DRY,NONFAT,REG,WO/ ADDED VIT A & VITAMIN D             
 [7] MILK,DRY,NONFAT,INST,W/ ADDED VIT A & VITAMIN D             
 [8] MILK,DRY,NONFAT,CA RED                                      
 [9] MILK,BUTTERMILK,DRIED                                       
[10] MILK,CND,COND,SWTND                                         
[11] MILK SHAKES,THICK CHOC                                      
[12] WHEY,ACID,DRIED                                             
[13] WHEY,SWEET,DRIED                                            
[14] EGG SUBSTITUTE,POWDER                                       
[15] MILK,DRY,NONFAT,REG,W/ ADDED VIT A & VITAMIN D              
[16] MILK,DRY,NONFAT,INST,WO/ ADDED VIT A & VITAMIN D            
[17] CHEESE SUB,MOZZARELLA                                       
[18] PARMESAN CHS TOPPING,FAT FREE                               
[19] YOGURT,CHOC,NONFAT MILK                                     
[20] KRAFT BREYERS LT N' LVLY LOWFAT STR'BERY YOGURT (1% MILKFAT)
[21] REDDI WIP FAT FREE WHIPPED TOPPING                          
[22] CREAM SUB,FLAV,LIQ                                          
[23] CREAM SUB,FLAV,PDR                                          
[24] EGG MIX,USDA CMDTY                                          
[25] MILK,DRY,WHL,WO/ ADDED VITAMIN D                            
7054 Levels: ABALONE,MIXED SPECIES,RAW ABALONE,MXD SP,CKD,FRIED ABIYUCH,RAW ... ZWIEBACK
> tail( subset(USDA, HighCarbs == 1),25)$Description
 [1] CEREALS RTE,POST,SHREDDED WHEAT N' BRAN,SPOON-SIZE COFFEE,DRY,PDR,W/ WHTNR,RED CAL                   
 [3] ROLLS,PUMPERNICKEL                                 SNACKS,CORN-BASED,EXTRUDED,CHIPS,UNSALTED         
 [5] FROZEN NOVELITES,JUC TYPE,JUC W/ CRM               MILLET,PUFFED                                     
 [7] CEREALS RTE,OAT BRAN FLAKES,HEALTH VALLEY          ICE CRM BAR,CHOC OR CARAMEL COVERED,W/NUTS        
 [9] CEREAL RTE,CRISPY BROWN RICE                       ICE CREAMS,CHOC,RICH                              
[11] SNACKS,TORTILLA CHIPS,LT (BAKED W/ LESS OIL)       CEREALS RTE,POST,HONEY BUNCHES OF OATS,HONEY RSTD 
[13] POPCORN,MICROWAVE,LOFAT&NA                         AMARANTH FLAKES                                   
[15] BREAKFAST BAR,CORN FLAKE CRUST W/FRUIT             SALAD DRSNG,MAYO DRSNG,DIET,NO CHOL               
[17] SWEETENERS,TABLETOP,FRUCTOSE,LIQ                   CELERY FLAKES,DRIED                               
[19] PUDDINGS,CHOC FLAVOR,LO CAL,INST,DRY MIX           JELLIES,RED SUGAR,HOME PRESERVED                  
[21] PIE FILLINGS,BLUEBERRY,CND                         COCKTAIL MIX,NON-ALCOHOLIC,CONCD,FRZ              
[23] PUDDINGS,CHOC FLAVOR,LO CAL,REG,DRY MIX            PUDDINGS,ALL FLAVORS XCPT CHOC,LO CAL,REG,DRY MIX 
[25] PUDDINGS,ALL FLAVORS XCPT CHOC,LO CAL,INST,DRY MIX
7054 Levels: ABALONE,MIXED SPECIES,RAW ABALONE,MXD SP,CKD,FRIED ABIYUCH,RAW ... ZWIEBACK
> head( subset(USDA, HighCarbs == 1),25)$Description
 [1] CHEESE,GJETOST                                              
 [2] CREAM SUBSTITUTE,POWDERED                                   
 [3] DESSERT TOPPING,POWDERED                                    
 [4] DESSERT TOPPING,SEMI SOLID,FRZ                              
 [5] MILK,DRY,WHL,W/ ADDED VITAMIN D                             
 [6] MILK,DRY,NONFAT,REG,WO/ ADDED VIT A & VITAMIN D             
 [7] MILK,DRY,NONFAT,INST,W/ ADDED VIT A & VITAMIN D             
 [8] MILK,DRY,NONFAT,CA RED                                      
 [9] MILK,BUTTERMILK,DRIED                                       
[10] MILK,CND,COND,SWTND                                         
[11] MILK SHAKES,THICK CHOC                                      
[12] WHEY,ACID,DRIED                                             
[13] WHEY,SWEET,DRIED                                            
[14] EGG SUBSTITUTE,POWDER                                       
[15] MILK,DRY,NONFAT,REG,W/ ADDED VIT A & VITAMIN D              
[16] MILK,DRY,NONFAT,INST,WO/ ADDED VIT A & VITAMIN D            
[17] CHEESE SUB,MOZZARELLA                                       
[18] PARMESAN CHS TOPPING,FAT FREE                               
[19] YOGURT,CHOC,NONFAT MILK                                     
[20] KRAFT BREYERS LT N' LVLY LOWFAT STR'BERY YOGURT (1% MILKFAT)
[21] REDDI WIP FAT FREE WHIPPED TOPPING                          
[22] CREAM SUB,FLAV,LIQ                                          
[23] CREAM SUB,FLAV,PDR                                          
[24] EGG MIX,USDA CMDTY                                          
[25] MILK,DRY,WHL,WO/ ADDED VITAMIN D                            
7054 Levels: ABALONE,MIXED SPECIES,RAW ABALONE,MXD SP,CKD,FRIED ABIYUCH,RAW ... ZWIEBACK
> save.image("C:\\C\\Education\\edX MIT 15.071 - The Analytics Edge\\Unit 01 Data Files\\USDA.RData")
> table(USDA$HighSodium)

   0    1 
4884 2090 
> table(USDA$HighSodium, USDA$HighFat)
Error in table(USDA$HighSodium, USDA$HighFat) : 
  all arguments must have the same length
> table(USDA$HighSodium, USDA$HighTotalFat)
   
       0    1
  0 3529 1355
  1 1378  712
> head( subset(USDA, HighSodium == 1 & HighTotalFat == 1), 20 )
     ID                         Description Calories Protein TotalFat Carbohydrate Sodium SaturatedFat
1  1001                    BUTTER,WITH SALT      717    0.85    81.11         0.06    714       51.368
2  1002            BUTTER,WHIPPED,WITH SALT      717    0.85    81.11         0.06    827       50.489
4  1004                         CHEESE,BLUE      353   21.40    28.74         2.34   1395       18.669
5  1005                        CHEESE,BRICK      371   23.24    29.68         2.79    560       18.764
6  1006                         CHEESE,BRIE      334   20.75    27.68         0.45    629       17.410
7  1007                    CHEESE,CAMEMBERT      300   19.80    24.26         0.46    842       15.259
8  1008                      CHEESE,CARAWAY      376   25.18    29.20         3.06    690       18.584
9  1009                      CHEESE,CHEDDAR      403   24.90    33.14         1.28    621       21.092
10 1010                     CHEESE,CHESHIRE      387   23.37    30.60         4.78    700       19.475
11 1011                        CHEESE,COLBY      394   23.76    32.11         2.57    604       20.218
18 1018                         CHEESE,EDAM      357   24.99    27.80         1.43    965       17.572
19 1019                         CHEESE,FETA      264   14.21    21.28         4.09   1116       14.946
20 1020                      CHEESE,FONTINA      389   25.60    31.14         1.55    800       19.196
21 1021                      CHEESE,GJETOST      466    9.65    29.51        42.65    600       19.160
22 1022                        CHEESE,GOUDA      356   24.94    27.44         2.22    819       17.614
23 1023                      CHEESE,GRUYERE      413   29.81    32.34         0.36    336       18.913
24 1024                    CHEESE,LIMBURGER      327   20.05    27.25         0.49    800       16.746
25 1025                     CHEESE,MONTEREY      373   24.48    30.28         0.68    536       19.066
26 1026          CHEESE,MOZZARELLA,WHL MILK      300   22.17    22.35         2.19    627       13.152
27 1027 CHEESE,MOZZARELLA,WHL MILK,LO MOIST      318   21.60    24.64         2.47    415       15.561
   Cholesterol Sugar Calcium Iron Potassium VitaminC VitaminE VitaminD HighSodium HighProtein HighTotalFat
1          215  0.06      24 0.02        24        0     2.32      1.5          1           0            1
2          219  0.06      24 0.16        26        0     2.32      1.5          1           0            1
4           75  0.50     528 0.31       256        0     0.25      0.5          1           1            1
5           94  0.51     674 0.43       136        0     0.26      0.5          1           1            1
6          100  0.45     184 0.50       152        0     0.24      0.5          1           1            1
7           72  0.46     388 0.33       187        0     0.21      0.4          1           1            1
8           93    NA     673 0.64        93        0       NA       NA          1           1            1
9          105  0.52     721 0.68        98        0     0.29      0.6          1           1            1
10         103    NA     643 0.21        95        0       NA       NA          1           1            1
11          95  0.52     685 0.76       127        0     0.28      0.6          1           1            1
18          89  1.43     731 0.44       188        0     0.24      0.5          1           1            1
19          89  4.09     493 0.65        62        0     0.18      0.4          1           1            1
20         116  1.55     550 0.23        64        0     0.27      0.6          1           1            1
21          94    NA     400 0.52      1409        0       NA       NA          1           0            1
22         114  2.22     700 0.24       121        0     0.24      0.5          1           1            1
23         110  0.36    1011 0.17        81        0     0.28      0.6          1           1            1
24          90  0.49     497 0.13       128        0     0.23      0.5          1           1            1
25          89  0.50     746 0.72        81        0     0.26      0.6          1           1            1
26          79  1.03     505 0.44        76        0     0.19      0.4          1           1            1
27          89  1.01     575 0.20        75        0     0.21      0.5          1           1            1
   HighCarbs
1          0
2          0
4          0
5          0
6          0
7          0
8          0
9          0
10         0
11         0
18         0
19         0
20         0
21         1
22         0
23         0
24         0
25         0
26         0
27         0
> head( subset(USDA, HighSodium == 1 & HighTotalFat == 1), 20 )$Description
 [1] BUTTER,WITH SALT                    BUTTER,WHIPPED,WITH SALT           
 [3] CHEESE,BLUE                         CHEESE,BRICK                       
 [5] CHEESE,BRIE                         CHEESE,CAMEMBERT                   
 [7] CHEESE,CARAWAY                      CHEESE,CHEDDAR                     
 [9] CHEESE,CHESHIRE                     CHEESE,COLBY                       
[11] CHEESE,EDAM                         CHEESE,FETA                        
[13] CHEESE,FONTINA                      CHEESE,GJETOST                     
[15] CHEESE,GOUDA                        CHEESE,GRUYERE                     
[17] CHEESE,LIMBURGER                    CHEESE,MONTEREY                    
[19] CHEESE,MOZZARELLA,WHL MILK          CHEESE,MOZZARELLA,WHL MILK,LO MOIST
7054 Levels: ABALONE,MIXED SPECIES,RAW ABALONE,MXD SP,CKD,FRIED ABIYUCH,RAW ... ZWIEBACK
> head( subset(USDA, HighSodium == 1 & HighTotalFat == 1), 100 )$Description
  [1] BUTTER,WITH SALT                                            
  [2] BUTTER,WHIPPED,WITH SALT                                    
  [3] CHEESE,BLUE                                                 
  [4] CHEESE,BRICK                                                
  [5] CHEESE,BRIE                                                 
  [6] CHEESE,CAMEMBERT                                            
  [7] CHEESE,CARAWAY                                              
  [8] CHEESE,CHEDDAR                                              
  [9] CHEESE,CHESHIRE                                             
 [10] CHEESE,COLBY                                                
 [11] CHEESE,EDAM                                                 
 [12] CHEESE,FETA                                                 
 [13] CHEESE,FONTINA                                              
 [14] CHEESE,GJETOST                                              
 [15] CHEESE,GOUDA                                                
 [16] CHEESE,GRUYERE                                              
 [17] CHEESE,LIMBURGER                                            
 [18] CHEESE,MONTEREY                                             
 [19] CHEESE,MOZZARELLA,WHL MILK                                  
 [20] CHEESE,MOZZARELLA,WHL MILK,LO MOIST                         
 [21] CHEESE,MOZZARELLA,PART SKIM MILK                            
 [22] CHEESE,MOZZARELLA,PART SKIM MILK,LO MOIST                   
 [23] CHEESE,MUENSTER                                             
 [24] CHEESE,NEUFCHATEL                                           
 [25] CHEESE,PARMESAN,GRATED                                      
 [26] CHEESE,PARMESAN,HARD                                        
 [27] CHEESE,PORT DE SALUT                                        
 [28] CHEESE,PROVOLONE                                            
 [29] CHEESE,ROMANO                                               
 [30] CHEESE,ROQUEFORT                                            
 [31] CHEESE,TILSIT                                               
 [32] CHEESE,PAST PROCESS,AMERICAN,FORT W/ VITAMIN D              
 [33] CHEESE,PAST PROCESS,PIMENTO                                 
 [34] CHEESE,PAST PROCESS,SWISS                                   
 [35] CHEESE FD,COLD PK,AMERICAN                                  
 [36] CHEESE FD,PAST PROCESS,AMERICAN,VITAMIN D FORT              
 [37] CHEESE FD,PAST PROCESS,SWISS                                
 [38] CHEESE SPRD,PAST PROCESS,AMERICAN                           
 [39] MILK,DRY,WHL,W/ ADDED VITAMIN D                             
 [40] EGG,WHOLE,DRIED                                             
 [41] EGG,WHL,DRIED,STABILIZED,GLUCOSE RED                        
 [42] EGG SUBSTITUTE,POWDER                                       
 [43] CHEESE,PARMESAN,SHREDDED                                    
 [44] CHEESE,GOAT,HARD TYPE                                       
 [45] CHEESE,GOAT,SEMISOFT TYPE                                   
 [46] CHEESE,GOAT,SOFT TYPE                                       
 [47] EGG,YOLK,RAW,FRZ,SALTED                                     
 [48] CHEESE SUB,MOZZARELLA                                       
 [49] CHEESE SAU,PREP FROM RECIPE                                 
 [50] CHEESE,MEXICAN,QUESO ANEJO                                  
 [51] CHEESE,MEXICAN,QUESO ASADERO                                
 [52] CHEESE,MEXICAN,QUESO CHIHUAHUA                              
 [53] USDA COMMODITY,CHS,CHEDDAR,RED FAT                          
 [54] KRAFT CHEEZ WHIZ PAST PROCESS CHS SAU                       
 [55] KRAFT VELVEETA PAST PROCESS CHS SPRD                        
 [56] KRAFT VELVEETA LT RED FAT PAST PROCESS CHS PRODUCT          
 [57] CHEESE,PARMESAN,DRY GRATED,RED FAT                          
 [58] CHEESE,PROVOLONE,RED FAT                                    
 [59] CHEESE,MEXICAN,BLEND,RED FAT                                
 [60] EGG MIX,USDA CMDTY                                          
 [61] MILK,DRY,WHL,WO/ ADDED VITAMIN D                            
 [62] CHEESE PRODUCT,PAST PROCESS,AMERICAN,RED FAT,FORT W/ VIT D  
 [63] PROTEIN SUPP,MILK BSD,MUSCLE MILK,PDR                       
 [64] CHEESE,DRY WHITE,QUESO SECO                                 
 [65] CHEESE,FRSH,QUESO FRESCO                                    
 [66] CHEESE,WHITE,QUESO BLANCO                                   
 [67] CHEESE,MEXICAN BLEND                                        
 [68] CHEESE PRODUCT,PAST PROCESS,AMERICAN,VITAMIN D FORT         
 [69] CHEESE,PAST PROCESS,AMERICAN,WO/ ADDED VITAMIN D            
 [70] CHEESE FD,PAST PROCESS,AMERICAN,WO/ ADDED VITAMIN D         
 [71] CHILI POWDER                                                
 [72] SALAD DRSNG,KRAFT MAYO LT MAYO                              
 [73] SALAD DRSNG,RUSSIAN DRSNG                                   
 [74] SALAD DRSNG,SESAME SD DRSNG,REG                             
 [75] SALAD DRSNG,1000 ISLAND,COMM,REG                            
 [76] SALAD DRSNG,MAYO TYPE,REG,W/SALT                            
 [77] SALAD DRSNG,FRENCH DRSNG,RED FAT                            
 [78] SALAD DRSNG,1000 ISLAND DRSNG,RED FAT                       
 [79] SALAD DRSNG,MAYO,SOYBN OIL,W/SALT                           
 [80] SALAD DRSNG,MAYO,SOYBN&SAFFLOWER OIL,W/SALT                 
 [81] SALAD DRSNG,MAYO,IMITN,SOYBN                                
 [82] SALAD DRSNG,MAYO,IMITN,SOYBN WO/CHOL                        
 [83] SANDWICH SPRD,W/CHOPD PICKLE,REG,UNSPEC OILS                
 [84] MARGARINE,REG,HARD,SOYBN (HYDR)                             
 [85] SALAD DRSNG,ITALIAN DRSNG,COMM,REG                          
 [86] SALAD DRSNG,FRENCH DRSNG,COMM,REG                           
 [87] VEG OIL SPRD,UNSPEC OILS,APPROX 37% FAT,W/ SALT             
 [88] SALAD DRSNG,FRENCH,HOME RECIPE                              
 [89] SALAD DRSNG,FRENCH,CTTNSD,OIL,HOME RECIPE                   
 [90] SALAD DRSNG,BLUE OR ROQUEFORT CHS DRSNG,COMM,REG            
 [91] MARGARINE-LIKE,MARGARINE-BUTTER BLEND,SOYBN OIL & BUTTER    
 [92] MARGARINE-LIKE,VEG OIL-BUTTER SPRD,TUB,W/ SALT              
 [93] BUTTER,LT,STK,W/SALT                                        
 [94] MEAT DRIPPINGS (LARD,BF TALLOW,MUTTON TALLOW)               
 [95] MARGARINE,REG,80% FAT,COMP,STK,W/ SALT                      
 [96] MARGARINE,REG,80% FAT,COMP,TUB,W/ SALT                      
 [97] MARGARINE-LIKE,VEG OIL SPRD,60% FAT,STK,W/ SALT             
 [98] MARGARINE-LIKE,VEG OIL SPRD,60% FAT,TUB,W/ SALT             
 [99] MARGARINE-LIKE,VEG OIL SPRD,60% FAT,STICK/TUB/BOTTLE,W/ SALT
[100] MARGARINE-LIKE SPRD W/ YOGURT,70% FAT,STK,W/ SALT           
7054 Levels: ABALONE,MIXED SPECIES,RAW ABALONE,MXD SP,CKD,FRIED ABIYUCH,RAW ... ZWIEBACK
> tapply(USDA$Iron, USDA$HighProtein, mean, na.rm=TRUE) # compute average iron, sorted by high and low protein
       0        1 
2.558945 3.197294 
> sd(USDA$Iron)
[1] NA
> sd(USDA$Iron, na.rm=TRUE)
[1] 6.019878
> tapply(USDA$VitaminC, USDA$HighCarbs, max, na.rm=TRUE) # compute highest Vitamin C level, sorted by high and low carb
     0      1 
1677.6 2400.0 
> sd(USDA$VitaminC, na.rm=TRUE)
[1] 71.25654
> tapply(USDA$VitaminC, USDA$HighCarbs, summary, na.rm=TRUE) # compute 
$`0`
    Min.  1st Qu.   Median     Mean  3rd Qu.     Max.     NA's 
   0.000    0.000    0.000    6.364    2.800 1678.000      248 

$`1`
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max.    NA's 
   0.00    0.00    0.20   16.31    4.50 2400.00      83 

> 
