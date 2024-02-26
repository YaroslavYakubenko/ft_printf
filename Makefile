# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    MakeFile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: yyakuben <yyakuben@student.42wolfsburg.    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/12/22 20:51:12 by yyakuben          #+#    #+#              #
#    Updated: 2023/12/22 20:51:12 by yyakuben         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a

SRCS = $(wildcard *.c)

OBJS = $(SRCS:.c=.o)

CC = gcc

CFLAGS = -Wall -Wextra -Werror

$(NAME): $(OBJS)
	ar -rcs $(NAME) $(OBJS)
 
all: $(NAME)

clean:
	rm -rf $(OBJS)

fclean: clean
	rm -rf $(NAME)
	
re: fclean all 

.PHONY: all clean fclean re

# NAME = libftprintf.a
# CC = gcc
# CFLAGS = -Wall -Wextra -Werror

# SRC = $(wildcard *.c)
# OBJ = $(patsubst %.c, %.o, $(SRC))

# $(NAME) : $(OBJ)
# 	$(CC) $(OBJ) -o $(NAME)

# %.o : %.c
# 	$(CC) -c $< -o $@

# clean :
# 	rm $(NAME) *.o