SELECT "nom_circo",
       st_multi(st_union("the_geom"::geometry)) as geom,
       st_asgeojson(st_multi(st_union("the_geom"::geometry))) as geojson,
       st_aswkt(st_multi(st_union("the_geom"::geometry))) as WKT
  FROM "liste_communes_police_prepared", ign_commune_france
  WHERE "n°_commune_insee_long" = "INSEE_COM"
  GROUP BY "nom_circo"