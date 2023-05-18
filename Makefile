# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: sbarbero <sbarbero@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/05/15 21:19:56 by sbarbero          #+#    #+#              #
#    Updated: 2023/05/18 22:34:00 by sbarbero         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME	= libft.a
SOURCE	= 	ft_isalpha.c ft_isdigit.c ft_isalnum.c ft_isascii.c \
			ft_isprint.c ft_strlen.c ft_memset.c ft_bzero.c \
			ft_memcpy.c ft_memmove.c ft_strlcpy.c ft_strlcat.c \
			ft_toupper.c ft_tolower.c ft_strchr.c ft_strrchr.c \
			ft_strncmp.c ft_memchr.c ft_memcmp.c ft_strnstr.c \
			ft_atoi.c ft_calloc.c ft_strdup.c ft_substr.c \
			ft_strjoin.c ft_strtrim.c ft_split.c ft_itoa.c \
			ft_strmapi.c ft_striteri.c ft_putchar_fd.c ft_putstr_fd.c \
			ft_putendl_fd.c ft_putnbr_fd.c
			
OBJECT	= $(SOURCE:.c=.o)

SRC_BONUS = ft_lstnew.c ft_lstadd_front.c ft_lstsize.c ft_lstlast.c \
			ft_lstadd_back.c ft_lstdelone.c ft_lstclear.c ft_lstiter.c \
			ft_lstmap.c
OBJ_BONUS = $(SRC_BONUS:.c=.o)

FLAGS	= -Wall -Werror -Wextra
INCLUDE	= libft.h

LIB		= ar rcs
RM		= rm -f

all: $(NAME)

$(NAME): $(OBJECT) $(INCLUDE)
	@$(LIB) $(NAME) $(OBJECT)

%.o: %.c
	@gcc $(FLAGS) -c -o $@ $<

clean:
	@$(RM) $(OBJECT) $(OBJ_BONUS)

fclean: clean
	@$(RM) $(NAME)

re: fclean all

bonus: $(OBJ_BONUS) $(INCLUDE)
	@$(LIB) $(NAME) $(OBJ) $(OBJ_BONUS)

.PHONY: all clean fclean re bonus comp