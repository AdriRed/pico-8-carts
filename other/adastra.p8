pico-8 cartridge // http://www.pico-8.com
version 18
__lua__
-- ad astra by ate bit
-- code/music:4mat gfx:ilkke
mesh = {}
meshcol = {}
meshsize = {}
mesh[1] =  {-1.000000,-0.665174,-0.98243,1.000000,-0.136674,1.00000,-1.000000,-0.136674,1.00000,-0.758441,0.806152,1.71490,0.419922,0.639004,1.27870,0.758441,0.806152,1.71490,-1.000000,-0.665174,-0.98243,1.000000,-0.665174,-0.98243,1.000000,-0.136674,1.00000,-0.758441,0.806152,1.71490,-0.419922,0.639004,1.27870,0.419922,0.639004,1.27870,-1.000000,-0.136674,1.00000,-1.000000,0.127128,-1.00000,-1.000000,-0.665174,-0.98243,1.000000,0.127128,-1.00000,1.000000,-0.136674,1.00000,1.000000,-0.665174,-0.98243,-1.000000,-0.665174,-0.98243,0.477404,-0.661048,-3.17931,1.000000,-0.665174,-0.98243,1.000000,-0.136674,1.00000,-0.758441,0.057174,1.71490,-1.000000,-0.136674,1.00000,0.758441,0.806152,1.71490,0.419922,0.224321,1.27870,0.758441,0.057174,1.71490,-0.758441,0.057174,1.71490,-0.419922,0.639004,1.27870,-0.758441,0.806152,1.71490,-1.000000,-0.665174,-0.98243,-0.477404,-0.661048,-3.17931,0.477404,-0.661048,-3.17931,1.000000,-0.136674,1.00000,0.758441,0.057174,1.71490,-0.758441,0.057174,1.71490,0.758441,0.806152,1.71490,0.419922,0.639004,1.27870,0.419922,0.224321,1.27870,-0.758441,0.057174,1.71490,-0.419922,0.224321,1.27870,-0.419922,0.639004,1.27870,-1.000000,-0.136674,1.00000,-2.690042,-0.256182,-0.24140,-1.000000,0.127128,-1.00000,1.000000,-0.136674,1.00000,2.690042,-0.256182,-0.24140,2.690042,-0.256182,1.28095,0.000000,2.409044,1.00018,-0.267031,1.002551,1.00018,0.267031,1.002551,1.00018,-1.000000,-0.136674,1.00000,-2.690042,-0.256182,1.28095,-2.690042,-0.256182,-0.24140,1.000000,-0.136674,1.00000,1.000000,0.127128,-1.00000,2.690042,-0.256182,-0.24140,1.000000,1.000000,1.00000,0.758441,0.057174,1.71490,1.000000,-0.136674,1.00000,1.000000,0.127128,-1.00000,0.477404,-0.661048,-3.17931,0.477404,-0.296450,-3.40142,-1.000000,0.127128,-1.00000,-0.477404,-0.661048,-3.17931,-1.000000,-0.665174,-0.98243,-1.000000,1.000000,1.00000,-0.758441,0.057174,1.71490,-0.758441,0.806152,1.71490,1.000000,1.000000,1.00000,0.758441,0.806152,1.71490,0.758441,0.057174,1.71490,1.000000,0.127128,-1.00000,1.000000,-0.665174,-0.98243,0.477404,-0.661048,-3.17931,-1.000000,0.127128,-1.00000,-0.477404,-0.296450,-3.40142,-0.477404,-0.661048,-3.17931,-1.000000,1.000000,1.00000,-1.000000,-0.136674,1.00000,-0.758441,0.057174,1.71490,1.000000,1.000000,-1.00000,-1.000000,1.000000,1.00000,1.000000,1.000000,1.00000,1.000000,1.000000,-1.00000,-1.000000,1.000000,-1.00000,-1.000000,1.000000,1.00000,1.000000,1.000000,-1.00000,-0.477404,-0.296450,-3.40142,-1.000000,1.000000,-1.00000,1.000000,1.000000,-1.00000,0.477404,-0.296450,-3.40142,-0.477404,-0.296450,-3.40142,-1.000000,-0.136674,1.00000,-1.000000,1.000000,1.00000,-2.690042,-0.256182,1.28095,1.000000,1.000000,1.00000,1.000000,-0.136674,1.00000,2.690042,-0.256182,1.28095,-1.000000,1.000000,-1.00000,-1.000000,0.127128,-1.00000,-2.690042,-0.256182,-0.24140,1.000000,0.127128,-1.00000,1.000000,1.000000,-1.00000,2.690042,-0.256182,-0.24140,0.000000,2.409044,0.29770,0.267031,1.002551,1.00018,0.267031,1.002551,-0.53567,0.000000,2.409044,0.29770,-0.267031,1.002551,1.00018,0.000000,2.409044,1.00018,0.000000,2.409044,0.29770,0.000000,2.409044,1.00018,0.267031,1.002551,1.00018,0.000000,2.409044,0.29770,-0.267031,1.002551,-0.53567,-0.267031,1.002551,1.00018,-0.419922,0.639004,1.27870,0.419922,0.224321,1.27870,0.419922,0.639004,1.27870,-0.419922,0.639004,1.27870,-0.419922,0.224321,1.27870,0.419922,0.224321,1.27870,1.000000,1.000000,-1.00000,1.000000,0.127128,-1.00000,0.477404,-0.296450,-3.40142,-1.000000,0.127128,-1.00000,-1.000000,1.000000,-1.00000,-0.477404,-0.296450,-3.40142,0.477404,-0.296450,-3.40142,-0.477404,-0.661048,-3.17931,-0.477404,-0.296450,-3.40142,-1.000000,1.000000,1.00000,0.758441,0.806152,1.71490,1.000000,1.000000,1.00000,0.758441,0.057174,1.71490,-0.419922,0.224321,1.27870,-0.758441,0.057174,1.71490,0.477404,-0.296450,-3.40142,0.477404,-0.661048,-3.17931,-0.477404,-0.661048,-3.17931,-1.000000,1.000000,1.00000,-0.758441,0.806152,1.71490,0.758441,0.806152,1.71490,0.758441,0.057174,1.71490,0.419922,0.224321,1.27870,-0.419922,0.224321,1.27870,-1.000000,1.000000,1.00000,-2.690042,-0.256182,-0.24140,-2.690042,-0.256182,1.28095,1.000000,1.000000,1.00000,2.690042,-0.256182,-0.24140,1.000000,1.000000,-1.00000,0.000000,2.409044,0.29770,0.267031,1.002551,-0.53567,-0.267031,1.002551,-0.53567,-1.000000,1.000000,1.00000,-1.000000,1.000000,-1.00000,-2.690042,-0.256182,-0.24140,1.000000,1.000000,1.00000,2.690042,-0.256182,1.28095,2.690042,-0.256182,-0.24140,0}
meshcol[1] =  {0,0,0,0,1,1,1,1,1,1,1,1,1,1,2,2,2,2,2,5,5,5,5,5,5,5,5,6,6,7,7,8,8,8,8,8,8,8,8,9,9,12,12,13,13,13,13,13,13,14,14,14,14,14,0}
meshsize[1] =  54
mesh[2] =  {0.000000,-1.000000,0.00000,0.425323,-0.850654,0.30901,-0.162456,-0.850654,0.49999,0.723607,-0.447220,0.52572,0.425323,-0.850654,0.30901,0.850648,-0.525736,0.00000,0.000000,-1.000000,0.00000,-0.162456,-0.850654,0.49999,-0.525730,-0.850652,0.00000,0.000000,-1.000000,0.00000,-0.525730,-0.850652,0.00000,-0.162456,-0.850654,-0.49999,0.000000,-1.000000,0.00000,-0.162456,-0.850654,-0.49999,0.425323,-0.850654,-0.30901,0.723607,-0.447220,0.52572,0.850648,-0.525736,0.00000,0.951058,0.000000,0.30901,-0.276388,-0.447220,0.85064,0.262869,-0.525738,0.80901,0.000000,0.000000,1.00000,-0.894426,-0.447216,0.00000,-0.688189,-0.525736,0.49999,-0.951058,0.000000,0.30901,-0.276388,-0.447220,-0.85064,-0.688189,-0.525736,-0.49999,-0.587786,0.000000,-0.80901,0.723607,-0.447220,-0.52572,0.262869,-0.525738,-0.80901,0.587786,0.000000,-0.80901,0.723607,-0.447220,0.52572,0.951058,0.000000,0.30901,0.587786,0.000000,0.80901,-0.276388,-0.447220,0.85064,0.000000,0.000000,1.00000,-0.587786,0.000000,0.80901,-0.894426,-0.447216,0.00000,-0.951058,0.000000,0.30901,-0.951058,0.000000,-0.30901,-0.276388,-0.447220,-0.85064,-0.587786,0.000000,-0.80901,0.000000,0.000000,-1.00000,0.723607,-0.447220,-0.52572,0.587786,0.000000,-0.80901,0.951058,0.000000,-0.30901,0.276388,0.447220,0.85064,0.688189,0.525736,0.49999,0.162456,0.850654,0.49999,-0.723607,0.447220,0.52572,-0.262869,0.525738,0.80901,-0.425323,0.850654,0.30901,-0.723607,0.447220,-0.52572,-0.850648,0.525736,0.00000,-0.425323,0.850654,-0.30901,0.276388,0.447220,-0.85064,-0.262869,0.525738,-0.80901,0.162456,0.850654,-0.49999,0.894426,0.447216,0.00000,0.688189,0.525736,-0.49999,0.525730,0.850652,0.00000,0.525730,0.850652,0.00000,0.162456,0.850654,-0.49999,0.000000,1.000000,0.00000,0.525730,0.850652,0.00000,0.688189,0.525736,-0.49999,0.162456,0.850654,-0.49999,0.688189,0.525736,-0.49999,0.276388,0.447220,-0.85064,0.162456,0.850654,-0.49999,0.162456,0.850654,-0.49999,-0.425323,0.850654,-0.30901,0.000000,1.000000,0.00000,0.162456,0.850654,-0.49999,-0.262869,0.525738,-0.80901,-0.425323,0.850654,-0.30901,-0.262869,0.525738,-0.80901,-0.723607,0.447220,-0.52572,-0.425323,0.850654,-0.30901,-0.425323,0.850654,-0.30901,-0.425323,0.850654,0.30901,0.000000,1.000000,0.00000,-0.425323,0.850654,-0.30901,-0.850648,0.525736,0.00000,-0.425323,0.850654,0.30901,-0.850648,0.525736,0.00000,-0.723607,0.447220,0.52572,-0.425323,0.850654,0.30901,-0.425323,0.850654,0.30901,0.162456,0.850654,0.49999,0.000000,1.000000,0.00000,-0.425323,0.850654,0.30901,-0.262869,0.525738,0.80901,0.162456,0.850654,0.49999,-0.262869,0.525738,0.80901,0.276388,0.447220,0.85064,0.162456,0.850654,0.49999,0.162456,0.850654,0.49999,0.525730,0.850652,0.00000,0.000000,1.000000,0.00000,0.162456,0.850654,0.49999,0.688189,0.525736,0.49999,0.525730,0.850652,0.00000,0.688189,0.525736,0.49999,0.894426,0.447216,0.00000,0.525730,0.850652,0.00000,0.951058,0.000000,-0.30901,0.688189,0.525736,-0.49999,0.894426,0.447216,0.00000,0.951058,0.000000,-0.30901,0.587786,0.000000,-0.80901,0.688189,0.525736,-0.49999,0.587786,0.000000,-0.80901,0.276388,0.447220,-0.85064,0.688189,0.525736,-0.49999,0.000000,0.000000,-1.00000,-0.262869,0.525738,-0.80901,0.276388,0.447220,-0.85064,0.000000,0.000000,-1.00000,-0.587786,0.000000,-0.80901,-0.262869,0.525738,-0.80901,-0.587786,0.000000,-0.80901,-0.723607,0.447220,-0.52572,-0.262869,0.525738,-0.80901,-0.951058,0.000000,-0.30901,-0.850648,0.525736,0.00000,-0.723607,0.447220,-0.52572,-0.951058,0.000000,-0.30901,-0.951058,0.000000,0.30901,-0.850648,0.525736,0.00000,-0.951058,0.000000,0.30901,-0.723607,0.447220,0.52572,-0.850648,0.525736,0.00000,-0.587786,0.000000,0.80901,-0.262869,0.525738,0.80901,-0.723607,0.447220,0.52572,-0.587786,0.000000,0.80901,0.000000,0.000000,1.00000,-0.262869,0.525738,0.80901,0.000000,0.000000,1.00000,0.276388,0.447220,0.85064,-0.262869,0.525738,0.80901,0.587786,0.000000,0.80901,0.688189,0.525736,0.49999,0.276388,0.447220,0.85064,0.587786,0.000000,-0.80901,0.000000,0.000000,-1.00000,0.276388,0.447220,-0.85064,0.587786,0.000000,-0.80901,0.262869,-0.525738,-0.80901,0.000000,0.000000,-1.00000,0.262869,-0.525738,-0.80901,-0.276388,-0.447220,-0.85064,0.000000,0.000000,-1.00000,-0.587786,0.000000,-0.80901,-0.951058,0.000000,-0.30901,-0.723607,0.447220,-0.52572,-0.587786,0.000000,-0.80901,-0.688189,-0.525736,-0.49999,-0.951058,0.000000,-0.30901,-0.688189,-0.525736,-0.49999,-0.894426,-0.447216,0.00000,-0.951058,0.000000,-0.30901,-0.951058,0.000000,0.30901,-0.587786,0.000000,0.80901,-0.723607,0.447220,0.52572,-0.951058,0.000000,0.30901,-0.688189,-0.525736,0.49999,-0.587786,0.000000,0.80901,-0.688189,-0.525736,0.49999,-0.276388,-0.447220,0.85064,-0.587786,0.000000,0.80901,0.000000,0.000000,1.00000,0.587786,0.000000,0.80901,0.276388,0.447220,0.85064,0.000000,0.000000,1.00000,0.262869,-0.525738,0.80901,0.587786,0.000000,0.80901,0.951058,0.000000,0.30901,0.850648,-0.525736,0.00000,0.951058,0.000000,-0.30901,0.425323,-0.850654,-0.30901,0.262869,-0.525738,-0.80901,0.723607,-0.447220,-0.52572,0.425323,-0.850654,-0.30901,-0.162456,-0.850654,-0.49999,0.262869,-0.525738,-0.80901,-0.162456,-0.850654,-0.49999,-0.276388,-0.447220,-0.85064,0.262869,-0.525738,-0.80901,-0.162456,-0.850654,-0.49999,-0.688189,-0.525736,-0.49999,-0.276388,-0.447220,-0.85064,-0.162456,-0.850654,-0.49999,-0.525730,-0.850652,0.00000,-0.688189,-0.525736,-0.49999,-0.525730,-0.850652,0.00000,-0.894426,-0.447216,0.00000,-0.688189,-0.525736,-0.49999,-0.525730,-0.850652,0.00000,-0.688189,-0.525736,0.49999,-0.894426,-0.447216,0.00000,-0.525730,-0.850652,0.00000,-0.162456,-0.850654,0.49999,-0.688189,-0.525736,0.49999,-0.162456,-0.850654,0.49999,-0.276388,-0.447220,0.85064,-0.688189,-0.525736,0.49999,0.850648,-0.525736,0.00000,0.425323,-0.850654,-0.30901,0.723607,-0.447220,-0.52572,0.850648,-0.525736,0.00000,0.425323,-0.850654,0.30901,0.425323,-0.850654,-0.30901,0.425323,-0.850654,0.30901,0.000000,-1.000000,0.00000,0.425323,-0.850654,-0.30901,-0.162456,-0.850654,0.49999,0.262869,-0.525738,0.80901,-0.276388,-0.447220,0.85064,-0.162456,-0.850654,0.49999,0.425323,-0.850654,0.30901,0.262869,-0.525738,0.80901,0.425323,-0.850654,0.30901,0.723607,-0.447220,0.52572,0.262869,-0.525738,0.80901,0.262869,-0.525738,0.80901,0.723607,-0.447220,0.52572,0.587786,0.000000,0.80901,0.850648,-0.525736,0.00000,0.723607,-0.447220,-0.52572,0.951058,0.000000,-0.30901,0.587786,0.000000,0.80901,0.951058,0.000000,0.30901,0.688189,0.525736,0.49999,0.951058,0.000000,0.30901,0.894426,0.447216,0.00000,0.688189,0.525736,0.49999,0.951058,0.000000,0.30901,0.951058,0.000000,-0.30901,0.894426,0.447216,0.00000,0}
meshcol[2] =  {0,0}
meshsize[2] =  80
part_duration = {1,10,6,5,4,4,1,3,7,7,9,5,1,255}
part_data = {99,1,0.0,0.0,0.0,0.0,17.0,16.0,0.0,0.0,3.0,0.0,-1.0,0.0,1.0,0.0,-8.0,0.0,9,8.0,true,9,0.0,false,1,66.0,20.0,200.0,68.0,13.0,7.0,180.0,0.0,2.0,0.0,-1.0,0.0,0.0,0.0,-200.0,0.0,1,66.0,20.0,410.0,18.0,13.0,7.0,180.0,0.0,1.0,0.0,-1.0,0.0,0.0,0.0,-300.0,0.0,11,2,0.0,200.0,64.0,64.0,0.0,0.0,0.0,0.0,2.e-004,0.0,0.0,0.0,-1.6,1.0,200.0,0.0,1.0,6.0,125.0,13,1,3,1,64.0,1.0,910.0,40.0,16.0,6.0,0.0,0.0,0.0,0.0,-1.0,0.0,0.0,0.0,-1.0,0.0,5,10.0,0.0,40.0,-2.0,76.0,-1.0,40.0,2.0,76.0,1.0,128.0,-2.0,0.0,0.0,-2.0,0.0,128.0,0.0,99,1,96.0,6.0,0.0,-8.0,16.0,17.0,0.0,-8.0,0.0,11.0,0.0,1.0,0.0,-1.0,0.0,0.0,2,0.0,200.0,64.0,64.0,0.0,0.0,0.0,0.004,0.002,-0.003,0.0,0.0,1.6,1.0,200.0,0.0,1.0,43.0,70.0,13,1,1,3,0.0,1.0,64.0,64.0,0.0,0.0,0.0,0.004,0.002,-0.003,500.0,2.0,0.0,0.0,1.0,5,0.0,10.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,1.0,0.0,1.0,128.0,-1.0,128.0,-1.0,99,1,96.0,0.0,0.0,0.0,16.0,16.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,2,1.0,0.004,0.002,-0.003,0.0,0.0,1.6,1.0,200.0,0.0,1.0,35.0,3,1.0,0.0,0.0,0.01,10.0,1.0,0.0,0.0,15,5,0.0,0.0,166.0,-2.0,0.0,0.0,166.0,0.0,128.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,99,1,112.0,16.0,0.0,-8.0,16.0,17.0,0.0,-8.0,0.0,3.0,0.0,1.0,0.0,-1.0,0.0,0.0,3,0.0,900.0,48.0,80.0,-0.25,-0.5,0.0,-4.e-004,0.0,0.0,50.0,2.5,0.09,-0.03,1.0,12,0.0,4.0,2.0,10.0,-0.026,-0.014,-0.017,0.005,0.003,-0.007,0.017,0.012,0.0,32.0,0.0,32.0,249.0,5,5.0,0.0,0.0,0.0,129.0,-2.0,129.0,0.0,128.0,0.0,0.0,0.0,0.0,0.0,128.0,0.0,128.0,-2.0,99,6,9,0.0,false,9,8.0,true,8,1.0,0.0,1,80.0,16.0,0.0,0.0,16.0,16.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,5,0.0,5.0,0.0,0.0,129.0,-4.0,129.0,0.0,128.0,0.0,0.0,2.0,0.0,0.0,129.0,0.0,128.0,0.0,99,1,80.0,4.0,0.0,47.0,16.0,12.0,0.0,0.0,0.0,7.0,0.0,-1.0,0.0,0.0,0.0,0.0,3,0.0,50.0,148.0,48.0,0.5,0.0,0.0,0.0,-0.001,3.e-004,700.0,4.0,-1.1,0.15,1.0,4,22.0,0x6f00,0x7dc0,9,8.0,true,1,80.0,0.0,0.0,118.0,16.0,4.0,0.0,0.0,0.0,4.0,0.0,-1.0,0.0,0.0,0.0,0.0,99,1,80.0,4.0,0.0,32.0,16.0,12.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,3,1.0,7.e-004,0.0,3.e-004,1500.0,4.0,1.07,0.03,4,22.0,0x6f00,0x7dc0,12,0.0,3.0,1.0,51.0,-0.026,-0.014,-0.017,0.005,0.003,-0.007,0.017,0.012,96.0,6.0,0.0,32.0,249.0,9,8.0,true,1,80.0,0.0,0.0,96.0,16.0,4.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,99,9,8.0,true,1,80.0,4.0,0.0,32.0,16.0,5.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,1,66.0,20.0,210.0,28.0,13.0,7.0,210.0,0.0,1.0,0.0,-1.0,0.0,0.0,0.0,-200.0,0.0,1,80.0,9.0,0.0,72.0,16.0,7.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,2,0.0,1.0,64.0,128.0,0.0,0.0,0.0,0.004,0.005,-0.007,0.0,0.0,0.0,2.0,250.0,1.0,0.0,34.0,125.0,13,2,3,2,4,22.0,0x6f00,0x7dc0,12,0.0,3.0,1.0,51.0,-0.026,-0.014,-0.017,0.005,0.003,-0.007,0.017,0.012,96.0,6.0,0.0,32.0,249.0,1,80.0,0.0,0.0,96.0,16.0,4.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,5,0.0,0.0,0.0,0.0,0.0,0.0,128.0,0.0,0.0,2.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,99,8,14.0,1.0,9,14.0,true,8,2.0,4.0,7,10,8,5.0,7.0,8,1.0,0.0,9,1.0,false,1,64.0,7.0,0.0,152.0,16.0,4.0,0.0,0.0,0.0,1.0,0.0,-1.0,0.0,0.0,0.0,0.0,1,64.0,12.0,0.0,-228.0,16.0,4.0,0.0,96.0,0.0,1.0,0.0,1.0,0.0,0.0,0.0,97.0,10,11,4,16.0,0x7300,0x7a40,8,5.0,4.0,1,112.0,0.0,0.0,32.0,16.0,12.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,5,1.0,0.0,0.0,0.0,64.0,-1.0,128.0,0.0,64.0,1.0,0.0,2.0,0.0,0.0,128.0,0.0,128.0,0.0,99,1,96.0,16.0,0.0,0.0,16.0,16.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,3,0.0,5000.0,64.0,96.0,0.0,0.0,0.0,0.009,0.011,-0.005,2000.0,40.0,0.0,0.0,2.0,4,23.0,0x7380,0x7fc0,5,7.0,0.0,64.0,-1.0,64.0,-1.0,64.0,1.0,64.0,1.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,99,16,2,0.0,150.0,60.0,36.0,0.0,0.0,0.0,0.004,0.005,-0.007,0.0,0.0,0.0,1.0,150.0,0.0,0.0,35.0,125.0,13,2,4,2,17,15,5,0.0,7.0,129.0,-2.0,0.0,0.0,129.0,0.0,128.0,0.0,0.0,1.0,0.0,1.0,128.0,-1.0,128.0,-1.0,99,99}
function _init()


part_ptr=1

displaylist={}
updatelist={}
dlist=1
ulist=1


curtimer = 1
curpart = 1
loopmode = false
init = true
curpattern = true
cursong = 0

--part transitions
transition = false
transpos={}
transadd={}
transtimer = 0
transposbuf={}
transaddbuf={}

--map layer manager
layerxmap={}
layerymap={}
layerxpos={}
layerypos={}
layerxsize={}
layerysize={}
layerxposreset={}
layeryposreset={}
layerxspeed={}
layeryspeed={}
layerxtemp={}
layerytemp={}
layerxposadd={}
layeryposadd={}
layerxmapadd={}
layerymapadd={}
layerxposmax={}
layeryposmax={}
layernumber = 0


-- sun shade
sunx = 0
suny = 0
sundist1 = 0
sundist2 = 0

-- vector bobs/vector arrays
shadestart = 0



threedx ={}
threedy ={}
threedz ={}

artx = {}
arty = {}
artz = {}
artc = {}
artm = {}
artp = {}



tempc = 0
tempm = 0

bobmesh = {}
maxballs = 0
bobmath = {}

-- filled vectors
trilistm = {}
trilistc = {} 
tempx = {}
tempy = {}
tempz = {}
tricol = {}
trimath = {}
trisize = 0

shade = {7,15,10,9,4,5,2,1}
blenk = 0

-- water effect
smain1 = 0
smain2 = 0
sadd1 = 0
sadd2 = 0
waterfig = {}

-- landscape

ydist = {1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,2,2,2,2,2,2,2,3,3,3,3,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,5,5,5,5,5,5,5,5,6,6,6,6,6,6,6,6,6,7,7,7,7,7,7,7,7,7}
xdist = {0,1,1,1,1,1,2,2,2,2,2,2,2,3,3,3,3,3,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4} 
oland = 0

-- vertical rasters
vl = -1
x1 = 0.4
x2 = 0.3
b1 = 0.7
b2 = 0.4
tx = 0
angle = 0
sprx={}
spry={}
sprs={}

-- pallete info
palswapfrom = {}
palswapto = {}
palttable = {}
paltset = {}

-- plasma
plasmax={}
plasmay={}
plasdata={}

ycalc1 = 0
ycalc2 = 0
xcalc1 = 0
xcalc2 = 0
yseed1 = 0
yseed2 = 0
xseed1 = 0
xseed2 = 0

ready = 0

-- scroller
siney = {}

bigx = 0
bigy = 0
bigpix = 7
bigpiy = 0
bigpiy2 = 0.3
bigstart1 = 0.5
bigstart2 = 1.4

-- mirror copy
offsety = 0
offsetpos = 0


-- misc. inits

cc = 0
cn = 1

q = 0
v = 0

 for q=0,7 do
 
  for y=0,7 do

   for x = 0,4 do
  
   poke(0x4300+512*flr((0+q)/16)+(band((0+q),15)*4)+(y*64)+x,peek(0x0000+512*flr((248+q)/16)+(band((248+q),15)*4)+(y*64)+x))
  
   end
  
  end
 
 end
 
music(0,4000)


end


function _draw()

 
 cls()
 pal()
 palt() 

 currentmap = 1    
 currentpal = 0
 currentpalt = 0
 
 
 
 for i=1,dlist do
		
  if (displaylist[i] == 1) then
  mapmanagerdraw(currentmap)
  currentmap = currentmap + 1
  end

  if (displaylist[i] == 2) then
   vectorupdate(1,maxballs,bobmath[4],bobmath[5],bobmath[6],bobmath[1],bobmath[2],bobmath[3])
   bobcalc() 
   if (bobmath[16] == 1) then  
   bobsadd()
   end
   bobsdraw(bobmath[13])
  end
  
  if (displaylist[i] == 3) then
   vectorupdate(starttri,maxtri,trimath[4],trimath[5],trimath[6],trimath[1],trimath[2],trimath[3])
   vectordraw()
   vectorcalc()
  end

  if (displaylist[i] == 4) then
   water()
  end

  if (displaylist[i] == 5) then
  transitionupdate()
  end 
  
  if (displaylist[i] == 6) then
   landscape()  
  end

  if (displaylist[i] == 7) then
   drawvertical()
  end

  if (displaylist[i] == 8) then
   currentpal = currentpal + 1
   pal(palswapfrom[currentpal],palswapto[currentpal])  
  end

  if (displaylist[i] == 9) then
   currentpalt = currentpalt + 1  
   palt(palttable[currentpalt],paltset[currentpalt])
  end
  
  if (displaylist[i] == 10) then
   pal()
  end  

  if (displaylist[i] == 11) then
   palt()
  end

  if (displaylist[i] == 12) then
   plasmadraw()
  end
  
  if (displaylist[i] == 15) then
   drawscroll()
  end

  if (displaylist[i] == 16) then
   mirrorcopystart()
  end
  
  if (displaylist[i] == 17) then
   mirrorcopyend()
  end
   
 end
 
  
 
end





function _update()

 demosystemupdate()

   if (layernumber > 0) then  
   mapmanagerupdate()
   end
   
 for i=1,ulist do
  if (updatelist[i] == 7) then
   updatevertical()
  end
  if (updatelist[i] == 12) then
   plasmaupdate()
  end  
  if (updatelist[i] == 15) then
   updatescroll()
  end
 end


 
end



function demosystemupdate()

 if (stat(20) > 0 and curpattern == true) then
 curpattern = false
 end
	 
	if (stat(20) == 0 and curpattern == false) then
	curtimer = curtimer + 1
	cursong = cursong + 1
	curpattern = true	
		
		if (curtimer > part_duration[curpart]) then
	 curpart = curpart + 1
	 curtimer = 1
	 init = true
  	 
	    if (part_duration[curpart] == 255) then
	    curpart = curpart - 1
	    loopmode = true
	    end	        
	 end 
	end 

 if (init == true and loopmode == false) then
  initpart() 
  for i=1,4 do
	 transpos[i]=transposbuf[i+4]
	 transadd[i]=transaddbuf[i+4]
	 end  
  transtimer=64 
  transcolor = transaddbuf[9]  
 init = false
 end

 if (part_duration[curpart+1] != 255 and part_duration[curpart]-curtimer == 0 and stat(20) > 7 and transition == false) then 
    for i=1,4 do
	   transpos[i]=transposbuf[i]
	   transadd[i]=transaddbuf[i]
	   end 
    transcolor = transposbuf[9] 
				transtimer = 100
				transition = true
 end
 	
end

function water()
 
 for i=0,waterfig[1] do
 p = flr((sin(smain1)*2.3)+(sin(smain2)*2.6))
 

 memcpy(waterfig[3]-(i*64),waterfig[2]+((i+p)*64),64) 
 
 
 smain1 = smain1 + 0.075
 smain2 = smain2 - 0.15
 end
 

 sadd1 = sadd1 + 0.034
 sadd2 = sadd2 + 0.009
 
 smain1 = sadd1
 smain2 = sadd2
 
end


function transitionupdate()
	if (transition == true) then

 for i=1,4 do
 transpos[i]=transpos[i]+transadd[i]
 end
 color(transcolor)
 rectfill(transpos[1],transpos[2],transpos[3],transpos[4])
	
	end 

 transtimer = transtimer -1 
 if (transtimer == 0) then
  transition = false
	end

end

function mapmanagerdraw(cm)
 
  map(layerxmap[cm],layerymap[cm],layerxpos[cm],layerypos[cm],layerxsize[cm],layerysize[cm])

end

function mapmanagerupdate()
 
	for i=1,layernumber do
 
  layerxtemp[i]=layerxtemp[i]+1
  if (layerxtemp[i] > layerxspeed[i]) then
   layerxtemp[i]=0
   layerxpos[i]=layerxpos[i]+layerxposadd[i]
   if (layerxpos[i] == layerxposmax[i]) then
   layerxpos[i]=layerxposreset[i]
   layerxmap[i]=layerxmap[i]+layerxmapadd[i]    
   end  
  end  
  layerytemp[i]=layerytemp[i]+1
  if (layerytemp[i] > layeryspeed[i]) then
   layerytemp[i]=0
   layerypos[i]=layerypos[i]+layeryposadd[i]
   if (layerypos[i] == layeryposmax[i]) then
   layerypos[i]=layeryposreset[i]
   layerymap[i]=layerymap[i]+layerymapadd[i]    
   end  
  end    

 end
 
end

function plasmadraw()
if ready == 1 then

	resgfx = plasdata[3]*4

	ypos = plasdata[13]

 if (plasdata[4] == 51) then
 
 	for y=1,plasdata[14],plasdata[3] do
 	xpos = plasdata[15]

	 	for x=1,plasdata[16],plasdata[3] do
	 	this = (plasmax[x]+plasmay[y])*3				
	  if (this > plasdata[1] and this <= plasdata[2]) then
	  spr (248+this,xpos,ypos)
	 	end
		
	 	xpos = xpos + resgfx
	 	end
 	ypos = ypos + resgfx
 	end
 else
 	for y=1,plasdata[14],plasdata[3] do
 	xpos = plasdata[15]

 		for x=1,plasdata[16],plasdata[3] do
 		this = (plasmax[x]+plasmay[y])*3				
 	 if (this > plasdata[2]) then this = plasdata[2] end
 	 if (this < plasdata[1]) then this = plasdata[1] end
 	 spr (248+this,xpos,ypos)	
 		xpos = xpos + resgfx
 		end
 	ypos = ypos + resgfx
	 end 
 end
 ready = 0
 end
end

function plasmaupdate()
if ready == 0 then
 
	for y=1,plasdata[14] do 
	plasmay[y] = sin(ycalc1)+sin(ycalc2)
	ycalc1 = ycalc1 + plasdata[5]
	ycalc2 = ycalc2 + plasdata[6]
	end
	for x=1,plasdata[16] do 
	plasmax[x] = sin(xcalc1)+sin(xcalc2)
	xcalc1 = xcalc1 + plasdata[7]
	xcalc2 = xcalc2 + plasdata[8]
	end
 xseed1 = xseed1 + plasdata[9]
 xseed2 = xseed2 + plasdata[10]

 yseed1 = yseed1 + plasdata[11]
 yseed2 = yseed2 + plasdata[12]

	xcalc1 = xseed1
	xcalc2 = xseed2
	ycalc1 = yseed1
	ycalc2 = yseed2
	   
 ready = 1
	end

end




function bobsdraw(bobtype)

 -- bobs no z difference
 if (bobtype == 0) then
  for i=maxballs,1,-1 do
 	
 
  spr (artp[artm[i]],artx[artm[i]],arty[artm[i]])
  end
 end

 -- bobs with z distance
 if (bobtype == 1) then
 temp = (bobmath[1]/(bobmath[1]/2.45))
 
  for i=maxballs,1,-1 do

	 	        
	 tempzoom = flr((artz[artm[i]])/3.9) 
  
  	if (tempzoom < 0) then
  	   tempzoom = 0
  	end
  	if (tempzoom > 3) then
     tempzoom = 3
  	end

   spr (artp[artm[i]]+tempzoom,artx[artm[i]],arty[artm[i]])
   end
  
 end

 -- bobs with sun shading   
 if (bobtype == 2) then
  for i=maxballs,1,-1 do

	 tempzoom = -artz[artm[i]]/2 
	 
  
  	if (tempzoom < 0) then
  	   tempzoom = 0
  	end
  	if (tempzoom > 3) then
     tempzoom = 3
  	end
 	
	  
	 sunval = 0
   if (artx[artm[i]] < sunx) then
    sunval = sunx-artx[artm[i]]
   else
    sunval = artx[artm[i]] - sunx
   end
  sunval2 = 0  
   if (arty[artm[i]] < suny) then
    sunval2 = suny-arty[artm[i]]  
   else
    sunval2 = arty[artm[i]] - suny
   end
 
   
   maxdrift = 80 
   if (sunval2 < maxdrift and sunval < maxdrift) then
    sunval2 = sunval2 /6.7  
    sunval = sunval /11.7
    sunval = sunval /tempzoom  
   else
   sunval2 = 7
   sunval = 7
   end

   p = bobmath[17]-(sunval2+sunval)
   if (p< (bobmath[17])-7) then p = bobmath[17]-7 end
     
   spr (p,artx[artm[i]],arty[artm[i]])

   end

 bobmath[2] = 64+sin(bobmath[6])*32
 bobmath[3] = shadestart+sin(bobmath[4])*16
 
 if (shadestart > 64) then
   shadestart = shadestart - 0.5
 end
 
 sunx = 64+sin(bobmath[4])*32
 suny = 48+sin(bobmath[5])*32
 spr(78,sunx,suny)
 
 if (cursong > 37) then
 bobmath[14] = 500
 bobmath[15] = 10
 end
 
 end
   
end

function bobsadd()
	for i=1,maxballs do
	 threedz[i] = threedz[i] + bobmath[12]
	 threedy[i] = threedy[i] + bobmath[11]
	 threedx[i] = threedx[i] + bobmath[10]
 	
 	if (threedz[i] < -20) then
 	  threedz[i] = 20
 	end
 	if (threedz[i] > 20) then
 	  threedz[i] = -20
 	end
 	if (threedx[i] < -20) then
 	  threedx[i] = 20
 	end
 	if (threedx[i] > 28) then
 	  threedx[i] = -28
 	end
 	if (threedy[i] < -28) then
 	  threedy[i] = 28
 	end
 	if (threedy[i] > 30) then
 	  threedy[i] = -30
 	end
 end
end

function bobcalc()

 bobsort()

 if (bobmath[1] < bobmath[14]) then
 bobmath[1] = bobmath[1] + bobmath[15]
 end
 if (bobmath[1] > bobmath[14]) then
 bobmath[1] = bobmath[1] - bobmath[15]
 end

  
 bobmath[4] = bobmath[4] + bobmath[7]
 bobmath[5] = bobmath[5] + bobmath[8]
 bobmath[6] = bobmath[6] + bobmath[9]
  
end

 
function vectorcalc()

 if (trimath[1] < trimath[10]) then
 trimath[1] = trimath[1] + trimath[11]
 end
 if (trimath[1] > trimath[10]) then
 trimath[1] = trimath[1] - trimath[11]
 end

 
 trimath[4] = trimath[4] + trimath[7]
 trimath[5] = trimath[5] + trimath[8]
 trimath[6] = trimath[6] + trimath[9]
 
 trimath[2] = trimath[2] + trimath[12]
 trimath[3] = trimath[3] + trimath[13]

end

function vectordraw() 


 p = starttri
 for i=1,trisize do

 trilistc[i]=(artz[p]+artz[p+1]+artz[p+2])

 trilistm[i]=p
 p = p + 3
 end
 
 vectorsort(1,trisize+1)

  
 
 if (blenk == 0) then
   for i=1,trisize do
    color(tricol[1+(trilistm[i]-starttri)/3])
    drawtriangle(trilistm[i])  
   end
 else
  for i=1,trisize do
   sunval = 0
   if (artx[trilistm[i]] < sunx) then
    sunval = sunx-artx[trilistm[i]]
   else
    sunval = artx[trilistm[i]] - sunx
   end
   sunval = sunval /9.4 
   if (sunval > 7) then
   sunval = 7
   end
   color(shade[1+flr(sunval)])
   drawtriangle(trilistm[i])  
  end 
 end
  
  if (cursong > 50) then 
  blenk = 1
  trimath[11] = 0
  spr(78,sunx,suny)
  sunx = 64+sin(trimath[4])*64
  suny = 64+sin(trimath[6])*64
  trimath[2] = 64+sin(trimath[5])*32
  trimath[3] = 64+sin(trimath[6])*32
  trimath[1] = 1500+sin(trimath[4])*1000
  end
  
end


function vectorupdate(sstart,ssend,lrotx,lroty,lrotz,realzoom,xoffset,yoffset)	
	

	for i=sstart,ssend do
	
	x2 = (threedx[i] * cos(lrotz)) - (threedy[i]*sin(lrotz))
	y2 = (threedx[i] * sin(lrotz)) + (threedy[i]*cos(lrotz))
	z2 = (x2 * sin(lroty)) + (threedz[i] * cos(lroty))
	x3 = (x2 * cos(lroty)) - (threedz[i] * sin(lroty))
	y3 = (y2 * cos(lrotx)) - (z2 * sin(lrotx))
	artz[i] = ((y2 * sin(lrotx)) + (z2 * cos(lrotx))) 
	artx[i] = (realzoom * (x3 / (artz[i]+40)))+xoffset
	arty[i] = (realzoom * (y3 / (artz[i]+40)))+yoffset

 artc[i] = artz[i]
 artm[i] = i
	end

end

function bobsort()
 gap = maxballs
 shrink = 1.25

 swapped = true

 checkout = true

 while (checkout == true) do
  if (gap == 1 and swapped == false) then
  checkout = false
  break
  end

  temp = gap/shrink
  gap = flr(temp)
   if (gap < 1) then
   gap = 1
   end

  i=1
  swapped = false
  checkin = true
  while (checkin == true) do
   if (i+gap >= maxballs) then
   checkin = false
   end 
   if (artc[i] > artc[i+gap]) then
    tempc = artc[i]
    tempm = artm[i]
    artc[i] = artc[i+gap]
    artm[i] = artm[i+gap]
    artc[i+gap] = tempc
    artm[i+gap] = tempm
    swapped = true
   end
  i = i + 1
  end 
 end

end 

function drawtriangle(offset)
 
 drawme = false

 for i =1,3 do
 tempx[i] = artx[(offset-1)+i] 
 tempy[i] = arty[(offset-1)+i]
 tempz[i] = artz[(offset-1)+i]
 end

 
 d1x = tempx[3] - tempx[1]
 d1y = tempy[3] - tempy[1]
 d2x = tempx[3] - tempx[2]
 d2y = tempy[3] - tempy[2]
 
  
 z = (d1x*d2y) - (d1y * d2x)
 

  if z > 0 then 
  drawme = true
 end

 if (drawme == true) then

 if (tempy[2] > tempy[3]) then
  tempx[4] = tempx[2]
  tempy[4] = tempy[2]
  tempx[2] = tempx[3]
  tempy[2] = tempy[3]
  tempx[3] = tempx[4]
  tempy[3] = tempy[4]
 end
 if (tempy[1] > tempy[2]) then
  tempx[4] = tempx[1]
  tempy[4] = tempy[1]
  tempx[1] = tempx[2]
  tempy[1] = tempy[2]
  tempx[2] = tempx[4]
  tempy[2] = tempy[4]
 end
 if (tempy[2] > tempy[3]) then
  tempx[4] = tempx[3]
  tempy[4] = tempy[3]
  tempx[3] = tempx[2]
  tempy[3] = tempy[2]
  tempx[2] = tempx[4]
  tempy[2] = tempy[4]
 end

 trifound = false
 if (tempy[2] == tempy[3]) then
  fillbottomtri(1,2,3)
  trifound = true
 end
 if (tempy[1] == tempy[2] and trifound == false) then 
  filltoptri(1,2,3)
  trifound = true
 end  
 
 if (trifound == false) then

 
  tempx[4] = (tempx[1]+((tempy[2]-tempy[1]) / (tempy[3]-tempy[1])) * (tempx[3]-tempx[1]))
  tempy[4] = tempy[2]
  

  fillbottomtri(1,2,4)
  filltoptri(2,4,3)   
 end

 end


end

function fillbottomtri(v1,v2,v3)
 invslope1 = (tempx[v2]-tempx[v1]) / (tempy[v2]-tempy[v1])
 invslope2 = (tempx[v3]-tempx[v1]) / (tempy[v3]-tempy[v1])
 curx1 = tempx[v1]
 curx2 = tempx[v1]

   
  for i=tempy[v1],tempy[v2] do 
  
  rectfill (curx1,i,curx2,i+1)

  
  curx1 = curx1 + (invslope1)
  curx2 = curx2 + (invslope2)
 
  
  end
 
 

end


function filltoptri(v1,v2,v3)
 invslope1 = (tempx[v3]-tempx[v1]) / (tempy[v3]-tempy[v1])
 invslope2 = (tempx[v3]-tempx[v2]) / (tempy[v3]-tempy[v2])
 curx1 = tempx[v3]
 curx2 = tempx[v3]


  
 for i=tempy[v3],tempy[v1],-1 do 


 rectfill (curx1,i-1,curx2,i+1)

  curx1 = curx1 - invslope1
  curx2 = curx2 - invslope2
 end


end


function vectorsort(sstart,ssend)

 gap = ssend 
 shrink = 1.29 

 swapped = true

 checkout = true

 while (checkout == true) do
  if (gap == sstart and swapped == false) then
  checkout = false
  end

  temp = gap/shrink
  gap = flr(temp)
   if (gap < 1) then
   gap = 1
   end

  
  i=sstart
  swapped = false
  checkin = true
  while (checkin == true) do
   if (i+gap >= ssend) then
   checkin = false
   else
   if (trilistc[i] > trilistc[i+gap]) then
    tempc = trilistc[i]
    tempm = trilistm[i]
    trilistc[i] = trilistc[i+gap]
    trilistm[i] = trilistm[i+gap]
    trilistc[i+gap] = tempc
    trilistm[i+gap] = tempm
    swapped = true
   end
   end
  i = i + 1
  end 
 end
   
end   

function mirrorcopystart()

color(7)
rectfill(0,0,128,128)

  offsety = offsety-1
  if (offsety < -31) then
    offsety = 0
    offsetpos = offsetpos +1
    if (offsetpos > 3) then
    offsetpos = 0
    end
  end  
 
  
     
end


function mirrorcopyend()

  for i=0,63 do
  memcpy(0x1800+(i*64),0x6618+(i*64),16)
  end

map(60,08,0,offsety,4,20)
map(60,09,32,offsety,4,20)
map(60,10,64,offsety,4,20)
map(60,11,96,offsety,4,20)

	bobmath[1] = 224+(sin(bobmath[6])*96) 


end

function landscape()
rectfill(0,0,128,64,12)
p = sin(sundist1)*4
rectfill(0,48+p,128,52+p,13)
rectfill(0,52+p,128,128,1)

layerypos[1]=6-p+(sin(sundist2)*1.6)

sun = 64+((sin(sundist1)*sin(sundist2))*64)
suny = 16+(sin(sundist1)*8)
spr(78,sun,suny)
sundist1 = sundist1 + 0.03
sundist2 = sundist2 + 0.005


 ystart = 48
 d = 0
	for y=1,35 do
	
 xstart1 = 0
 xstart2 = 127
 
   q = 1
	  for x=1,16 do
	   tempfy = ystart
	   h = peek(0x4300+((flr(oland)+y)*16)+q)
	 
	      //v = h 
	      //dl = h
	      v = (((x*16)+64 - sunx) * 2.3) * ((suny/32)/y)/4.1
	      dl = v/1.55  
	      
	      if (v < 1) then 
	      p=6+flr((sunx-128)/32)
	      v = p  end
	      if (v > 7) then v = 7 end
	  	   if (dl < 1) then dl = p*1.3 end
	      if (dl > 7) then dl = 7 end
	  	   
	  	   
	  	   for l=1,h do	   
	  	    
	  	  
	 	   	spr(v+248,xstart1,tempfy)
    	   	  	
      	spr(dl+248,xstart2,tempfy)
   	 
   	   
   	   
   	   
      	tempfy = tempfy - ydist[y]*1.3//(suny/16)
      	end
   	
 xstart1 = xstart1 -(sin(x/32)*6) //*6  	  
 xstart2 = xstart2 +(sin(x/32)*6) 
     q = q + 1
   end
   
	ystart = ystart + ydist[y]
	
	end

  oland = oland - 0.5
  if (flr(oland) < 0) then oland = 148
  end

end 
 
function initpart()

 nextpart = 0
 dlist = 1
 ulist = 1
 layernumber = 0
 palnumber = 0
 paltnumber = 0
 for i=1,16 do
  displaylist[i] = 0
  updatelist[i] = 0
 end
 while (nextpart != 99) do
  nextpart = getpartdata()
	 if (nextpart == 1) then
 	  layernumber = layernumber + 1

  layerxmap[layernumber] = getpartdata()
  layerymap[layernumber] = getpartdata()
  layerxpos[layernumber] = getpartdata()
  layerypos[layernumber] = getpartdata()
  layerxsize[layernumber] = getpartdata()
  layerysize[layernumber] = getpartdata()
  layerxposreset[layernumber] = getpartdata()
  layeryposreset[layernumber] = getpartdata()
  layerxspeed[layernumber] = getpartdata()
  layeryspeed[layernumber] = getpartdata()
  layerxtemp[layernumber] = 0
  layerytemp[layernumber] = 0
  layerxposadd[layernumber]= getpartdata()
  layeryposadd[layernumber]= getpartdata()
  layerxmapadd[layernumber]= getpartdata()
  layerymapadd[layernumber]= getpartdata()
  layerxposmax[layernumber]= getpartdata()
  layeryposmax[layernumber]= getpartdata() 	   
	 setdisplaylist(1)
	 elseif (nextpart == 2) then
   shadestart = 100
   q = 1
	  skip = getpartdata()
	  if (skip == 1) then q = 7
	   -- last minute hardcode... 
	   for i=1,maxballs do
	   artp[i] = 35+(flr(rnd(4))*4) 
	   end
	  
	  end
		 
   for i=q,17 do
   bobmath[i] = getpartdata()
   end
   
   if (skip != 1) then
   
   maxballs = getpartdata()
   bl = 1
  	for i=1,maxballs do
   artx[bl] = 0
   arty[bl] = 0
   artz[bl] = 0
   artm[bl] = 1
   artc[bl] = 0	
   bl = bl + 1	
	  end 
  end
	   setdisplaylist(2)
	 elseif (nextpart == 3) then
   q = 1
	  skip = getpartdata()
	  if (skip == 1) then q = 7 end
		 
   for i=q,13 do
   trimath[i] = getpartdata()
   end
   
   if (skip != 1) then
   meshnum = getpartdata() 
   trisize = meshsize[meshnum]
   starttri = maxballs+1
   maxtri = starttri-1+(trisize*3)
   q = starttri
   v = 0
   foreach(mesh[meshnum],putvecarray)
   q = 1
   foreach(meshcol[meshnum],putveccol)
   end      
	   setdisplaylist(3)
	 elseif (nextpart == 4) then
   	for i=1,3 do
   	waterfig[i] = getpartdata()
    end
 	  setdisplaylist(4)
  elseif (nextpart == 5) then
	   transposbuf[9] = getpartdata()
    transaddbuf[9] = getpartdata()
    for i=1,8 do
    transposbuf[i] = getpartdata()
    transaddbuf[i] = getpartdata()
    end
    setdisplaylist(5)
  elseif (nextpart == 6) then
 for i=0,480 do
 poke(0x1e20+i,0)
 end
 
 for q=0,7 do
 
  for y=0,7 do

   for x = 0,4 do
  
   poke(0x0000+512*flr((248+q)/16)+(band((248+q),15)*4)+(y*64)+x,peek(0x4300+512*flr((0+q)/16)+(band((0+q),15)*4)+(y*64)+x))
  
   end
  
  end
 
 end
  


 p = 36
 z = 2
 for y=0,6000 do 
 p = p + 0.032 
 z = z + 0.029 
 l = (sin(p)*sin(z))*9
 if (l > 9) then l = 9 end
 if (l < 0) then l = 0 end
 
 poke(0x4300+y,l)
 
 end
    setdisplaylist(6)    
  elseif (nextpart == 7) then
  sprx = {16,96,34,119,55,77,11,60}
  spry = {40,100,88,34,97,18,55,26}
  sprs = {1,2,2,1,2,2,1,1}
   for y=0,1023,64 do
	   for x=0,59 do
	   poke (5632+x+y,0x00) 
	   end
   end 
    setdisplaylist(7)
    setupdatelist(7)
  elseif (nextpart == 8) then
    palnumber = palnumber + 1
    palswapfrom[palnumber] = getpartdata()
    palswapto[palnumber] = getpartdata()
    setdisplaylist(8)
  elseif (nextpart == 9) then
    paltnumber = paltnumber + 1
    palttable[paltnumber] = getpartdata()
    paltset[paltnumber] = getpartdata()
    setdisplaylist(9)
  elseif (nextpart == 12) then
 xseed1 = 0
 xseed2 = 0
 yseed1 = 0
 yseed2 = 0

 for i=1,32 do
 plasmax[i] = 0
 plasmay[i] = 0
 end
 
 for i=1,17 do
 plasdata[i] = getpartdata()
 end
 

 for q=0,plasdata[2] do
 
  for y=0,7 do

   for x = 0,4 do
  
   poke(0x0000+512*flr((plasdata[17]+q)/16)+(band((plasdata[17]+q),15)*4)+(y*64)+x,peek(0x0000+512*flr((plasdata[4]+q)/16)+(band((plasdata[4]+q),15)*4)+(y*64)+x))
  
   end
  
  end
 
 end    
    setdisplaylist(12)
    setupdatelist(12)     
  elseif (nextpart == 13) then
  meshtype = getpartdata()
  meshpaint = getpartdata()
  
  if (meshtype == 1) then
  for i = 1,maxballs do
    threedx[i] = -16+rnd(32)
    threedy[i] = -16+rnd(32)
    threedz[i] = -28+rnd(56)
    artp[i] = bobmath[17]
  end
  end

  if (meshtype == 2) then
  meshmul = getpartdata()
  q = 1
   for z=-meshmul,meshmul do
    for y=-meshmul,meshmul do
     for x=-meshmul,meshmul do
     threedx[q] = x
     threedy[q] = y
     threedz[q] = z
     artp[q] = bobmath[17]+(flr(rnd(meshpaint))*4)
     q = q + 1
     end
    end
   end    
  end    
  elseif (nextpart == 15) then
    setdisplaylist(15)
    setupdatelist(15)
    bigx = -20
  else
    setdisplaylist(nextpart)
  end
  
  
 end
 
end









function putvecarray(value)
 v = v + 1
 if (v == 1) then threedx[q] = value end
 if (v == 2) then threedy[q] = value end
  if (v == 3) then 
  threedz[q] = value
  q = q + 1
  v = 0
  end
end

function putveccol(value)
 if (meshnum == 1) then
 tricol[q] = value
 else
  -- yes i'm sorry about this..
  for v=q,q+79 do
  tricol[v] = 1 
  end
 end
 q = q + 1
end
   





function drawvertical()

  rectfill(0,0,127,80+sin(b1)*8,9)
  rectfill(0,68-sin(b2)*4,127,103,8)
  
	 for x=0,59 do
	 poke (5632+x,0xee) 
	 end
  
	 for y=5,8 do
	   spr(41,sprx[y],spry[y])
	 end

  if (cursong > 44) then
  angle = sin(x1)*sin(b2)*0.5
  end
  tx = 0
 
  x1 = b1
  x2 = b2
  for y=vl,-1,-1 do 
	 d = 5660+flr(sin(x1)*sin(x2)*29)		 
		poke (d,0xc1) 
		poke (d+1,0x77)
	 poke (d+2,0x77)
		poke (d+3,0x89)
 

		map (64,0,tx,y,15,1)
		tx = tx + angle
		x1 = x1 - 0.003
		x2 = x2 + 0.014
		end
		b1 = b1 + 0.01
		b2 = b2 - 0.015
	 for y=1,4 do
	   spr(39,sprx[y],spry[y])
	 end 
  	
end

function updatevertical()
 
 for y=1,8 do
	   spry[y] = spry[y] - sprs[y]
				 if (spry[y] < -16) then 
	  		spry[y] = 110
			  sprx[y] = rnd(128)
					end
	end
	if (cursong > 42) then
 if (vl < 90) then
 vl = vl +1
 end
 end
 
end	


function drawscroll()

  for q=0,17 do
  map(bigx+q,16,-8+(q*8)+bigpix,siney[q+1],1,16)
  
  end

  bigpix = bigpix-1
  if (bigpix < 0) then
  bigpix = 7
  bigx = bigx + 1  
  end
end

function updatescroll()
  for q=0,17 do

 siney[q+1] = siney[q+2]
 
  end
  
  
  siney[18] = ((sin(bigpiy)+sin(bigpiy2))*16)

  bigpiy = bigpiy - 0.005 
  bigpiy2 = bigpiy2 + 0.03  
end

  	
function setdisplaylist(ptype)
  displaylist[dlist] = ptype
  dlist = dlist +1
end

function setupdatelist(ptype)
  updatelist[ulist] = ptype
  ulist = ulist +1
end
   
function getpartdata()

   a= part_data[part_ptr]
   part_ptr=part_ptr+1
   
   return a
 
end

__gfx__
00000000000000011111111111111111111111111000000000010000000000000000000000000000500050005050505050505050555555550288888888888820
000000000000001111111110111111110111111111000000010c0100000100000000000000000000000000000000000005050505505050500888888888888880
00000000000001111111110011111111001111111110000000c7c000000c00000001000000000000000000005050505050505050555555550888888888888880
0000000000001111111110001111111100011111111100001c777c1001c7c100001c100000010000000000000000000005050505505050500888888888888880
00000000000111111111000011111111000011111111100000c7c000000c00000001000000000000500050005050505050505050555555550888888888888880
000000000011111111100000111111110000011111111100010c0100000100000000000000000000000000000000000005050505505050500888888888888880
00000000011111111100000011111111000000111111111000010000000000000000000000000000000000005050505050505050555555550888888888888880
00000000111111111000000011111111000000011111111100000000000000000000000000000000000000000000000005050505505050500888888888888880
02cccccccccccc2008888888888888800cccccccccccccc009aaaaaaaaaaaa900aaaaaaaaaaaaaa000000000002222000055550000dddd0000cccc0000666600
0cccccccccccccc008888888888888800cccccccccccccc00aaaaaaaaaaaaaa00aaaaaaaaaaaaaa000999900022dd220055665500dd66dd00cc77cc006677660
0cccccccccccccc008888888888888800cccccccccccccc00aaaaaaaaaaaaaa00aaaaaaaaaaaaaa009777790222dd22255566555ddd66dddccc77ccc66677666
0cccccccccccccc00e8888888888888006ccccccccccccc00aaaaaaaaaaaaaa007aaaaaaaaaaaaa0097777902222222255555555ddddddddcccccccc66666666
0cccccccccccccc0087eeeeeeeeeee800c766666666666c00aaaaaaaaaaaaaa00977777777777790097777902222222255555555ddddddddcccccccc66666666
0cccccccccccccc0022222222222221001222222222222100aaaaaaaaaaaaaa004944444444444200977779012222221255555525dddddd5dccccccdc666666c
0cccccccccccccc0012222222222221001222222222222100aaaaaaaaaaaaaa00244444444444420009999000111111002222220055555500dddddd00cccccc0
0cccccccccccccc0000000000000000000000000000000000aaaaaaaaaaaaaa000000000000000000000000000111100002222000055550000dddd0000cccc00
00ffff00007777000077770001dccd10000000000000000000000000028888200000000000000000000000000499994000000000000000000000000003bbbb30
0ff77ff007777770077777701c77ccc1001dd100000000000000000028ff8882002882000000000000000000497799940049940000000000000000003b77bbb3
fff77fff7777777777777777dc77cccd01cccc10001cc1000000000088ff888802888820002882000000000099779999049999400049940000000000bb77bbbb
ffffffff7777777777777777cccccccc0dc7ccd000c7cc00000cc00088888888088f8880008f88000008800099999999099799900097990000099000bbbbbbbb
ffffffff7777777777777777cccccccc0dccccd000ccdc00000cc00088888888088888800088e8000008800099999999099999900099a90000099000bbbbbbbb
6ffffff66777777677777777dccccccd01cccc10001cc10000000000888888880288e8200028820000000000999999990499a9400049940000000000bbbbbbbb
0666666006666660077777701ccddcc1001dd1000000000000000000288ee882002882000000000000000000499aa9940049940000000000000000003bbaabb3
00666600006666000077770001dccd10000000000000000000000000028888200000000000000000000000000499994000000000000000000000000003bbbb30
00000000000000000000000000000000000000000000000000000000888888888888888822222222222222288888888844444444244444442222222244444444
003bb300000000000000000000000000000000000000000000000000888888888888888442222222222222888888888224444444224444442222222244444444
03bbbb30003bb300000000000000000000000000050000000cc00000888888888888884444222222222228888888882222444444222444442222222244444444
0bb7bbb000b7bb00000bb000101000001111000050550000c00c0000888888888888844444422222222288888888822222244444222244442222222244444444
0bbbbbb000bbab00000bb00000000000000000000000000000000000888888888888444444442222222888888888222222224444222224442222222244444444
03bbab30003bb3000000000000000000000000000000000000000000888888888884444444444222228888888882222222222444222222442222222244444444
003bb300000000000000000000000000000000000000000000000000888888888844444444444422288888888822222222222244222222242222222244444444
00000000000000000000000000000000000000000000000000000000888888888444444444444442888888888222222222222224222222222222222244444444
11111111888888888888888882222222444444422111111122222222200000000000000240000000222222211111111112222222222222200000000011111111
41111111488888888888888188222222444444222211111112222222220000000000002244000000222222000000000000222222222222000099990041111111
44111111448888888888881188822222444442222221111111222222222000000000022244400000222220000000000000022222222220000977779044111111
44411111444888888888811188882222444422222222111111122222222200000000222244440000222200000000000000002222222200000977779044411111
44441111444488888888111188888222444222222222211111112222222220000002222244444000222000000000000000000222222000000977779044441111
44444111444448888881111188888822442222222222221111111222222222000022222244444400220000000000000000000022220000000977779044444111
44444411444444888811111188888882422222222222222111111122222222200222222244444440200000000000000000000002200000000099990044444411
44444441444444488111111188888888222222222222222211111112222222222222222244444444000000000000000000000000000000000000000044444441
000000000000000000000000122444444444221000000000000000000000000000444444d4444444dddddddd444440000000000000004444dddddddd44400000
000000000000000000000124444444444444444421000000000000000000000004444444dd4444444ddddddd444444000000000000024444ddddddd444420000
000000000000000000124444444444444444444444421000000000000000000044444444ddd4444444dddddd444444400000000000044444dddddd4444440000
000000000000000005444444444444444444444444444500000000000000000544444444dddd4444444ddddd444444450000000000244444ddddd44444442000
000000000000000244444444444444444444444444444442000000000000002444444444ddddd4444444dddd444444442000000000444444dddd444444444000
000000000000014444444444444444444444444444444444410000000000014444444444dddddd4444444ddd444444444100000001444444ddd4444444444100
000000000000244444444444444444444444444444444444442000000000044444444444ddddddd4444444dd444444444400000002444444dd44444444444200
000000000005444444444444444444444444444444444444444500000000244444444444dddddddd4444444d444444444420000004444444d444444444444400
14444444222222224444441024444444111111112222222001222222444444414222222222222100000002222222222211111111222222222200000000001222
24444444222222244444442022444444211111112222222001222222444444114422222222222000000000222222222211111112222222222000000000000022
24444444222222444444442022244444221111112222222000222222444441114442222222221000000000122222222211111122222222221000000000000001
54444444222224444444445022224444222111112222221000122222444411114444222222220000000000012222222211111222222222210000000000000000
44444444222244444444444012222444222211112222221000022222444111114444422222220000000000002222222211112222222222200000000000000000
44444444222444444444444012222244222221112222220000012222441111114444442222210000000000000222222211122222222222000000000000000000
44444444224444444444444002222224222222112222220000002222211111114444444222200000000000000022222211222222222220000000000000000000
44444444244444444444444002222222222222212222210000001222111111114444444422100000000000000001222212222222222100000000000000000000
22222222222222222222222222222222221000000000000555555555555555555555555500000004444444441111111412222222222222241111111122222222
22222222222222222222222222222222200000000000005555555550555555550555555500000044444444421111114411222222222222443111111102222222
22222222222222222222222222222221000000000000055555555500555555550055555500000444444444221111144411122222222224443311111100222222
01222222222222222222222222222100000000000000555555555000555555550005555500004444444442221111444411112222222244443331111100022222
00012222222222222222222222210000000000000005555555550000555555550000555500044444444422221114444411111222222444443333111100002222
00000112222222222222222211000000000000000055555555500000555555550000055500444444444222221144444411111122224444443333311100000222
00000000011222222222110000000000000000000555555555000000555555550000005504444444442222221444444411111112244444443333331100000022
00000000000000000000000000000000000000005555555550000000555555550000000544444444422222224444444411111111444444443333333100000002
23333333333333333333333322222222cccccccccccccccdddddddddddddddd12222222277777777ccccccc25111111144444445555555553333333331111111
22333333333333355333333322222227ccccccccccccccdddddddddddddddd112222222c77777777cccccc225511111144444455555555533333333333111111
22233333333333555533333322222277cccccccccccccdddddddddddddddd111222222cc77777777ccccc2225551111144444555555555333333333333311111
22223333333335555553333322222777ccccccccccccdddddddddddddddd111122222ccc77777777cccc22225555111144445555555553333333333333331111
22222333333355555555333322227777cccccccccccdddddddddddddddd111112222cccc77777777ccc222225555511144455555555533333333333333333111
22222233333555555555533322277777ccccccccccdddddddddddddddd111111222ccccc77777777cc2222225555551144555555555333333333333333333311
22222223335555555555553322777777cccccccccdddddddddddddddd111111122cccccc77777777c22222225555555145555555553333333333333333333331
22222222355555555555555327777777ccccccccdddddddddddddddd111111112ccccccc77777777222222225555555555555555533333333333333333333333
222222220666661000888880dddddddd88888888155515111111551188888888888888888888888805555551dddddddd1d555511001001885151515568888888
222222231ddddd1100000000dddddddd88811888155515111551551188888877777777777777788801555551dddddddd1555551105111158dddddddd66888888
222222331ddddd111dddddd15555555d0105588815551511155155118888877777777777777775d0011555515505500515000511001000888011111126688888
222223331ddddd111dddddd1505ddddd0105d888155515110101011088887777ccccccccccc75dd00111555101111111151d1511055501888801555122668888
222233331ddddd100dddddd151d10000010558881555d111010101108887777ccccccccccc75ddd1000001100000100115151511000101888880155122266888
222333331ddd5501055555515dd011110101188800055d005ddddd55887777ccccccccccc75dddd1011111518000100115ddd511011018888888011122226688
223333331ddd5d110555555155d1555588811888511555511555551187777ccccccccccc75ddddd101011111d555555d1555551188088888888880dd22222658
233333331ddd5d110555555155d15151888888881115551115555511d7777777777777775dddddd1011111111111111d15555511888888888851115511111156
888888862222222662222222555555566666666688888888655555555555555cc555555586666668866666685555555c88888888888888888888888888888888
888888668222222222222228555555555555555555555555555555555555555cc555555512222251152222215555555c88888888888888888888888888888888
888886628822222222222288555555555555555522222222555555555555555cc555555512222251152222215555555ccccccccccccccccccccccccccccccccc
888866228882222222222888555555555555555522222222555555555555555cc555555512222251152222215555555d67777777777777777777777777777776
888662228888222222228888555555555555555522222222555555555555555cc555555512222251152222215511115555555555555555555555555555555555
886622228888822222288888555555555555555522222222555555555555555cc5555555122222511522222151dddc1555555555555555555555555555555555
856222228888882222888888555555555555555511111111555555555555555cc5555555122222511522222151555d1555555555555555555555555555555555
651111118888888888888888222222222222222288888888222222225555555cc5555555822222288222222811555d1115151515151515155151515151515151
c55555558888888cddddddddddddd77777777777777dddddc8888888c511111111111111111111111111111111111111111111111111115c8888888c5551d5d1
c55555558888886ddddddddddddd7cccccccccccccc7ddddd6888888c111111111111111111111111111111111111111111111111111111c888888c5551d5d15
c5555555888886ddddddddddddd7cccccccccccccccc7ddddd688888c111111111111111111111111111111111111111111111111111111c88888c5551ddd155
d555555588886dddddddddddddc000000000000000000cddddd68888c111111111111111111111115cddddddddddddc5111111111111111c8888c55551111555
551111558886dddddddddddddc00000000000000000000cddddd6888c11111111111111111111111d7cccccccccccc7d111111111111111c888c555555555555
51cddd15886dddddddddddddc0000000000000000000000cddddd688c11111111110000011155111d00000000000000d000001111111111c88c5555555555555
51d555158cddddddddddddddddddddddddddddddddddddddddddddc8c11111111110555011500511d00000000000000d055501111111111c8c55555555555555
11d55511d6666666666666666666666666666666666666666666666dc11111111110515011500511d00000000000000d051501111111111cc555555555555555
55d00d5555555551d000000bb000000d155555551d5d1555c8888888555555511111111111111111155555551111111111111111900000000000000000000000
55d00d5555555551d00000300300000d1555555551d5d1555c8888885555551dddddddddddddddd1d15555551ddddddddddddddd990000000000000800000001
555cc55555555551d00003000030000d15555555551ddd1555c88888555551d55555555555555c155d15555551c5555555555555999000000000008800000011
5555555555555551d00030000003000d1555555555511115555c888855551d5555ddddd55555c15555d15555551c55555ddddd55999900000000088800000111
5555555555555551d00b11111111b00d15555555555555555555c8885551d5555d0000d5555c1555555d15555551c5555d0000d5999990000000888800001111
5555555555555551d00030000003000d155555555555555555555c88551d5555d0000d5555c155555555d15555551c5555d0000d999999000008888800011111
5555555555555551d00003000030000d1555555555555555555555c851d55555ccccc5555c15555555555d15555551c5555ccccc999999900088888800111111
5555555555555551d00000300300000d15555555555555555555555c1d55555555555555c1555555555555d15555551c55555555999999990888888801111111
44444444000000008888888258888888111111121111111822222222288888888888888855555555555555533333333555555555555555554444444444444444
44444440800000008888882255888888111111221111118882222222228888888888888315555555555555333333335555555551555555524444444554444444
44444400880000008888822255588888111112221111188888222222222888888888883311555555555553333333355555555511555555224444445555444444
44444000888000008888222255558888111122221111888888822222222288888888833311155555555533333333555555555111555552224444455555544444
44440000888800008882222255555888111222221118888888882222222228888888333311115555555333333335555555551111555522224444555555554444
44400000888880008822222255555588112222221188888888888222222222888883333311111555553333333355555555511111555222224445555555555444
44000000888888008222222255555558122222221888888888888822222222288833333311111155533333333555555555111111552222224455555555555544
40000000888888802222222255555555222222228888888888888882222222228333333311111115333333335555555551111111522222224555555555555554
222222299999999922222222411111115555555152222222ccccccc4155555550000000ddccccccc666666665555555011111111c777777744444444dddddddd
2222229999999995c2222222441111115555551155222222cccccc4411555555000000ddddcccccc66666667555555001111111dcc777777d4444444cddddddd
2222299999999955cc222222444111115555511155522222ccccc4441115555500000ddddddccccc6666667755555000111111ddccc77777dd444444ccdddddd
2222999999999555ccc22222444411115555111155552222cccc4444111155550000ddddddddcccc666667775555000011111dddcccc7777ddd44444cccddddd
2229999999995555cccc2222444441115551111155555222ccc4444411111555000ddddddddddccc66667777555000001111ddddccccc777dddd4444ccccdddd
2299999999955555ccccc222444444115511111155555522cc4444441111115500ddddddddddddcc6667777755000000111dddddcccccc77ddddd444cccccddd
2999999999555555cccccc22444444415111111155555552c4444444111111150ddddddddddddddc667777775000000011ddddddccccccc7dddddd44ccccccdd
9999999995555555ccccccc24444444411111111555555554444444411111111dddddddddddddddd67777777000000001dddddddccccccccddddddd4cccccccd
111111112ddddddddddddddd2ccccccc111111112222222233333331000000000000000077777777ffffffffaaaaaaaa99999999999999994444444422222222
d111111122dddddddddddddc22cccccc111111133222222233333311000000000000000077777777ffffffffaaaaaaaa99999999999999994444444422222222
dd111111222dddddddddddcc222ccccc111111333322222233333111000000000000000077777777ffffffffaaaaaaaa99999999999999994444444422222222
ddd111112222dddddddddccc2222cccc111113333332222233331111000000000000000077777777ffffffffaaaaaaaa99999999999999994444444422222222
dddd111122222dddddddcccc22222ccc111133333333222233311111000000000000000077777777fafafafaaaaaaaaa99999999949494944242424222222222
ddddd111222222dddddccccc222222cc111333333333322233111111000000000000000077777777afafafafaaaaaaaa99999999494949492424242422222222
dddddd112222222dddcccccc2222222c113333333333332231111111000000000000000077777777fafafafaaaaaaaaa99999999949494944242424222222222
ddddddd122222222dccccccc22222222133333333333333211111111000000000000000077777777afafafafaaaaaaaa99999999494949492424242422222222
__label__
00000000000000000000000000000000000000000000011111111111111111111111c777c1111000000000000000000000000000000000000000000000000000
000000000000000000000000000000000000000000000011111110111111111111111c7c11111000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000011111100111111111111111c111111000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000011111000111111111111111111111000000000000000000001000000000000000000000000000000
0000000000000000000000000000000000000000000000000111100001111111111111111111100000000000001000001c100000000000000000000000000000
000000000000000000000000000000000000000000000000001110000011111111111111111110000000000010c0100001000000000000000000000000000000
00000000000000000000000000000000000000000000000000011000000111111111111111111000000000000c7c000000000000000000000000000000000100
0000000000000000001000000000000000000000000000000000100000001111111111111111100000000001c777c10000000000000000000000000000000c00
000000000000000010c0100000000000000000000000000000000000000000000000011111111100000000000c7c00000000000000000000000100000001c7c1
00000000000000000c7c0000000000000000000000000010000000000000000000000111111111100000000010c0100000000000000000000000000000000c00
0000000000000001c777c1000000000000000000000010c110000000000000000000011111111111000000000010000000000000000000000000000000000100
00000000000000000c7c0000000000000000000000000c7c00000000000000000000011111111111100000000000000000000000000000000000000000000000
000000000000000010c0100000000000000000000001c777c1000000000000000000011111111111110000000000000000000000000000000000000000000000
000000000000000000100000000000000000000000000c7c00000000000000000000011111111111111000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000010c110000100000000000000011111111111111100000000000000000010000000000000000000000000
00000000000000000000000000000000000000000000001000010c01000000000000011111111111111110000000001000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000c7c0000000000000000000000000000001111111111111111100000000001000000000000000
000000000000000000000000000000000000000000000000001c777c100000000000000000000000000000111111111111111110000000000000000000000000
0000000000000000000006666610dddddddd0000000000000000c7c0000000000000000000000000000000011111111111111111000001000000000000000000
000000000000000000001ddddd11dddddddd00011000000000010c01000000000000000000000000000000001111111111111111100000000000000000000000
0000000000001dddddd11ddddd115555555d01055000000000000100000000000000000000000000000000000111111111111111110000000000000000000000
0000000000001dddddd11ddddd11505ddddd0105d000000000000000000000000000000000000000000000000011111111111111111000000000000000000000
0000000000000dddddd11ddddd1051d1000001055000000000000000000000000000000000000000000000000001111111111111111100000000000000000000
000000000000055555511ddd55015dd0111101011000000000000000000000000000000000000000000000000000111111111111111110000000000000000000
000000000000055555511ddd5d1155d1555500011000000000000000000000000000000000000000000011111111111111111111111111000000000000000000
000000000000055555511ddd5d1155d151510010c010000000000000ffff00000000000000000000000111111111111111111111111111100000000000000000
661000000000066666101111551111115511000c7c00000000000000000000000000000000000000001111111111111111111111111111110000000000000000
dd11000000001ddddd11155155111551551101c777c1000000000000000000000000000000000000011111111111111111111111111111111000000000100000
dd111dddddd11dddd1111551551115515511010c7c00000000000000000000000000000000000000111111111111111111111111111111111100000011c11000
dd111dddddd11ddd1c1101010110010101100115c01000000000000000000000000000000000000111111111111111111111111111111111111000100c7c0000
dd100dddddd11dddd11001010110010101100105100000000000000000000000000000000000001111111111111111111111111111111111111101c1c777c100
5501055555511ddd55015ddddd555ddddd55010110000000000000000000000000000000000001111111111111111111111111111111111111111010fc7c0000
5d11055555511ddd5d11155555111555551100011000000000000000000000000000011111111111111111111111111111111111111111000000000010c01000
5d11055555511ddd5d11155555111555551100000000000000000ff00f0000000000011111110111111111111111111111111111111111100000000000100000
151105555551dddddddd1d555511dddddddd000000000f0000000000000000000000011111100111111111111111111111111111111111110000000000000000
151101555551dddddddd15555511dddddddd00011000000000000000000000000000011111000111111111111111111111111111111111111000000000000000
151101155551550550051500051155055005010550000000000000000000000000f0011110000111111111111111111111111111111111111100000000000000
15110111555101111111151d1511011111110105d000000000000000000000000ff0011100000111111111111111111111111111111111111110000000000000
d11100000110000010011515151100001f0101055000000000000000000000000000011000000111111111111111111111111111111111111111000000000000
5d00011111510000100115ddd5110000100101011000000000000000000000000000010000000111111111111111111111111111111111111111100000000000
555101011111d555555d15555511d5555288888888888820028888888888882002cccccccccccc2112cccccccccccc2111111111111111111111100000000000
5511011111111111111d155555111111188888888888888008888888888888800cccccccccccccc11cccccccccccccc111111111111110111111100000000000
55111111111111115511111155111111588888888888888008888888888888800cccccccccccccc11cccccccccccccc111111111111110011111100000000000
55111111111115515511155155111551588888888888888008888888888888800cccccccccccccc11cccccccccccccc111111111111110001111100000000000
05110105511111515511155155111551588888888888888008888888888888800cccccccccccccc11cccccccccccccc111111111111110f00111100000000000
15110105d1111c110110010101100101088888888888888008888888888888800cccccccccccccc11cccccccccccccc111111111111110000011100000000000
15110105511101010110010101100101088888888888888008888888888888800cccccccccccccc11cccccccccccccc111111111111110000001100000000000
d511010111115ddddd555ddddd555dddd88888888888888008888888888888800cccccccccccccc11cccccccccccccc111111111111110000000100000000000
55110001100015555511155555111555588888888888888008888888888888800cccccccccccccc11cccccccccccccc111111111111110000000000000000000
55110000000015515511155555111555588888888888888008888888888888800cccccccccccccc11cccccccccccccc111111111111110000000000000000000
551100000000515c5155dddddddd0555588888888888888008888888888888800cccccccccccccc11cccccccccccccc111111111111110000000000000000000
551100000000d1c7c1dddddddddd01555e888888888888800e8888888888888006ccccccccccccc116ccccccccccccc111111111111110000000000000000000
551100000000001c11115555555d0115587eeeeeeeeeee80087eeeeeeeeeee801c766666666666c11c766666666666c111111111111110000000000000000001
01100000000000015551505ddddd0111522222222222221002222222222222111122222222222211112222222222221111111111111110000000000000000000
0110000000000000155151d100000000012222222222221001222222222222111122222222222211112222222222221111111111111110010000000000000000
dd5500000000000001115dd011110111115100000000000000000000000001111111111111111111111111111111111111111111111110000000000000000000
551100000000000002888888888888211288888888888820028888888888882112cccccccccccc2112cccccccccccc2112cccccccccccc200000000000001000
55110000000000511888888888888881188888888888888008888888888888811cccccccccccccc11cccccccccccccc11cccccccccccccc00000000000011000
00000000000000000888888888888885588888888888888008888888888888811cccccccccccccc11cccccccccccccc11cccccccccccccc00000000000111000
00000000000000000888888888888885588888888888888008888888888888811cccccccccccccc11cccccccccccccc11cccccccccccccc00000000001111000
00000000000000001888888888888880088888888888888008888888888888811cccccccccccccc11cccccccccccccc11cccccccccccccc00000000011111000
0000000000000001188888888888888d188888888888888008888888888888811cccccccccccccc11cccccccccccccc11cccccccccccccc00000000111111001
00000000000000111888888888888885188888888888888008888888888888811cccccccccccccc11cccccccccccccc11cccccccccccccc00100001111111011
0000000000000111188888888888888dd88888888888888008888888888888811cccccccccccccc11cccccccccccccc11cccccccccccccc00000011111111111
c1000000000001111888888888888885588888888888888008888888888888811cccccccccccccc11cccccccccccccc11cccccccccccccc11111111111111111
00000000000000111888888888888885588888888888888008888888888888811cccccccccccccc11cccccccccccccc11cccccccccccccc11111111111111111
00000000000000011888888888888880088888888888888008888888888888811cccccccccccccc11cccccccccccccc11cccccccccccccc11111111111111111
00000000000000001e888888888888811e888888888888800e8888888888888116ccccccccccccc116ccccccccccccc116ccccccccccccc11111111111111111
0000000000000000087eeeeeeeeeee80087eeeeeeeeeee80087eeeeeeeeeee811c766666666666c11c766666666666c11c766666666666c11111111111111111
00000000000000000222222222222215022222222222221002222222222222111122222222222211112222222222221111222222222222111111111111111111
00000000000000000122222222222211012222222222221001222222222222111122222222222211c12222222222221111222222222222111111111111111110
0000000000000000000000055d00011010000000000000000000011111111111111111111111111c7c1111111111111111111111111111111111111111111100
0000000000001111128888888888882009aaaaaaaaaaaa90028888888888882112cccccccccccc2772cccccccccccc2112cccccccccccc211111111111111000
000000000001111118888888888888800aaaaaaaaaaaaaa008888888888888811ccccccccccccccc7cccccccccccccc11cccccccccccccc11111111111110000
000000000011111118888888888888800aaaaaaaaaaaaaa008888888888888811cccccccccccccc1ccccccccccccccc11cccccccccccccc11111111111100000
000000000111111118888888888888800aaaaaaaaaaaaaa008888888888888811cccccccccccccc01cccccccccccccc11cccccccccccccc11111111111000000
000000001111111118888888888888800aaaaaaaaaaaaaa018888888888888811cccccccccccccc00cccccccccccccc11cccccccccccccc11111111110000000
000000011111111108888888888888800aaaaaaaaaaaaaa118888888888888811cccccccccccccc00cccccccccccccc11cccccccccccccc11111111100000000
000000111111111008888888888888800aaaaaaaaaaaaaa118888888888888811cccccccccccccc00cccccccccccccc11cccccccccccccc11111111000000000
000001111111110008888888888888800aaaaaaaaaaaaaa118888888888888811cccccccccccccc00cccccccccccccc11cccccccccccccc11111110000000000
000001111111100008888888888888800aaaaaaaaaaaaaa118888888888888811cccccccccccccc00cccccccccccccc11cccccccccccccc00000000000000000
000001111111000008888888888888800aaaaaaaaaaaaaa118888888888888811cccccccccccccc00cccccccccccccc11cccccccccccccc00000000000000000
000001111110000008888888888888800aaaaaaaaaaaaaa118888888888888811cccccccccccccc00cccccccccccccc11cccccccccccccc00000000000000000
00000111110000000e8888888888888007aaaaaaaaaaaaa11e8888888888888116ccccccccccccc006ccccccccccccc116ccccccccccccc00000000000000000
0000011110000000087eeeeeeeeeee800977777777777791187eeeeeeeeeee811c766666666666c0fc766666666666c11c766666666666c00000000000000000
00000111000000000222222222222210f49444444444442112222222222222110122222222222210012222222222221111222222222222100000f00000000000
00000110000000000122222222222210024444444444442111222222222222100122222222222210012222222222221111222222222222100000000000000f00
00000100000000010c0100000000000000000000000001111111111111111100f0000000f000000000f0011111111111111111000f00f0000000000000000000
1111100000000000c7c00000000000000000000000001111111111111111c0100000000000000111111110000000000000000000000000000000000000000000
111100000000001c777c100000000000000000000001111111111111111c7cf00000000f0f0001111111000f0001000000000000000000000100000000000000
1110000000000000c7c0000000000000000000f0001111111111111111c777c10000000000000111111f0000f01c100000000000000100000000000000000000
11000000000000010c0100000000000000000f0f0111111111111111111c7cf0000000000000011111000000000100000000000000000000f00f000000000000
1000000000000000010f000f000000000000000011111111111111111111c010000000000000011110000000000000000000000000000000f000000000000000
0000000f000000000000000000000000f00000011111111111111111111110000000000000000111000000000000000000000000000000000000000000000000
0000000000000000f000000000000000000000111111111111111111111110001000000000000110000000f0000000000000000000000000000000000010f000
0000000000000000000000000000000000000111111111111111111111111010c0100000000001000000000000000000f0000000000000000000000000c00000
0f0000000000000000f00100000001111111111111111111111110000000000c7c0000000000000000000000000000000000000000000000000000001c7c1000
00000000000000000000011000000111111111111111111111111000000001c777c10000000000000000000000000000f0000000f00000000000000001c00000
000f00000000000000000111000001111111111111111111111110000000000c7c0000000000000000000000000000000000f00f00000000000000001c100000
00000000000000100f00f111100001111111111111111111111110000000001fc010000f00000000000000000000000000000000000000000000000001000000
00000000000000c00000011111000111111111111111111111111000000000001000000000000000000000000000000000000000000000000000000000000000
0000000000001c7c1000011111100111111111111111111111111000000000000000000000000000000000000000000000000001000000100000000000000000
00000000f00000c000000111111101111111111111111111111110000000010000000000000f000f0000000f000000000000010c010010c01000000000000000
0000000000000010000001111111111111111111111111111111100010000c0000000000000000000000f00000000000000000c7c0000c7c0000000000000000
00f00000000000000f00111111111111111111111111111111111010c011c7c10f00000000000000000000000000000000011c777c11c777c100000000000000
0000000000000000000111111111111111111111111111111111000c7c000c0000000000000000000000000000000000000000c7c0000c7c0000000000000000
000000000000000000111111111111111111111111111111111001c777c10100000000000000000000000000000000000000010c010010c01000000000000000
00000000000000000111111111111111111111111111111111000f0c7c0000000000000000000000000000000000000000000f01000000100000000000000000
00000000000000001111111111111111111111111111111110000010c01000000000000000000000000010f00000000000000000000000000000000000000000
000000000f00000111111111111111111111111111111111000000001000000000000000000000000001c100000000000000000000f000000000000000000000
00100000f0000011111111111111111111111111111111100000000000000000000000f000000000000010000000000000000000000000000000000000000000
10c010000000011111111111111111111111111111111100000f00000000000000000000000000000000000f0000000000000000000000000000000000000000
1c7c11111111111111111111111111111111100f000000000000f00000000000000000000000000000000000000000000000f000000000000000000000000000
c777c11111111111111111111111111111110000000000000000000000000000000000000000000000f000f000f00000f000001000f000f00000000000000010
1c7c11111111111111111111111111111110000000000000000000000000000000000000000f00000000000000000000000000000000000000000000000001c1
11c111111111111111111111111111111100000000000000f0000000000000000000000000000000000000000000000000000000000000000000000000000010
11111111111111111111111111111111100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
11111111111111111111111111111111c0100000000000000000000000000f000000000000000000000000000000000000000000000000000000000000f00000
1111111111111111111111111111111c7c000000000000000000000000000000000000000000000000000000000000000000000000000000000f000000000000
111111111111111111111111111111c777c10000f00f000000000000000f00000000000000000000f00000000000000000000000000000000000000000000010
0000011111111000000000000000000c7c000000000010000000000000000000000000000000000000f0000f000000000000000000000f00000000000000000c
00000011111110000000000000000010c01000000f0110000000000000000000000000000000000000000f000000000f000000000000000000000000000001c7
000000011111100000000f0000f0000010000000001110000000000000000f000f0000000000000000000000000000000000000000000000000000000000000c
0000000011111000000000000000000000001000011110000000000000000000000f000000000000000000000000000000000000000000000000000000000010
000000000111100000000000000000000010c0101111100000000000000000000000000000000000000000f00000000f00000000000000000000000f0000f000
000000000011c0100000000f0000f000000c7c011111100000000000000000000000000000000000000000000000000000000000000000000000000000000000
0f000000000c7c0000f00000f000000001c777c11111100f00000f00000f0000000000000000000000000000f000f00000000000000000000000000000000000
0000000001c777c10000000001000000000c7c111111100000000000000000000000f00000000000000000000000000000000000000100000000000000000000

__map__
00000000000000000000000000000101030302000000000000000000000000000000000404030300000000000000000000000000000000000000000000000000b0b1b2b3b4b5b6b7b8b9babbbcbdbebf373737373737373737373738373737370000000000000000000000080000000000000000000000000000000000007576
00000000000000000000000000000203020200000000000000000000000000000000000000000305000000000000000000000000000000000000000000000000000000000e0f0e0f101110110000000037393a373737373737373b3c37373b3d0000000009000000000000000000000076000000000000000000000000000000
00000000000000000000000000000102000000000001030303030303020000000000000000000000040305000000000000000000000000000000000000000000000000001213121314151415000000003e3f404137423b413737433e3742393e0007000000000000000000000007000077777600000000000000000075007577
0000000000000000000000000000020000000001030203030303030303050000000000000000000103030305000000000000000000000000000000000000000000000e0f0e0f0e0f10111011101100003e443d393e3e3e443e3e45463e3e3f390000000000515253545556000000000076787776000000000000000000000000
000000000000000000000000000200000001030303030303030303030303000000000000000002030303030500000000000001000103020000000000000000000000121312131213141514151415000000000000000000000000000000000000000000005758595a3f595b5c0000000000000000000000000000000000000000
0000000000000000000000000000000001030303030303020000000403040305000000000000030303030304000000000105020102000000000000000000010100000e0f16170e0f101110111011000007000800000000000000000000000700000008005d5e5a5e3f393d5f0000000076000000000000000000000000000000
00000000000000000000000000000000040303030304000000000000000000040000000000010303030303000000010302000000000000000000000000050303000012131819121314151415141500000000000000000000000000000800000000000000603d3f3f5a613f620000000000000000000000000000000000000048
00000000000000000000000000000004030303020000000000050503050000010000000001030303030302000101030400000000000000000000000000030303770077007777770075777700777777000007000000000700000900000000000000000000633f3f643d3f3d650000000079470000480000000000050000793f44
000000000000000000000000000001030303020000000000010200000200000400000000010303030303030303020000000000000000000000000001c0c1c2c37877770377e777037775770300037703000000000000000000000000000800000000000066673d683e444469000006003f7a05054700010579017b7a793f4461
000000000001000102040301030303030200000000000000030000000000010200000001030303040103030302000000000000000000000000000103d0d1d2d30004770377037703770377030000770347000000484900000000000000000000000000006a6b3d3e3e6c6d6e000000003e3e3e3e3e643e3e3e3e3e3e64030303
000000000000000000040302000000000000000000000000030005000500020000000003030200000303020000000000000000000000000000050302e0e1e2e3000000030003000300030003000000033d3f490048000000000000470000484900000000006f707172737400090000007c3e3e3e3e3e7d3e3e7d7c3e3e7e7e03
000000000000000000000000000000000000000000000000030000000402000000000103030000020000000000000000000000000000010203020000f0f1f2f300000000000000000000000000000000393d3f493c4900000000480000483c3f000000000000000000000000000000003e7d7d7f3e3e3f7c3e3e3e3e80818264
000000000000000000000000000000000000000001000000040500000000000005030303000000000000000000000000000000000100000000000000c0c1c2c3770077000077007700770077007777773e4a4b4b4b4b4b4b4b4b4b4b4b4c3e47000008000006000000090000000000003e3f3f003e3e3e3e3e8384848586873e
000000000000000000000000000000000000000002000000040503050500000103030302000000000000000000000000000103030200000000000000d0d1d2d3770377030077777603777776037775764d000000000000000000000000000000000000000000000000000000000700007d3f76007c7c3e88848984848a6c6c3e
000000000000000000000000000000000001030302000000000004030303030303020000000000000000000000000000000400000000000000000000e0e1e2e37703777700770377027703770278777700000000000000000000000000000000000000000000000900000000000000003f3f75818b037c3e3e3e3e3e3e3e3e3e
000000000000000000000000000100010303020000000000000000000000040000000100000000000000000000000000000000000000000000000000f0f1f2f30003000303000300030003000300040300000000000000000000000000000000000000000000000000000800000000003f8c77778d8e8f3e3e3e3e3e3e908e46
000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000c0c1c2c3373737373737373737373737373737379f3737373737373737373737373737a00000000000000000000000000000000003d9da8e8edbdcd43e3e3e3e808e82dc
0e0f0e0f0e0f000e0f0e0f00000010111011101100161710111011101110110010111011101100101110111011000000000000000000000000000000d0d1d2d337373737373737373737373737373737a19f373737373737373737373737a0a2000700000000000000080000000000003e3e4503d97703d43e3e3e3e45030303
121312131213031213121300000014151415141503181914151415141514150314151415141503141514151415030000000000000000000000000000e0e1e2e33737373737373737373737373737373737a3a4a5a5a4a4a4a4a4a4a5a5a4a637000009000009000000000000000700003e3e3e7d4503d43e3e3e3e3e3e3e45d4
000303030e0f030e0f03030e0f0000030303101103101103030303030310110310110303101103000303031011030000000000000000000000000000f0f1f2f33737373737373737373737373737373737a19f37373737373737373737a0a237000008000000000000000000000000007d3e3e3e3e3e3e3edd3e3e3e3e3e3e3e
000000001213031213032a12130300000000141503141503000000000014150314150300141503000000001415030000000000000000000000000000c0c1c2c3373737373737379137373792919394373737a19f3737373737373737a0a2373700000000000000000000000000000900de683e3e3e3e3e3e3e3e3e3e3e3e7a3e
000000000e0f030e0f03000e0f0300000000101103101110111011000010110310110300101103000000001011030000000000000000000000000000d0d1d2d337373737373792959291929196969437373737a19f373737373737a0a23737370000000000000000060000000000000077df3e3e3e3e3e3e3e3ee0e13e3e3f7c
000000001213031213030012130300000026141503141514151415030014150314150300141503000000261415030000000000000000000000000000e0e1e2e337379798999293959a959a9b9c9b943737373737a7373737373737a8373737370000000000000000000000000009000077777f3e3e838484e2e3dfe4e53e3e3e
0e0f0e0f1617030e0f03000e0f0310111011161703000303031011030010110316171011000303101110111617030000000000000000000000000000f0f1f2f337379b93929c969c9d9c94969696373737373737a7373737373737a83737373700090000007900000000000000000000dc02008884898484e63f7700e73e3e3e
121312131819031213030012130314151415181903000000001415030014150318191415030000141514151819030000000000000000000000000000c0c1c2c337379e9b939d37963796379e939a373737373737a7373737373737a83737373748cd00080004ce0000000004000000ce0300e8e984ea84843f3feb00007c3e3e
0e0f03000e0f030e0f03000e0f0310110300101103000000001011030010110310110303101100101103001011030000000000000000000000000000d0d1d2d33737373737373737373737379e9c3737a9a9a9a9a7373737373737a8aaaaaaaacfd00000000004d100080900050001d2ec86868684ed848486ee000000033e3e
1213032a1213031213030012130314150300141503000000261415030014150314150326141503141503001415030000000000000000000000000000e0e1e2e3373737373737373737373737959d373737373737a7373737373737a837373737d3cfd1000001483e0005480503d4d53e8686868684848484ef86f00303037c3e
0e0f0e0f0e0f0316170e0f0e0f0310111011101103101110111011030016170310110300101103101110111011030000000000000000000000000000f0f1f2f33737373737373737373737373737373737373737abacadadaeaeafb0373737373a37d14801d54f02750303d537d537d23ef186e98484848484f286030303033e
121312131213031819121312130314151415141503141514151415030018190314150300141503141514151415030000000000000000000000000000c0c1c2c337373737373737373737373737373737373737b1b2b2b3b4b4b5b2b2b63737373e3a37d63737d737d6d5d537d2d8d23e3e3e3e3e3ef384848484ef03f48ef5f5
000303030303030003030303030300030303030303000303030303030000030300030300000303000303030303030000000000000000000000000000d0d1d2d337373737373737373737373737373737373737b7b8b903babb03b9bcbd373737373737373737373737373737373737373e3e3e90903e3ef384848a8e8e8e8e8e
000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000e0e1e2e3373737373737373737373737373737373737be77bfc0c1c2c3c4c0c577c63737000000000000000000000000000000003e3e3e45453e3e3e3e3e3e808e8e8ef6
000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000f0f1f2f39798999b93929c9e9695919a9d9e943737bec7c8c8c9c7c2c3cacbcccccac637000000000000000000000000000000003e3e3e3e3e3e3e3e3e3e3e3e64030303
__sfx__
000e000018073306252457627346180732417627346242361807324176273462b42618073306352b2462413618073306252457627346180732417627346242361807324176273462b42618073306352b24624136
010e00001b4622222527465184650c24518255182311b465002621b3750c37400752134750f3750c272004651b4620044527465184650c24518255182311b465002621b3750c37207373132750f375242720c463
010e000018073000001f0001f0201807326020270202902018073270202412024520180732451024510245101807327000270001f02018073270202b0202e020180732e020271202752018073275202751027510
010e00002900000405182321d2422245226370000002e44039300242271f3702244630550273333030030530273330040530520273231030330510273133c0313c0703a2503c220354503a220372503344233332
010e0000002700c3753c645003701d676186303c6450f075002700c3753c645003701d676186303c6450f075002700c3753c645003701d676186303c6450f075002700c3753c645003701d676186303c6450f075
010e0000294662716622232294362712622222224661f16627232224361f12627222224461f2462714622246204661b16616232204361b126162221f4661b166162321f4361b126162221f4461b246161461b343
010e00000024200242002420024200242002420024200242002420024200242002420024200242002420024200242002420024200242002420024200242002420024200242002420024200242002420024200242
010e00000044000440004400044000440004400044000440004400044000440004400044000440004400044000440004400044000440004400044000440004400044000440004400044000440004400044000440
010e00001f140241402646027460293702b370273722737227472274622726227242274422743227322273121f14024140274602b4602e370303702b3722b3722b4722b4622b2622b2422b4422b4322b3222b322
010e000000000000001f0001f020240202602027020290202b020270202412024520245202451024510245102700027000270001f02024020270202b0202e020300202b020271202752027520275202751027510
010e00000324203242032420324203242032420324203242032420324203242032420324203242032420324203242032420324203242032420324203242032420324203242032420324203242032420324203242
010e00000344003440034400334003440034400324003440034400344003440033400344003340032400344003440034400344003340034400344003240034400344003440034400334003440033400324003440
010e00000724207242072420724207242072420724207242072420724207242072420724207242072420724207242072420724207242072420724207242072420724207242072420724207242072420724207242
010e000007440074401f26007340074400734007440074402124007440222500734007440073400744024243074401f24007440073401f4300734007440074402145007440224500734007440073400744007440
010e00002937635236291262737033242263763223626126223762e236221261f2721f4521f44229270294532737633236271262637032132223762e236221261b3721b4521b2321a3721a4521a2322247022143
010e00002427230456241362424324542301362442624223247223042624526242130000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
010e0000032700f3753c645033701d676186303c64513075032700f3753c645033701d676186303c64513075032700f3753c645033701d676186303c64513075032700f3753c645033701d676186303c64513075
010e000018073306252e5762b34618073241762b3462e23618073306252b576273461807324176273462e23618073306252e5762b34618073241762b3462e23618073306252b5762734618073241762734627236
010e00003c6153c605302253c6253c615302253c6043c6253c6153c605302253c6253c615302253c6043c6253c6153c605302253c6253c615302253c6043c6253c615302253c6043c6253c6153c605302253c625
010e00001847522472182750c475202751f2730c775182751b2750c4712427527475182750c2721d7752227518375182730c47518275242751f2710c475182751b7721f275182750c471242751f3730c7751b275
010e000007270133753c645073701d676186303c6450707507270133753c645073701d676186303c6450707507270133753c645073701d676186303c6450707507270133753c645073701d676186303c64507075
010e00003c6373c6373c6373a63738637366373463732637306372e6372d6372c6272b6272a627296272862727627266272561724627236172262721617206271f6171e6271d6171c6171b6171a6171961718617
01010000100001c000100001c00010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000e0000245501f5501d55024553242201f2201d22024223000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000e00000c6120c6120c6120c6120c6220c6220c6220d6360f6361163613636146461664218642196461b6461d6461f6462064622642246462464624646246462464224632246322463224632246222462224622
000e00002462224622246322463224632246222462224622186260c62624626186260c62624626186260c62624626186260c63624636186360c63224632186420c64224642186420c64224642186520c65224652
010e0000186520c65224652186520c65224642186420c64224642186320c63224636186360c63624626186260c62624626186260c62624616186160c6160c6120b6120961207612056121f220244422725029363
000e00001807300000000000000018073000000000000000180730000000000000001807300000000000000018073000000000000000180730000000000000001807300000000000000018073000000000000000
010e000018073000001f0001f020180732602027020290201807327020242403023624226242232421618612186121861218612196221b6221e622206222262225632276322a6322c6323063235632396423c642
010e0000002700c3753c645003701d676186303c6450f075002700c3753c645003701d676186303c6450f075002700c3753c645003701d676186303c6450f27500270183753c6450c270356733c6253567330673
010e00000c6120c6120c6120b6120a612096120861207612162411845216410162201842216413162101841022607184121843223353233731f3433c6071f3231b46218252182431d340263531d225213531d353
010e000018003000001f0001f000180032600027000290001800327000241000c6100c6100c6100e6101061011610136101561017610186201a6201c6201d6201f6202162023630246302663028640296502b650
010e000013373000001f0001f25513373262502725529450133732705024150183251337324510242122431213373000001f0001f2501337326255272552245013373220501b15018325133731b5101b2121b312
010e0000180730c272004020037218073000000000003272180730c472004020c07218073000000000003372180730c472004020037218073000000000003272180730c372004020c07218073000000000003472
000e0000002700c3753c612003701d676186303c6120f075002700c3753c612003701d676186303c6120f075002700c3753c612003701d676186303c6120f075002700c3753c612003701d676186303c6120f075
010e00002e2513045029252273502e2313043029232273300000000000000002b4702e2712727026370222761f4701d2701d2331f4301d2301d4331f2101d3101d41300000000000000000000182421d45022376
000e0000242701b356274362e370224422d370292722445222370212721d4321827300000000000000000000000000000000000000000000000000000000000000000000000000000000000001b2701f47027370
000e0000292702b470262761f376292302b430262361f3363000030270304732e370000002d270294702437026270223701f4701d37026230223301f4301d3331a00000000000000000000000000000000000000
000e0000180732b3771a2761f346180732b176263462223618073306251f5761f34618073221772674618136180732b3771a2761f346180732b176263462b07518073306252b5751f34618073221072b0002c000
010e0000133730c474002730025213373241060c2730f772133730c474002730025213373241060c2730f772133730c474002730025213373241060c2730f772133730c474182720025213373241060c2730f772
010e00001f140241402646027460293702b370273722737227472274622726227262274522745227342273331f1402414026460274602e370303722e3702e3722e4722b4662e266272662e2562b356274462e336
010e00002b362272252b365273652e245272552b5312b465272622b3752b474277522b4752e37527172270652436227225243651f3652e2451f2551b5311b465272622b3752b4742b27327475244750000000000
010e000000000000003c6350000000000000003c6350000000000000003c6350000000000000003c6350000000000000003c6350000000000000003c63500000000003c6243c6350000000000000003c63500000
000e000030731317313273133731307213172132721337213071131711327113371130511315113251133511305113151132511335113041131411324113341334700337003270031700307002f7002e7002d700
010e000017010156101361011613106130e6130c6130b61309613076130e600000000000000000000000000000000000000000000000000001f2110c425182351b7321f245182450c451242651f3730c7751b275
010e0000180730c272004020037218073000000000003272180730c47200402000002600039123391233912339123391233912339123305233052339123391333913339133391333054330543305431530315303
010e0000133730c474002730025213373241060c2730f772133730c474002730025213373241060c2730f772133730c474002730025213373241060c273396353963539635396353964539645396453966339663
__music__
00 16404443
00 06075844
00 06075844
00 06070809
00 06070809
00 0a0b0809
00 0a0b0809
00 0c0d0802
00 0c0d0e02
00 06070f02
00 0607451c
00 02410415
00 02411d1e
00 02410415
00 00411d44
00 021f0417
00 015f4044
00 00080409
00 00080409
00 11081009
00 11281009
00 110e1409
00 000f0415
00 00421d17
00 00420444
00 02011d53
00 20122221
00 20122221
00 27120421
00 27121d11
00 02070618
00 02060719
00 020a0b1a
00 020a0b05
00 020c0d0e
00 0213040f
00 02131d48
00 00090408
00 20211d01
00 28111009
00 1f11100e
00 0102060f
00 02010617
00 02010618
00 0201061a
00 17212a27
00 1b212a27
00 2a21270e
00 2721150f
00 27212b2c
00 18132d2e
00 04021523
00 1d021824
00 14261525
00 1426180e
00 2120040f
00 1d212003
00 02040115
00 21040169
00 02042901
00 211d2901
00 02041544
04 01424344

