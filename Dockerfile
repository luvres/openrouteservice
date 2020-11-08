FROM openrouteservice/openrouteservice:v6.2.0
MAINTAINER Leonardo Loures <luvres@hotmail.com>

COPY ./brazil-latest.osm_OK.pbf /ors-core/data/osm_file.pbf
COPY ./conf/app.config /ors-core/openrouteservice/src/main/resources/app.config

