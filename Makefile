# ##############################################################################
# # File: Makefile                                                             #
# # Project: opengl-superbible                                                 #
# # Created Date: 2024/06/13 17:18:41                                          #
# # Author: realjf                                                             #
# # -----                                                                      #
# # Last Modified: 2024/06/13 17:42:54                                         #
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
