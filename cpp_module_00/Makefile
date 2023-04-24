# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jgo <jgo@student.42seoul.fr>               +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/11/23 14:05:59 by jgo               #+#    #+#              #
#    Updated: 2023/04/24 10:30:38 by jgo              ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

include ./makeConfig/Rules.mk
include ./makeConfig/Color_rules.mk

PROJECT_NAME := cpp_module_00

DIRS := ex00 ex01 ex02

$(DIRS):
	$(MAKE) -C $@

all bonus: 
	$(Q)$(call color_printf,$(YELLOW),$(PROJECT_NAME),🎯 Start compiling)
	$(MAKE) $(DIRS)
	$(Q)$(call color_printf,$(GREEN),$(PROJECT_NAME),✨ compiled!)
	
fclean clean re:
	$(Q)$(foreach dir, $(DIRS), $(MAKE) -C $(dir) $@;)

.PHONY: all clean fclean re bonus $(DIRS)