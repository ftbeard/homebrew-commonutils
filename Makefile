################################################################################

NAME =		Commons-Utilities

FT_FOLDER =	$(HOME)/.ft

################################################################################

BIN_DIR =		bin
BINARY_FILES =	confirm \
			 	gen

BINARIES =		$(addprefix $(BIN_DIR)/, $(BINARY_FILES))

################################################################################

all:
	@if [ ! -d $(FT_FOLDER) ]     ;then mkdir $(FT_FOLDER)    ; fi
	@if [ ! -d $(FT_FOLDER)/bin ] ;then mkdir $(FT_FOLDER)/bin; fi
	@if [ ! -d $(FT_FOLDER)/lib ] ;then mkdir $(FT_FOLDER)/lib; fi

################################################################################

install: all
	@echo "Installing $(NAME)"
	@brew install lua51 2>/dev/null
	@luarocks-5.1 install --local moonscript 2>/dev/null

	@cp -R $(BINARIES) $(FT_FOLDER)/bin

	@echo "--------------------------------------------------------------------"
	@echo "in order to complete the installation :"
	@echo "    export LUA_PATH=\"$(FT_FOLDER)/lib/moon/?.moon:$(FT_FOLDER)/lib/moon/?.lua\""
	@echo "    add \"$(FT_FOLDER)/bin\" to your PATH for convenience" 
	@echo "--------------------------------------------------------------------"

################################################################################

uninstall:
	@rm -rf $(FT_FOLDER)

################################################################################
