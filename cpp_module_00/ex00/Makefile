# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jgo <jgo@student.42seoul.fr>               +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/04/07 19:34:14 by jgo               #+#    #+#              #
#    Updated: 2023/04/21 22:14:00 by jgo              ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

include ../make_config/Color_rules.mk
include ../make_config/Rules.mk

SRCS = megaphone.cpp

NAME = megaphone

OBJS = $(SRCS:.cpp=.o)
DEPS = $(SRCS:.cpp=.d)
-include $(DEPS)

all bonus :
	$(MAKE) $(NAME)
	$(Q)$(call color_printf,$(GREEN),$(NAME),✨ compiled!)

$(NAME): $(OBJS)
	$(LINK.cc) $^ -o $@
	
clean:
	$(Q)$(call color_printf,$(YELLOW),$(NAME),🎯 clean object & dependencies)
	$(RM) $(DEPS) $(OBJS)

fclean: clean
	$(Q)$(call color_printf,$(RED),$(NAME),🎯 remove $(NAME))
	$(RM) $(NAME)

re: fclean
	$(MAKE)

.PHONY: all clean fclean re bonus

