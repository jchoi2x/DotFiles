#!/usr/bin/env python

import os
from os.path import isdir, isfile, join, dirname



#curPath = os.path.dirname(join(os.path.realpath(__file__), 'home'))
homeDir = join(dirname(os.path.realpath(__file__)), 'home')

files = [ [ join(join(homeDir, f), ff) for ff in os.listdir(join(homeDir,f))] for f in os.listdir(homeDir) if f[0] != '.' ]

print files
#print getFiles(curPath)
