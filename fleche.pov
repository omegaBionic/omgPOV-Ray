// Includes
#include "colors.inc"


// Constants
#declare A = <0,0,0>;
#declare B = <15,0,0>;
#declare S = <19,0,0>;
#declare rCyl = 1.0;
#declare rCon = 2.0;
#declare alph = 0;
#declare sca = 1;
#declare trans = 1;
#macro fleche(A,S,coul,alph,rCyl,rCon,text1,sca,rot,trans)
    union {
        cylinder { B,A,rCyl }
        cone { B,rCon,S,0 }
        pigment { coul }
	
	//text {
	//   ttf "timrom.ttf" "POV-Ray" 1, 0
	//   pigment { Red }
	//}
        rotate rot
    }
#end

// Red arrow
fleche(A,S,Red,alph,rCyl,rCon,"X",sca,<0,0,0>,trans)


// Blue arrow
fleche(A,S,Blue,alph,rCyl,rCon,"Y",sca,<0,0,90>,trans)

// Green arrow
fleche(A,S,Green,alph,rCyl,rCon,"Z",sca,<0,90,0>,trans)

light_source{<10,10,-10>,1}
camera{location <10,40,-90> look_at <0,0,0>}

