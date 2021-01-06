# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: kibotrel <kibotrel@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/12/17 09:26:52 by kibotrel          #+#    #+#              #
#    Updated: 2021/01/06 06:20:19 by kibotrel         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#---------------------------------- VARIABLES ---------------------------------#

COLLEEN		= Colleen
GRACE		= Grace
SULLY		= Sully

RESET		= \033[0m
GREEN		= \033[32m
YELLOW		= \033[33m

#------------------------------------ FILES -----------------------------------#

S_COLLEEN	= Colleen.c
O_COLLEEN	= $(S_COLLEEN:.c=.o)
S_GRACE		= Grace.c
O_GRACE		= $(S_GRACE:.c=.o)
S_SULLY		= Sully.c
O_SULLY		= $(S_SULLY:.c=.o)

#--------------------------------- COMPILATION --------------------------------#

CC			= gcc
CFLAGS		= -Wall -Wextra -Werror

#------------------------------------ RULES -----------------------------------#

%.o: %.c
	@echo "$(YELLOW)      - Compiling :$(RESET)" $<
	@$(CC) $(CFLAGS) -c $< -o $@

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

clean:
	@echo "$(GREEN)***   Deleting all .o files   ...   ***\n$(RESET)"
	@$(RM) $(O_COLLEEN) $(O_GRACE) $(O_SULLY)

fclean: clean
	@echo "$(GREEN)***   Deleting executable files from   ...   ***\n$(RESET)"
	@$(RM) $(COLLEEN) $(GRACE) $(SULLY) Grace_kid.* Sully_*

re: fclean all

.PHONY: all clean fclean re