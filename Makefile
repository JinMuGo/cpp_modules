# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jgo <jgo@student.42seoul.fr>               +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/11/23 14:05:59 by jgo               #+#    #+#              #
#    Updated: 2023/04/22 11:10:54 by jgo              ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

include ./makeConfig/Rules.mk
include ./makeConfig/Color_rules.mk

DIRS = cpp_module_00

all bonus :
	$(Q)$(call color_printf,$(YELLOW),$(PROJECT_NAME),🎯 Start compiling each directory)
	$(Q)$(foreach dir, $(DIRS), $(MAKE) -C $(dir) $@;)
	$(Q)$(call color_printf,$(GREEN),$(PROJECT_NAME),✨ All directory compiled!)
	
clean fclean:
	$(Q)$(foreach dir, $(DIRS), $(MAKE) -C $(dir) $@;)

re: fclean
	$(Q)$(foreach dir, $(DIRS), $(MAKE) -C $(dir) $@;)
	$(MAKE)

.PHONY: all clean fclean re bonus
