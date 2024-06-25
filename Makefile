# ##############################################################################
# # File: Makefile                                                             #
# # Project: opengl-superbible                                                 #
# # Created Date: 2024/06/13 17:18:41                                          #
# # Author: realjf                                                             #
# # -----                                                                      #
# # Last Modified: 2024/06/18 11:34:39                                         #
# # Modified By: realjf                                                        #
# # -----                                                                      #
# #                                                                            #
# ##############################################################################


CH ?=
S ?=

BIN = bin/${S}

.PHONY: build
build:
	@g++ src/${CH}/${S}/* -o ${BIN} -lGL -lglut


.PHONY: push
push:
	@git add -A && git commit -m "update" && git push origin master



.PHONY: deps
deps:
	@sudo apt-get install freeglut3-dev libgl1-mesa-dev libglu1-mesa-dev
