# Introduction #

Estimate the position of the RA axis from two images


# Details #


`solve-field -B none -P none -M none -S none -R none -U none -N none --no-plots --overwrite --temp-dir .npa --dir .npa --out npa_RA1 --downsample 2 --scale-low 10 --scale-high 30 --scale-units app -T /home/stephane/polaris/vertical.jpg`

`solve-field -B none -P none -M none -S none -R none -U none -N none --no-plots --overwrite --temp-dir .npa --dir .npa --out npa_RA2 --downsample 2 --scale-low 10 --scale-high 30 --scale-units app -T /home/stephane/polaris/horizontal.jpg`

`Compiling ra_gsl_solver.exe`

`gcc -Wall -c -I /home/astrometry.net-0.38/util -I /home/astrometry.net-0.38/qfits-an/include .npa/ra_gsl_solver.c -o .npa/ra_gsl_solver.o`

`gcc .npa/ra_gsl_solver.o -lgsl /home/astrometry.net-0.38/gsl-an/libgsl-an.a /home/astrometry.net-0.38/util/libanutils.a /home/astrometry.net-0.38/qfits-an/lib/libqfits.a -lpthread -o .npa/ra_gsl_solver.exe`

###############################################################################################################
| |RA Position 1|RA Position 2|
|:|:------------|:------------|
| |vertical.jpg |horizontal.jpg|
|Polaris (Alpha Ursa Minoris) x pixel:|                    2435|                            2310|
|Polaris (Alpha Ursa Minoris) y pixel:|                    1271|                            1129|
|Lambda Ursa Minoris (opposite the Engagement Ring):|      2548   |                            2627|
|Lambda Ursa Minoris (opposite the Engagement Ring):|      958    |                             1218|
|After offset Polaris x pixel:|                            2449|                            2307|
|After offset Polaris y pixel:|                            1275|                            1143|
|After offset Lambda: x pixel:|                            2562|                            2624|
|After offset Lambda: y pixel:|                            962|                             1232|
|PA error (arc deg:minutes:seconds)|                       0:4:14|                          0:4:12|

---

|RA axis (intersection of perpendicular bisectors) x|      2448   |
|RA axis (intersection of perpendicular bisectors) y|      1132   |
|NCP x:|                                                   2434|                            2451|
|NCP y:|                                                   1128|                            1118|
|offset mount in x (pixels):|                              -14|                             3|
|offset mount in y (pixels):|                              -4|                              -14|
|offset mount in x (degrees:minutes:seconds)|              0:4:5|                           0:0:52|
|offset mount in y (degrees:minutes:seconds)|              0:1:9|                           0:4:6|

---

|J2000 Declination of NCP (deg):|                          89.933|                          89:55:57.1|
|J2000 Right Ascension of NCP (hr):|                       23.995|                          23:59:41.3|
|image scale (arc-seconds / pixel)|                        17.42|
|Exposure time (seconds):|                                 2.00|
|At declination (degrees):|                                0.00|
|error induced drift :|                                    1.00   arcseconds|
|error induced drift :|                                    0.00   pixels|