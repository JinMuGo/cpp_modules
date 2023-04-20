# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Rules.mk                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jgo <jgo@student.42seoul.fr>               +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/11/05 14:02:20 by jgo               #+#    #+#              #
#    Updated: 2023/04/20 17:53:54 by jgo              ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

.DEFAULT_ON_ERROR:
.DEFAULT_GOAL = all

PROJECT_NAME = cpp_modules
STD = c++98 
CPPFLAGS = -std=$(STD) -Wall -Wextra -Werror -MMD -MP

# verbose
Q := $(if $(filter 1,$(V) $(VERBOSE)),,@)

# debug
ifdef DEBUG
	CPPFLAGS = -g3 -MMD -MP
	LDFLAGS += -g3
endif

# just compile
ifdef JUST
	CPPFLAGS = -MMD -MP
endif

# address
ifdef ADDR
	CPPFLAGS += -fsanitize=address
endif

ifdef RACE
	CPPFLAGS = -fsanitize=thread -MMD -MP -g3
	LDFLAGS += -fsanitize=thread -g3
endif
