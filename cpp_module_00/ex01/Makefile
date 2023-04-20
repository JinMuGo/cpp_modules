# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jgo <jgo@student.42seoul.fr>               +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/04/07 19:34:14 by jgo               #+#    #+#              #
#    Updated: 2023/04/20 21:01:51 by jgo              ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

ifndef TOPDIR
	TOPDIR = $(abspath ../)
endif

include $(TOPDIR)/make_config/Rules.mk
include $(TOPDIR)/make_config/Color_rules.mk

SRCS = megaphone.cpp

NAME = megaphone

OBJS = $(SRCS:.cpp=.o)
DEPS = $(SRCS:.cpp=.d)
-include $(DEPS)

all bonus :
	$(MAKE) $(NAME)

$(NAME): $(OBJS)
	$(LINK.cc) $^ -o $@
	
clean:
	$(RM) $(DEPS) $(OBJS)

fclean: clean
	$(RM) $(NAME)

re: fclean
	$(MAKE)

.PHONY: all clean fclean re bonus

