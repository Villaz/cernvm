#! /bin/sh
docker run -ti -v /tmp:/tmp -v /cvmfs/grid.cern.ch/3.2.11-1/external/:/cvmfs/grid.cern.ch/3.2.11-1/external/ -v /cvmfs/atlas.cern.ch/:/cvmfs/atlas.cern.ch/ -v /usr/script/:/usr/script/ -v /cvmfs/grid.cern.ch/etc/:/cvmfs/grid.cern.ch/etc/ villaz/cernvm
