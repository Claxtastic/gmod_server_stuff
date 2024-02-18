import sys
import os
import shutil

def merge(destination):
	print("Moving start batch file to root ...")
	print("\tCopying:\t start-server.bat")
	shutil.copy2("start-server.bat", destination)

	print("Moving ULX users file ...")
	ulx_users_src = os.path.join("garrysmod", "data", "ulib", "users.txt")
	ulx_users_dest = os.path.join(destination, "garrysmod", "data", "ulib")

	createIfNotExists(ulx_users_dest)
	
	shutil.copy2(ulx_users_src, ulx_users_dest)

	print("Moving ULX motd.txt ...")
	ulx_motd_src = os.path.join("garrysmod", "data", "ulx", "motd.txt")
	ulx_motd_dest = os.path.join(destination, "garrysmod", "data", "ulx")

	createIfNotExists(ulx_motd_dest)

	shutil.copy2(ulx_motd_src, ulx_motd_dest)

	print("\nMerging '/cfg/' ...\n")
	for file in os.listdir("garrysmod/cfg"):
		cfg_src = os.path.join("garrysmod", "cfg", file)
		print(cfg_src)
		cfg_dest = os.path.join(destination, "garrysmod", "cfg")
		print("\tCopying:\t %s" % file)
		shutil.copy2(cfg_src, cfg_dest)

	print("\nMerging '/gamemodes/terrortown/entities/weapons/' ...\n")
	for file in os.listdir("garrysmod/gamemodes/terrortown/entities/weapons"):
		weapons_src = os.path.join("garrysmod", "gamemodes", "terrortown", "entities", "weapons", file)
		weapons_dest = os.path.join(destination, "garrysmod", "gamemodes", "terrortown", "entities", "weapons")
		print("\tCopying:\t %s" % file)
		shutil.copy2(weapons_src, weapons_dest)

	print("\nMerging '/lua/weapons/' ...\n")
	for file in os.listdir("garrysmod/lua/weapons"):
		lua_src = os.path.join("garrysmod", "lua", "weapons", file)
		lua_dest = os.path.join(destination, "garrysmod", "lua", "weapons")
		print("\tCopying:\t %s" % file)
		shutil.copy2(lua_src, lua_dest)

	print("\nMerging '/lua/autorun/' ...\n")
	for file in os.listdir("garrysmod/lua/autorun/server"):
		auto_src = os.path.join("garrysmod", "lua", "autorun", "server", file)
		auto_dest = os.path.join(desination, "garrysmod", "lua", "autorun", "server", file)
		print("\tCopying:\t %s" % file)
		shutil.copy2(lua_src, lua_dest)

	print("\nMerging '/sound/endroundmusic/' ...\n")
	# these dirs are not created until first server start, so let's create them now
	createIfNotExists(os.path.join(destination, "garrysmod", "sound", "endroundmusic", "innocent"))
	createIfNotExists(os.path.join(destination, "garrysmod", "sound", "endroundmusic", "traitor"))
	createIfNotExists(os.path.join(destination, "garrysmod", "sound", "endroundmusic", "timeout"))

	for file in os.listdir("garrysmod/sound/endroundmusic/innocent"):
		# innocent music
		innocent_src = os.path.join("garrysmod", "sound", "endroundmusic", "innocent", file)
		innocent_dest = os.path.join(destination, "garrysmod", "sound", "endroundmusic", "innocent")
		print("\tCopying:\t %s" % file)
		shutil.copy2(innocent_src, innocent_dest)

	for file in os.listdir("garrysmod/sound/endroundmusic/traitor"):
		# traitor music
		traitor_src = os.path.join("garrysmod", "sound", "endroundmusic", "traitor", file)
		traitor_dest = os.path.join(destination, "garrysmod", "sound", "endroundmusic", "traitor")
		print("\tCopying:\t %s" % file)
		shutil.copy2(traitor_src, traitor_dest)

def createIfNotExists(path):
	if not os.path.exists(path):
		os.makedirs(path) 


if __name__ == "__main__":
	if len(sys.argv) < 2:
		print("Must provide path to root of server in command line arguments")
		sys.exit()

	try:
		merge(sys.argv[1])
	except Exception as e:
		print("\nERROR! Make sure the vanilla server files downloaded properly from steamcmd and all directories were created and this script is in the content directory")
		print("More information:")
		print(e)
