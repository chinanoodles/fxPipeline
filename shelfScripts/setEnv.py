import os,sys
sys.path.append("Z:\\software\\tools\\down\\linkpipe\\apps\\engines\\houdini\\scripts")

import setEnv as s
reload(s)

#-------- UI - Read Inputs -------------------
inputs = a=hou.ui.readMultiInput("PROJ INFO",("PROJ","SCN","SHOT","FSTART","FEND"))
print inputs
PROJ = inputs[1][0]
SCN = inputs[1][1]
SHOT = inputs[1][2]
FSTART = inputs[1][3]
FEND = inputs[1][4]

#--------------------------------

p = s.pproject(PROJ,SCN,SHOT,FSTART,FEND)

#---------- set env variables ---------
p.setEnvVars()
p.mkdir()
print p.path_cache

