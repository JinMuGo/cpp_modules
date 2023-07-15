# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jgo <jgo@student.42seoul.fr>               +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/11/23 14:05:59 by jgo               #+#    #+#              #
#    Updated: 2023/07/15 10:19:36 by jgo              ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

include ./make_config/Color.mk
include ./make_config/Funcs.mk
include ./make_config/Flags.mk
include ./make_config/Rules.mk

DIRS := cpp_module_00 cpp_module_01 cpp_module_02 cpp_module_03 cpp_module_04 cpp_module_05 cpp_module_06

$(DIRS):
	$(MAKE) -C $@ $(J)

all bonus :
	$(Q)$(call color_printf,$(YELLOW),$(PROJECT_NAME),🎯 Start compiling each directory)
	$(MAKE) $(DIRS)
	$(Q)$(call color_printf,$(GREEN),$(PROJECT_NAME),✨ All directory compiled!)

clean fclean re:
	$(Q)$(foreach dir, $(DIRS), $(MAKE) -C $(dir) $@;)

.PHONY: all clean fclean re bonus $(DIRS)
