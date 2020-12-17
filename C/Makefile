# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: kibotrel <kibotrel@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/12/17 09:26:52 by kibotrel          #+#    #+#              #
#    Updated: 2020/12/17 09:52:36 by kibotrel         ###   ########.fr        #
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

S_COLLEEN		= Colleen.c
O_COLLEEN		= $(S_COLLEEN:.c=.o)

S_GRACE			= Grace.c
O_GRACE			= $(S_GRACE:.c=.o)

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

# Implicit make rule simply to compile the different quines.

all: $(COLLEEN) $(GRACE)

$(COLLEEN): $(O_COLLEEN)
	@echo "$(YELLOW)\n      - Building $(RESET)$@ $(YELLOW)...\n$(RESET)"
	@$(CC) $(CFLAGS) -o $@ $(O_COLLEEN)
	@echo "$(GREEN)***   Quine $@ successfully compiled   ***\n$(RESET)"

$(GRACE): $(O_GRACE)
	@echo "$(YELLOW)\n      - Building $(RESET)$@ $(YELLOW)...\n$(RESET)"
	@$(CC) $(CFLAGS) -o $@ $(O_GRACE)
	@echo "$(GREEN)***   Quine $@ successfully compiled   ***\n$(RESET)"


# Deleting all .o files.

clean:
	@echo "$(GREEN)***   Deleting all .o files   ...   ***\n$(RESET)"
	@$(RM) $(O_COLLEEN) $(O_GRACE)

# Deleting all executables and libraries after cleaning up all .o files.

fclean: clean
	@echo "$(GREEN)***   Deleting executable files from   ...   ***\n$(RESET)"
	@$(RM) $(COLLEEN) $(GRACE)

# Re-compile everything.

re: fclean all

# Avoid unexpected behaviour when regular files get the same name
# as the following variables.

.PHONY: all clean fclean re