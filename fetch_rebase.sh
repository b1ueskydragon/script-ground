#!/usr/bin/bash

#To execute
#. fetch_rebase.sh 

PY_B="PythonGround"
JV_B="PlayGround"
SQ_B="ScalaQuiz"
SC_B="ScalaGround"
JS_B="JavaScriptGround"
BS_B="ba-sh"
TD_B="ssh-td-transfer"
TD_P="py-td-transfer"
HA_B="HaskellGround"

BRANCHES=(
${PY_B} 
${JV_B} 
${SQ_B} 
${SC_B} 
${JS_B} 
${BS_B}
${TD_B}
${TD_P}
${HA_B}
)

echo $LF
for branch in ${BRANCHES[@]}
do
 echo "["$branch"]:"
 if [ -d ~/$branch ]; then
  cd ~/$branch/
  git fetch origin
  git rebase origin/master
  git status
 else 
  echo "not exists."
 fi 
 echo $LF
done

cd ~/
