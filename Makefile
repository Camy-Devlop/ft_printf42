#* ************************************************************************** */
#*                                                                            */
#*                                                        :::      ::::::::   */
#*   Makefile                                           :+:      :+:    :+:   */
#*                                                    +:+ +:+         +:+     */
#*   By: isadbaib <isadbaib@student.s19.be>         +#+  +:+       +#+        */
#*                                                +#+#+#+#+#+   +#+           */
#*   Created: 2023/09/21 02:47:46 by iadbaibi          #+#    #+#             */
#*   Updated: 2023/09/21 20:01:16 by iadbaibi         ###   ########.fr       */
#*                                                                            */
#* ************************************************************************** */
CC = cc
FLAGS = -Wall -Wextra -Werror
LIBFT = libft.a
LIBFT_SRC = ./libft/
NAME = libftprintf.a
SRC =	./src/ft_free_memory.c ./src/ft_digit_len.c \
			./src/ft_printf.c ./src/ft_check_type.c \
			./src/ft_print_desimal.c ./src/ft_print_char.c ./src/ft_print_string.c \
			./src/ft_print_adress.c ./src/ft_print_u.c ./src/ft_print_x.c \
			./src/ft_print_x_upcase.c
LIBTODO = ar rcs
#$(wildcard *.c) c'ést la version qui permet de cherche automatique et de liste les fichier 
OBJ = $(SRC:.c=.o)
SRH = ./include/ft_printf.h
RM = rm -f
#$(wildcard *.h)

all: $(LIBFT) $(NAME)
		ar -x ./libft/libft.a
		ar -r $(NAME) *.o
#		rm *.o

$(LIBFT):
		$(MAKE) -C $(LIBFT_SRC)

$(NAME): $(OBJ)
		$(LIBTODO) $@ $(OBJ)
		

%.o: %.c
		$(CC) -o $@ -c $< $(FLAGS)

clean:
		rm -f $(OBJ) 
		$(MAKE) -C $(LIBFT_SRC) clean
		rm -f *.o
fclean: clean
		$(RM) $(NAME) $(OBJ) 
		$(MAKE) -C $(LIBFT_SRC) fclean

re: fclean all
.PHONY : all clean fclean re
