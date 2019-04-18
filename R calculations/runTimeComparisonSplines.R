
# Table 3 - B-splines paper

x = matrix(c(2.967,3.186,3.659,
             1.423,1.572,1.844,
             2.086,2.026,1.985,
             4.044,4.422,5.174,
             1.443,1.694,2.281,
             2.802,2.610,2.268),ncol =3, byrow = TRUE)

rownames(x) = c("Bspline AR(1)", "Bernstein AR(1)", "B-spline/Bernstein",
                "Bspline AR(4)", "Bernstein AR(4)", "B-spline/Bernstein")

colnames(x) = c("n=128","n=256","n=512")

x
60*x/4; # in minutes


###############################
### P-spline time estimates ###
###############################

# Equidistant knots

y = matrix( c(30.872, 34.873, 42.738,
              5.506, 8.185, 10.338, 
              5.490, 8.208, 10.300,
              5.515, 8.176, 10.352, 
              31.663, 37.066, 47.604,  
              5.538, 8.410, 10.443,  
              5.501, 8.187, 10.402, 
              5.590, 8.249, 10.330), ncol = 3, byrow = TRUE) 	

# AR(1)
y[1,]/y[2,]; # B-splines / Psplines d=1
y[1,]/y[3,]; # B-splines / Psplines d=2
y[1,]/y[4,]; # B-splines / Psplines d=3

round(y[1,]/apply(y[2:4,],2,mean),3)

# AR(4)
y[5,]/y[6,]; # B-splines / Psplines d=1
y[5,]/y[7,]; # B-splines / Psplines d=2
y[5,]/y[8,]; # B-splines / Psplines d=3

round(y[5,]/apply(y[6:8,],2,mean),3)

# Distributed knots

y = matrix( c(30.872, 34.873, 42.738,
              5.629, 8.291, 10.507,
              5.650, 8.374, 10.512,
              5.587, 8.301, 10.427,
              31.663, 37.066, 47.604,  
              5.621, 8.240, 10.462,
              5.641, 8.372, 10.549,
              5.611, 8.327, 10.686), ncol = 3, byrow = TRUE) 


# AR(1)
y[1,]/y[2,]; # B-splines / Psplines d=1
y[1,]/y[3,]; # B-splines / Psplines d=2
y[1,]/y[4,]; # B-splines / Psplines d=3

round(y[1,]/apply(y[2:4,],2,mean),3)

# AR(4)
y[5,]/y[6,]; # B-splines / Psplines d=1
y[5,]/y[7,]; # B-splines / Psplines d=2
y[5,]/y[8,]; # B-splines / Psplines d=3

round(y[5,]/apply(y[6:8,],2,mean),3)



