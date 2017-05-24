SELECT "nom_circo", st_union("the_geom")
  FROM "liste_communes_police_prepared", "IGN_COMMUNE_FRANCE"
  WHERE "n°_commune_insee_long" = "INSEE_COM"
  GROUP BY "nom_circo"