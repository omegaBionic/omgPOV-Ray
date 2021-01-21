#include"colors.inc"

#declare Europe = Blue;
#declare Asie = Yellow;
#declare Afrique = Black;
#declare Oceanie = Green;
#declare Amerique = Red;

#declare camera_face =camera{location<0,0,-6>look_at<0,0,0>
//orthographic
}

#declare camera_profil_droit = camera
{
location<5,0,0>
look_at<0,0,0>
//orthographic
}

#declare camera_profil_gauche = camera
{
location<-5,0,0>
look_at<0,0,0>
//orthographic
}

#declare camera_dessus = camera
{
location<0,6,0>
look_at<0,0,0>
//orthographic
}

camera{ camera_face }

background{color White}

light_source{<-200.0,0.0,0.0>color White }
light_source{<200.0,0.0,0.0>color White }
light_source{<0.0,0.0,-200.0>color White }
light_source{<0.0,200.0,0.0>color White }

#declare largeur_anneau  =1;
#declare rayon_anneau  =0.075;
#declare ecart_anneau  =0.2;

#macro anneau (position, rotation, continent )
  object{
    torus{ largeur_anneau, rayon_anneau }
    pigment{color continent }
    rotate rotation
    translate position
  }
#end

union{
anneau (<-largeur_anneau-ecart_anneau,-largeur_anneau/2,0>,<90,-10,0>, Asie )
anneau (<largeur_anneau+ecart_anneau,-largeur_anneau/2,0>,<90,-10,0>, Oceanie )
anneau (<0,largeur_anneau/2,0>,<90,10,0>, Afrique )
anneau (<-2*largeur_anneau-2*ecart_anneau,largeur_anneau/2,0>,<90,10,0>, Europe )
anneau (<2*largeur_anneau+2*ecart_anneau,largeur_anneau/2,0>,<90,10,0>, Amerique )
}
