#* ************************************************************************** */
#*                                                                            */
#*                                                        :::      ::::::::   */
#*   Makefile                                           :+:      :+:    :+:   */
#*                                                    +:+ +:+         +:+     */
#*   By: isadbaib <isadbaib@student.s19.be>         +#+  +:+       +#+        */
#*                                                +#+#+#+#+#+   +#+           */
#*   Created: 2023/09/21 02:47:46 by iadbaibi          #+#    #+#             */
#*   Updated: 2024/10/18 20:01:16 by iadbaibi         ###   ########.fr       */
#*                                                                            */
#* ************************************************************************** */
SRC = src/check/ft_isprint.c src/check/ft_isdigit.c \
	  src/check/ft_isalpha.c src/check/ft_isalnum.c \
	  src/check/ft_isascii.c src/conversion/ft_tolower.c \
	  src/conversion/ft_atoi.c src/conversion/ft_itoa.c \
	  src/conversion/ft_toupper.c src/display/ft_putendl_fd.c \
	  src/display/ft_putstr_fd.c src/display/ft_putnbr_fd.c \
	  src/display/ft_putchar_fd.c src/memory/ft_memcmp.c \
	  src/memory/ft_memmove.c src/memory/ft_memchr.c \
      src/memory/ft_calloc.c src/memory/ft_bzero.c \
	  src/memory/ft_memset.c src/memory/ft_memcpy.c \
	  src/string/ft_strchr.c src/string/ft_strnstr.c \
	  src/string/ft_strlcat.c src/string/ft_strjoin.c \
	  src/string/ft_strlen.c src/string/ft_striteri.c \
	  src/string/ft_strncmp.c src/string/ft_strcmp.c \
 	  src/string/ft_strdup.c src/string/ft_strrchr.c \
	  src/string/ft_strlcpy.c src/string/ft_substr.c \
	  src/string/ft_strmapi.c src/string/ft_strtrim.c \
	  src/string/ft_split.c 
SRCBONUS = src/list/ft_lstadd_front_bonus.c src/list/ft_lstnew_bonus.c \
	       src/list/ft_lstsize_bonus.c src/list/ft_lstadd_back_bonus.c \
	   	   src/list/ft_lstclear_bonus.c src/list/ft_lstlast_bonus.c \
	       src/list/ft_lstdelone_bonus.c src/list/ft_lstiter_bonus.c \
	   	   src/list/ft_lstmap_bonus.c
#${wildcard *.c} c'ést la version qui permet de cherche automatique et de liste les fichier 

CC = gcc
FLAGS = -Wall -Wextra -Werror
NAME = libft.a
LIBTODO = ar rcs
RM = rm -f
OBJ = ${SRC:.c=.o}
OBJB = ${SRCBONUS:.c=.o}

${NAME}: ${OBJ}
		${LIBTODO} $@ ${OBJ}

%.o: %.c
		${CC} -o $@ -c $< ${FLAGS}

all: ${NAME} 

bonus:	${OBJ} ${OBJB}
		${LIBTODO} ${NAME} ${OBJ} ${OBJB}
clean:
		${RM} ${OBJ} ${OBJB}

fclean: clean
		${RM} ${NAME} ${BONUS}

re: fclean all

.PHONY: all clean fclean re bonus
