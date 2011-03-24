#!/bin/sh
 
echo "About to run full test"

# Nothing big stored in memory, heap can remain modest 
java -server -cp lib/japex/\* \
 -Xmx128M \
 -Djava.awt.headless=true \
 -Djapex.runsPerDriver=1 \
 -Djapex.warmupTime=5 \
 -Djapex.runTime=10 \
 -Djapex.numberOfThreads=1 \
 -Djapex.reportsDirectory=reports \
 -Djapex.plotGroupSize=8 \
 -Djapex.inputDir="testdata/maximumcompression" \
 com.sun.japex.Japex \
 cfg/tests-max-comp.xml

echo "Done!";