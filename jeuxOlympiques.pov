// Includes
#include "colors.inc"


// Constants
#macro anneau(couleur, trans, rot)
    disc{ <0,0,0>, <0,1,0>, 10.0, 8.4
        texture{
            pigment{ couleur }
            normal { bumps 0 scale 0.025}
            finish { phong 1}
        } 
        scale <1,1,1>
        rotate rot
        translate trans
    }
#end

anneau(Black, <0,0,0>, <0,0,0>)

anneau(Green, <10,0,-11>, <0,0,0>)

anneau(Red, <0,0,-21>, <0,0,0>)

anneau(Yellow, <10,0,11>, <0,0,0>)

anneau(Blue, <0,0,21>, <0,0,0>)


background { White }
light_source{<10,10,-10>,1}
camera{location <10,110,0> look_at <0,0,0>}

