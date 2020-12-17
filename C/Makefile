# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: demonwaves <demonwaves@student.42.fr>      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/09/10 16:16:29 by kibotrel          #+#    #+#              #
#    Updated: 2020/12/17 09:12:41 by demonwaves       ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#---------------------------------- VARIABLES ---------------------------------#

# Executables.

COLLEEN			= Colleen
GRACE			= Grace
SULLY			= Sully

# Color codes.

RESET			= \033[0m
GREEN			= \033[32m
YELLOW			= \033[33m

#------------------------------------ FILES -----------------------------------#

SRCS			:= Colleen.c

OBJS			= $(SRCS:.c=.o)

#--------------------------------- COMPILATION --------------------------------#

# How files should be compiled.

CC				= gcc

# Compilation flags.

CFLAGS			= -Wall -Wextra -Werror

#------------------------------------ RULES -----------------------------------#

# Redefinition of the implicit compilation rule to prompt some informations.

%.o: %.c
	@echo "$(YELLOW)      - Compiling :$(RESET)" $<
	@$(CC) $(CFLAGS) -c $< -o $@

# Implicit make rule simply using dependancies to compile our project.

all: $(COLLEEN)

$(COLLEEN): $(OBJS)
	@echo "$(YELLOW)\n      - Building $(RESET)$@ $(YELLOW)...\n$(RESET)"
	@$(CC) $(CFLAGS) -o $@ $@.c
	@echo "$(GREEN)***   Quine $@ successfully compiled   ***\n$(RESET)"

# Deleting all .o files.

clean:
	@echo "$(GREEN)***   Deleting all .o files   ...   ***\n$(RESET)"
	@$(RM) $(OBJS)

# Deleting all executables and libraries after cleaning up all .o files.

fclean: clean
	@echo "$(GREEN)***   Deleting executable files from   ...   ***\n$(RESET)"
	@$(RM) $(COLLEEN)

# Re-compile everything.

re: fclean all

# Avoid unexpected behaviour when regular files get the same name
# as the following variables.

.PHONY: all clean fclean re