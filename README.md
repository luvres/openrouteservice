### Run
```
docker-compose up -d
```
### Logs
``` 
docker-compose logs -f
```
### Access
```
http://localhost:8989/ors/health
```
-----
### Build
```
docker build -t izone/openrouteservice:v6.2.0 .
```

### Split large file
```
cd pbf

split -b 100M brazil-latest.osm_OK.pbf "brazil-latest.osm_OK.pbf.part"
```
### Join files
```
cat brazil-latest.osm_OK.pbf.parta* > brazil-latest.osm_OK.pbf
```

### Download for update pbf file
```
#!/bin/sh

SOURCE=/home/luvres/1uvr3z/__
cd ${SOURCE}

wget --timeout 10 --tries 3 -c https://download.geofabrik.de/south-america/brazil-latest.osm.pbf -O brazil-latest.osm.pbf

wget --timeout 10 --tries 3 -c https://download.geofabrik.de/south-america/brazil-latest.osm.pbf.md5 -O brazil-latest.osm.pbf.md5

md5sum -c brazil-latest.osm.pbf.md5
```
