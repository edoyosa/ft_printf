# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ebellini <ebellini@student.42roma.it>      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/02/04 17:33:04 by ebellini          #+#    #+#              #
#    Updated: 2024/02/04 23:26:59 by ebellini         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a

SRCS = ft_printf.c ft_printf_utilities.c

OBJS = $(SRCS:.c=.o)

CC = gcc

RM = rm -f

LIBFT_PATH = ./libft

LIBFT = ${LIBFT_PATH}/libft.a

FLAGS = -Wall -Werror -Wextra

.c.o:
		$(CC) $(FLAGS) -g -c $< -o $(<:.c=.o)

$(NAME): $(OBJS) ${LIBFT}
		ar rcs $(NAME) $(OBJS) ${LIBFT}

all: $(NAME)

$(LIBFT):
		make all -C $(LIBFT_PATH)
		make bonus -C $(LIBFT_PATH)
clean:
		make clean -C ${LIBFT_PATH}
		$(RM) $(OBJS)

fclean: clean
		make fclean -C ${LIBFT_PATH}
		$(RM) $(NAME)

re: fclean all

.PHONY: all clean fclean re
