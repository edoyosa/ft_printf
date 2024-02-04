# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ebellini <ebellini@student.42roma.it>      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/02/04 17:33:04 by ebellini          #+#    #+#              #
#    Updated: 2024/02/04 18:06:40 by ebellini         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a

SRCS = ft_printf.c hexa.c

OBJS = $(SRCS:.c=.o)

CC = gcc

RM = rm -f

LIBFT_PATH = ./libft

LIBFT = ${LIBFT_PATH}/libft.a

FLAGS = -Wall -Werror -Wextra



.c.o:
		$(CC) $(FLAGS) -g -c $< -o $(<:.c=.o)

$(NAME): $(OBJS)
		make -C libft
		ar rcs $(NAME) $(OBJS) ${LIBFT}

all: $(NAME)

clean:
		make clean -C libft
		$(RM) $(OBJS) $(LIBFT)

fclean: clean
		make fclean -C libft
		$(RM) $(NAME)

re: fclean all

.phony: all clean fclean re
