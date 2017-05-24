SELECT "nom_circo",
       st_multi(st_union("the_geom"::geometry)) as geom,
       st_geojson(st_multi(st_union("the_geom"::geometry))) as geojson
  FROM "liste_communes_police_prepared", ign_commune_france
  WHERE "n°_commune_insee_long" = "INSEE_COM"
  GROUP BY "nom_circo"