#!/bin/bash
set -e
relative_path=`dirname $0`
root=`cd $relative_path;pwd`

cd $root
../build.sh
cd $root/../../stan
java -cp .:'stan.jar' it.disco.unimib.labeller.tools.CleanQuestionnaire ../evaluation/gold-standards/questionnaires/majority-05-all-withcontext-enhanced-withlabels-ALL.ods ../evaluation/gold-standards/questionnaires/majority-05-all-withcontext-enhanced-withlabels-CLEANED
