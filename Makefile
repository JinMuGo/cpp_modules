# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jgo <jgo@student.42seoul.fr>               +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/11/23 14:05:59 by jgo               #+#    #+#              #
#    Updated: 2023/04/07 19:46:28 by jgo              ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

include ./make_config/Rules.mk
include ./make_config/Color_rules.mk

DIRS = cpp_module_00

all bonus :
	$(Q)$(call color_printf,$(YELLOW),$(PROJECT_NAME),🎯 Start compiling)
	$(Q)$(foreach dir, $(DIRS), $(MAKE) -C $(dir) $@;)
	$(Q)$(call color_printf,$(GREEN),$(PROJECT_NAME),✨ compiled!)
	
clean fclean:
	$(Q)$(foreach dir, $(DIRS), $(MAKE) -C $(dir) $@;)

re: fclean
	$(Q)$(foreach dir, $(DIRS), $(MAKE) -C $(dir) $@;)
	$(MAKE)

.PHONY: all clean fclean re bonus