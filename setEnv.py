
'''
	work path Z:\projects\huoshen\work\shot\a10\a10430
	cache path Z:\projects\huoshen\output\efx_cache\shot\a10\a10430
'''
class pproject:
	def __init__(self,proj,scn,shot):
		root = "Z:\projects"
		self.path_scene = "{ROOT}\\{PROJ}\\work\\shot\\{SCN}\\{SCN}{SHOT}\\efx\\task\\houdini".format(ROOT=root,PROJ=proj,SCN=proj,SHOT=shot)
		self.path_cache = "{ROOT}\\{PROJ}\\output\\shot\\{SCN}\\{SCN}{SHOT}\\efx\\".format(ROOT=root,PROJ=proj,SCN=proj,SHOT=shot)
		self.path_anim = "{ROOT}\\{PROJ}\\publish\\shot\\{SCN}\\{SCN}{SHOT}\\ani\\publish".format(ROOT=root,PROJ=proj,SCN=proj,SHOT=shot)
		self.path_camera =""
	def listChars(self):
		print "listChars"
	def loadAnim(self):
		print "loadAnim"
	def loadCam(self):
		print "loadCam"

def main():
	p = pproject("huoshen","a01","430")
	print p.path_scene,p.path_cache,p.path_anim

main()
print "tst"
