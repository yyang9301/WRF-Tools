&noah_mp
 dveg                               = 2,        ! Noah-MP Dynamic Vegetation option:
                                                !    1 = Off (LAI from table; FVEG = shdfac)
                                                !    2 = On
                                                !    3 = Off (LAI from table; FVEG calculated)
                                                !    4 = Off (LAI from table; FVEG = maximum veg. fraction)
 opt_crs                            = 1,        ! Noah-MP Stomatal Resistance option:
                                                !    1 = Ball-Berry; 2 = Jarvis
 opt_sfc                            = 1         ! Noah-MP surface layer drag coefficient calculation
                                                !    1 = Monin-Obukhov; 2 = original Noah (Chen97);
                                                !    3 = MYJ consistent; 4 = YSU consistent.
 opt_btr                            = 1,        ! Noah-MP Soil Moisture Factor for Stomatal Resistance
                                                !    1 = Noah; 2 = CLM; 3 = SSiB
 opt_run                            = 4,        ! Noah-MP Runoff and Groundwater option
                                                !    1 = TOPMODEL with groundwater
                                                !    2 = TOPMODEL with equilibrium water table
                                                !    3 = original surface and subsurface runoff (free drainage)
                                                !    4 = BATS surface and subsurface runoff (free drainage)
 opt_frz                            = 1,        ! Noah-MP Supercooled Liquid Water option
                                                !    1 = No iteration; 2 = Koren's iteration
 opt_inf                            = 1,        ! Noah-MP Soil Permeability option
                                                !    1 = Linear effects, more permeable;
                                                !    2 = Non-linear effects, less permeable
 opt_rad                            = 1,        ! Noah-MP Radiative Transfer option
                                                !    1 = Modified two-stream;
                                                !    2 = Two-stream applied to grid-cell
                                                !    3 = Two-stream applied to vegetated fraction
 opt_alb                            = 1,        ! Noah-MP Ground Surface Albedo option
                                                !    1 = BATS; 2 = CLASS
 opt_snf                            = 2,        ! Noah-MP Precipitation Partitioning between snow and rain
                                                !    1 = Jordan (1991)
                                                !    2 = BATS:  Snow when SFCTMP < TFRZ+2.2
                                                !    3 = Snow when SFCTMP < TFRZ
 opt_tbot                           = 2,        ! Noah-MP Soil Temperature Lower Boundary Condition
                                                !    1 = Zero heat flux
                                                !    2 = TBOT at 8 m from input file
 opt_stc                            = 1,        ! Noah-MP Snow/Soil temperature time scheme
                                                !    1 = semi-implicit
                                                !    2 = full-implicit
 /
