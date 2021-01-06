# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: kibotrel <kibotrel@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/12/17 09:26:52 by kibotrel          #+#    #+#              #
#    Updated: 2021/01/06 03:26:59 by kibotrel         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#---------------------------------- VARIABLES ---------------------------------#

# Executables.

COLLEEN		= Colleen
GRACE		= Grace
SULLY		= Sully

# Color codes.

RESET		= \033[0m
GREEN		= \033[32m
YELLOW		= \033[33m

#------------------------------------ FILES -----------------------------------#

S_COLLEEN	= Colleen.s
O_COLLEEN	= $(S_COLLEEN:.s=.o)

S_GRACE		= Grace.s
O_GRACE		= $(S_GRACE:.s=.o)

S_SULLY		= Sully.s
O_SULLY		= $(S_SULLY:.s=.o)


#--------------------------------- COMPILATION --------------------------------#

# How files should be compiled.

CC			= gcc
NASM		= nasm -f elf64

# Compilation flags.

CFLAGS		= -Wall -Wextra -Werror

#------------------------------------ RULES -----------------------------------#

# Redefinition of the implicit compilation rule to prompt some informations.

%.o: %.s
	@echo "$(YELLOW)      - Compiling :$(RESET)" $<
	@$(NASM) $<

# Implicit make rule simply to compile the different quines.

all: $(COLLEEN) $(GRACE) $(SULLY)

$(COLLEEN): $(O_COLLEEN)
	@echo "$(YELLOW)\n      - Building $(RESET)$@ $(YELLOW)...\n$(RESET)"
	@$(CC) $(CFLAGS) -o $@ $(O_COLLEEN)
	@echo "$(GREEN)***   Quine $@ successfully compiled   ***\n$(RESET)"

$(GRACE): $(O_GRACE)
	@echo "$(YELLOW)\n      - Building $(RESET)$@ $(YELLOW)...\n$(RESET)"
	@$(CC) $(CFLAGS) -o $@ $(O_GRACE)
	@echo "$(GREEN)***   Quine $@ successfully compiled   ***\n$(RESET)"

$(SULLY): $(O_SULLY)
	@echo "$(YELLOW)\n      - Building $(RESET)$@ $(YELLOW)...\n$(RESET)"
	@$(CC) $(CFLAGS) -o $@ $(O_SULLY)
	@echo "$(GREEN)***   Quine $@ successfully compiled   ***\n$(RESET)"

# Deleting all .o files.

clean:
	@echo "$(GREEN)***   Deleting all .o files   ...   ***\n$(RESET)"
	@$(RM) $(O_COLLEEN) $(O_GRACE) $(O_SULLY)

# Deleting all executables after cleaning up all .o files.

fclean: clean
	@echo "$(GREEN)***   Deleting executable files from   ...   ***\n$(RESET)"
	@$(RM) $(COLLEEN) $(GRACE) $(SULLY) Grace_kid.* Sully_*

# Re-compile everything.

re: fclean all

# Avoid unexpected behaviour when regular files get the same name
# as the following variables.

.PHONY: all clean fclean re