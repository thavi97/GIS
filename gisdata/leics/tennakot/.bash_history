r.buffer
r.buffer input=urban@PERMANENT output=urbanbuftemp distances=500
r.report
r.report map=urbanbuftemp@tennakot
r.reclass
r.reclass input=urbanbuftemp@tennakot output=urbanbuf rules=C:\Users\thavi\Desktop\Uni\GIS\gisdata\leics\tennakot\.tmp/unknown\19308.0
r.buffer
r.buffer input=urban@PERMANENT output=urbanbuftemp distances=1000
r.buffer input=urban@PERMANENT output=urbanbuftemp distances=1000 --overwrite
r.reclass
r.reclass input=urbanbuftemp@tennakot output=urbanbuf rules=C:\Users\thavi\Desktop\Uni\GIS\gisdata\leics\tennakot\.tmp/unknown\19308.1
r.reclass input=urbanbuftemp@tennakot output=urbanbuf rules=C:\Users\thavi\Desktop\Uni\GIS\gisdata\leics\tennakot\.tmp/unknown\19308.1--overwrite
r.reclass --overwrite
r.reclass
r.reclass input=urbanbuftemp@tennakot output=urbanbuf rules=C:\Users\thavi\Desktop\Uni\GIS\gisdata\leics\tennakot\.tmp/unknown\19308.2
r.reclass input=urbanbuftemp@tennakot output=urbanbuf rules=C:\Users\thavi\Desktop\Uni\GIS\gisdata\leics\tennakot\.tmp/unknown\19308.2 --overwrite
r.colors
r.colors map=urbanbuf color=red
r.report map=roads@PERMANENT
r.reclass
r.reclass input=roads@PERMANENT output=roadsclean rules=C:\Users\thavi\Desktop\Uni\GIS\gisdata\leics\tennakot\.tmp/unknown\19308.3
r.reclass
r.reclass input=roads@PERMANENT output=roadsclean@tennakot rules=C:\Users\thavi\Desktop\Uni\GIS\gisdata\leics\tennakot\.tmp/unknown\19308.4
r.reclass input=roads@PERMANENT output=roadsclean@tennakot rules=C:\Users\thavi\Desktop\Uni\GIS\gisdata\leics\tennakot\.tmp/unknown\19308.4 --overwrite
r.reclass
r.reclass input=roads@PERMANENT output=roadsclean@tennakot rules=C:\Users\thavi\Desktop\Uni\GIS\gisdata\leics\tennakot\.tmp/unknown\19308.5
r.reclass input=roads@PERMANENT output=roadsclean@tennakot rules=C:\Users\thavi\Desktop\Uni\GIS\gisdata\leics\tennakot\.tmp/unknown\19308.5 --overwrite
r.reclass
r.report roads
r.reclass input=roads@PERMANENT output=roadsclean@tennakot rules=C:\Users\thavi\Desktop\Uni\GIS\gisdata\leics\tennakot\.tmp/unknown\19308.6
r.reclass input=roads@PERMANENT output=roadsclean@tennakot rules=C:\Users\thavi\Desktop\Uni\GIS\gisdata\leics\tennakot\.tmp/unknown\19308.6 --overwrite
r.reclass input=roads@PERMANENT output=roadsclean@tennakot rules=C:\Users\thavi\Desktop\Uni\GIS\gisdata\leics\tennakot\.tmp/unknown\19308.6
r.reclass input=roads@PERMANENT output=roadsclean@tennakot rules=C:\Users\thavi\Desktop\Uni\GIS\gisdata\leics\tennakot\.tmp/unknown\19308.6 --overwrite
r.buffer
r.buffer input=roadsclean@tennakot output=roadsbuf distances=500
r.colors map=roadsbuf color=green
r.import
r.import input=C:\Users\thavi\Desktop\Uni\GIS\gisdata\orchid.grd output=orchid
r.in.ascii input=C:\Users\thavi\Desktop\Uni\GIS\gisdata\orchid.grd output=orchid
r.report orchid
r.reclass
r.reclass input=orchid@tennakot output=orchidtemp rules=C:\Users\thavi\Desktop\Uni\GIS\gisdata\leics\tennakot\.tmp/unknown\104.0
r.reclass
r.reclass input=orchid@tennakot output=orchidtemp rules=C:\Users\thavi\Desktop\Uni\GIS\gisdata\leics\tennakot\.tmp/unknown\104.1
r.reclass input=orchid@tennakot output=orchidtemp rules=C:\Users\thavi\Desktop\Uni\GIS\gisdata\leics\tennakot\.tmp/unknown\104.1 --overwrite
r.buffer
r.buffer input=orchidtemp@tennakot output=orchidbuf distances=500
r.in.ascii input=C:\Users\thavi\Desktop\Uni\GIS\gisdata\otter.grd output=otter
r.reclass
r.reclass input=otter@tennakot output=ottertemp rules=C:\Users\thavi\Desktop\Uni\GIS\gisdata\leics\tennakot\.tmp/unknown\104.2
r.buffer
r.buffer input=orchidtemp@tennakot output=otterbuf distances=500
r.buffer
r.buffer input=orchidtemp@tennakot output=orchidbuf distances=500
r.buffer input=orchidtemp@tennakot output=orchidbuf distances=500 --overwrite
r.buffer
r.buffer input=ottertemp@tennakot output=otterbuf distances=500
r.buffer input=ottertemp@tennakot output=otterbuf distances=500 --overwrite
r.in.ascii input=C:\Users\thavi\Desktop\Uni\GIS\gisdata\skylark.grd output=skylark
r.reclass
r.reclass input=skylark@tennakot output=skylarktemp rules=C:\Users\thavi\Desktop\Uni\GIS\gisdata\leics\tennakot\.tmp/unknown\104.3
r.buffer
r.buffer input=skylarktemp@tennakot output=skylarkbuf distances=500
r.in.ascii input=C:\Users\thavi\Desktop\Uni\GIS\gisdata\toad.grd output=toad
r.reclass
r.reclass input=toad@tennakot output=toadtemp rules=C:\Users\thavi\Desktop\Uni\GIS\gisdata\leics\tennakot\.tmp/unknown\104.4
r.buffer
r.buffer input=toadtemp@tennakot output=toadbuf distances=500
v.in.ascii input=C:\Users\thavi\Desktop\Uni\GIS\gisdata\waste_sites.txt output=sites
v.in.ogr input=C:\Users\thavi\Desktop\Uni\GIS\gisdata\waste_sites.txt
v.in.lines input=C:\Users\thavi\Desktop\Uni\GIS\gisdata\waste_sites.txt output=sites
v.in.ascii input=C:\Users\thavi\Desktop\Uni\GIS\gisdata\waste_sites.txt output=sites text=comma
v.in.ascii input=C:\Users\thavi\Desktop\Uni\GIS\gisdata\waste_sites.txt output=sites separator=comma
r.buffer
p.buffer
r.slope.aspect elevation=topo slope=slope1
r.reclass
r.reclass input=slope1@tennakot output=flat rules=C:\Users\thavi\Desktop\Uni\GIS\gisdata\leics\tennakot\.tmp/unknown\104.6
r.reclass input=slope1@tennakot output=flat rules=C:\Users\thavi\Desktop\Uni\GIS\gisdata\leics\tennakot\.tmp/unknown\104.6
r.report slope1
r.reclass input=slope1@tennakot output=flat rules=C:\Users\thavi\Desktop\Uni\GIS\gisdata\leics\tennakot\.tmp/unknown\104.6
r.reclass
r.reclass input=slope1@tennakot output=flat rules=C:\Users\thavi\Desktop\Uni\GIS\gisdata\leics\tennakot\.tmp/unknown\104.7
r.reclass input=slope1@tennakot output=flat rules=C:\Users\thavi\Desktop\Uni\GIS\gisdata\leics\tennakot\.tmp/unknown\104.7 --overwrite
r.reclass
r.reclass
r.reclass input=slope1@tennakot output=sloped rules=C:\Users\thavi\Desktop\Uni\GIS\gisdata\leics\tennakot\.tmp/unknown\104.9
r.colors sloped green
r.colors map=sloped color=green
r.colors map=sloped color=brown
r.colors map=sloped color=orange
r.buffer
r.buffer input=water@PERMANENT output=waterbuf distances=500
r.buffer
r.buffer input=rail@PERMANENT output=railbuf distances=500
