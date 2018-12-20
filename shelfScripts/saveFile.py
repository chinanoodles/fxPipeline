n = hou.ui.readInput("Task Name")
tn = n[1]

scene_path = hou.expandString("$WORKPATH")
scn = hou.expandString("$SCN")
shot = hou.expandString("$SHOT")

fileName = "{SCN}{SHOT}.efx.{TASK}.v001.01.hip".format( SCN=scn,SHOT=shot,TASK=tn )

print scene_path+"/"+fileName

hou.hipFile.save( scene_path+"/"+fileName )