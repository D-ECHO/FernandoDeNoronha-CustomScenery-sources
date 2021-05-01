mkdir osm_motorway osm_trunk osm_primary osm_secondary osm_tertiary osm_stream osm_river osm_railway osm_industrial osm_town osm_forest osm_golfcourse osm_commercial osm_sand osm_construction osm_lake osm_meadow osm_scrub osm_landmass osm_dump osm_grassland osm_lava osm_rock osm_airport osm_cemetery osm_grass osm_shoal osm_scree osm_heath
ogr2ogr -f "ESRI Shapefile"  -where "highway = 'motorway' AND NOT other_tags LIKE '%bridge_=>_yes%' AND NOT other_tags LIKE '%tunnel_=>_yes%'" osm_motorway/osm_motorway.shp fdn_lines.shp
ogr2ogr -f "ESRI Shapefile"  -where "highway = 'trunk' AND NOT other_tags LIKE '%bridge_=>_yes%' AND NOT other_tags LIKE '%tunnel_=>_yes%'" osm_trunk/osm_trunk.shp fdn_lines.shp
ogr2ogr -f "ESRI Shapefile"  -where "highway = 'motorway_link' AND NOT other_tags LIKE '%bridge_=>_yes%' AND NOT other_tags LIKE '%tunnel_=>_yes%'" osm_primary/osm_motorwaylink.shp fdn_lines.shp
ogr2ogr -f "ESRI Shapefile"  -where "highway = 'trunk_link' AND NOT other_tags LIKE '%bridge_=>_yes%' AND NOT other_tags LIKE '%tunnel_=>_yes%'" osm_primary/osm_trunklink.shp fdn_lines.shp
ogr2ogr -f "ESRI Shapefile"  -where "highway = 'primary' AND NOT other_tags LIKE '%bridge_=>_yes%' AND NOT other_tags LIKE '%tunnel_=>_yes%'" osm_primary/osm_primary.shp fdn_lines.shp
ogr2ogr -f "ESRI Shapefile"  -where "highway = 'primarylink' AND NOT other_tags LIKE '%bridge_=>_yes%' AND NOT other_tags LIKE '%tunnel_=>_yes%'" osm_secondary/osm_primary_link.shp fdn_lines.shp
ogr2ogr -f "ESRI Shapefile"  -where "highway = 'secondary' AND NOT other_tags LIKE '%bridge_=>_yes%' AND NOT other_tags LIKE '%tunnel_=>_yes%'" osm_secondary/osm_secondary.shp fdn_lines.shp
ogr2ogr -f "ESRI Shapefile"  -where "highway = 'secondary_link' AND NOT other_tags LIKE '%bridge_=>_yes%' AND NOT other_tags LIKE '%tunnel_=>_yes%'" osm_tertiary/osm_secondarylink.shp fdn_lines.shp
ogr2ogr -f "ESRI Shapefile"  -where "highway = 'tertiary' AND NOT other_tags LIKE '%bridge_=>_yes%' AND NOT other_tags LIKE '%tunnel_=>_yes%'" osm_tertiary/osm_tertiary.shp fdn_lines.shp


ogr2ogr -f "ESRI Shapefile"  -where "waterway = 'stream'" osm_stream/osm_stream.shp fdn_lines.shp
ogr2ogr -f "ESRI Shapefile"  -where "waterway = 'river'" osm_river/osm_river.shp fdn_lines.shp

ogr2ogr -f "ESRI Shapefile"  -where "other_tags LIKE '%railway%'" osm_railway/osm_railway.shp fdn_lines.shp

ogr2ogr -f "ESRI Shapefile"  -where "landuse = 'industrial'" osm_industrial/osm_industrial.shp fdn_polygons.shp
ogr2ogr -f "ESRI Shapefile"  -where "landuse = 'commercial'" osm_commercial/osm_commercial.shp fdn_polygons.shp
ogr2ogr -f "ESRI Shapefile"  -where "landuse = 'residential'" osm_town/osm_town.shp fdn_polygons.shp
ogr2ogr -f "ESRI Shapefile"  -where "landuse = 'cemetery'" osm_cemetery/osm_cemetery.shp fdn_polygons.shp
ogr2ogr -f "ESRI Shapefile"  -where "landuse = 'forest'" osm_forest/osm_forest.shp fdn_polygons.shp
ogr2ogr -f "ESRI Shapefile"  -where "natural = 'wood'" osm_forest/osm_forest.shp fdn_polygons.shp
ogr2ogr -f "ESRI Shapefile"  -where "leisure = 'golf_course'" osm_golfcourse/osm_golfcourse.shp fdn_polygons.shp
ogr2ogr -f "ESRI Shapefile"  -where "natural = 'beach' OR natural = 'sand'" osm_sand/osm_beach.shp fdn_polygons.shp
ogr2ogr -f "ESRI Shapefile"  -where "landuse = 'construction'" osm_construction/osm_costruction.shp fdn_polygons.shp
ogr2ogr -f "ESRI Shapefile"  -where "natural = 'water'" osm_lake/osm_lake.shp fdn_polygons.shp
ogr2ogr -f "ESRI Shapefile"  -where "landuse = 'meadow'" osm_meadow/osm_meadow.shp fdn_polygons.shp
ogr2ogr -f "ESRI Shapefile"  -where "landuse = 'landfill'" osm_dump/osm_landfill.shp fdn_polygons.shp
ogr2ogr -f "ESRI Shapefile"  -where "natural = 'shoal'" osm_shoal/osm_shoal.shp fdn_polygons.shp
ogr2ogr -f "ESRI Shapefile"  -where "natural = 'scree'" osm_scree/osm_scree.shp fdn_polygons.shp
ogr2ogr -f "ESRI Shapefile"  -where "natural = 'scrub'" osm_scrub/osm_scrub.shp fdn_polygons.shp
ogr2ogr -f "ESRI Shapefile"  -where "natural = 'heath'" osm_heath/osm_heath.shp fdn_polygons.shp
ogr2ogr -f "ESRI Shapefile"  -where "natural = 'bare_rock' OR natural = 'cliff'" osm_rock/osm_barerock.shp fdn_polygons.shp
ogr2ogr -f "ESRI Shapefile"  -where "natural = 'grassland'" osm_grassland/osm_grassland.shp fdn_polygons.shp
ogr2ogr -f "ESRI Shapefile"  -where "natural = 'lava'" osm_lava/osm_lava.shp fdn_polygons.shp
ogr2ogr -f "ESRI Shapefile"  -where "aeroway = 'aerodrome'" osm_airport/osm_airport.shp fdn_polygons.shp
ogr2ogr -f "ESRI Shapefile"  -where "landuse = 'grass'" osm_grass/osm_grass.shp fdn_polygons.shp
ogr2ogr -f "ESRI Shapefile"  -where "natural = 'coastline' OR place = 'island' OR place = 'islet'" osm_landmass/osm_landmass.shp fdn_polygons.shp
