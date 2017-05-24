SELECT "nom_circo", st_union("the_geom"::geometry) as geom
  FROM "liste_communes_police_prepared", ign_commune_france
  WHERE "n°_commune_insee_long" = "INSEE_COM"
  GROUP BY "nom_circo"