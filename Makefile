NAME	=	libft.a

SRC	=	ft_isalpha.c\
		ft_isalnum.c\
		ft_isdigit.c\
		ft_isascii.c\
		ft_isprint.c\
		ft_memset.c\
		ft_strlen.c\
		ft_strlcpy.c\
		ft_strlcat.c\
		ft_strchr.c\
		ft_strrchr.c\
		ft_strncmp.c\
		ft_strnstr.c\
		ft_toupper.c\
		ft_tolower.c\
		ft_memcpy.c\
		ft_bzero.c\
		ft_memmove.c\
		ft_memchr.c\
		ft_memcmp.c\
		ft_atoi.c\
		ft_calloc.c\
		ft_strdup.c\
		ft_substr.c\
		ft_strjoin.c\
		ft_strtrim.c\
		ft_split.c\
		ft_putchar_fd.c\
		ft_putstr_fd.c\
		ft_putendl_fd.c\
		ft_putnbr_fd.c\
		ft_strmapi.c\
		ft_striteri.c\
		ft_itoa.c\

BONUS =  ft_lstnew.c\
		 ft_lstadd_front.c\
		 ft_lstsize.c\
		 ft_lstlast.c\
		 ft_lstadd_back.c\
		 ft_lstdelone.c\
		 ft_lstclear.c\
		 ft_lstiter.c\
		 ft_lstmap.c\

SRC_O	=	$(SRC:.c=.o)

BONUS_O =	$(BONUS:.c=.o)

CC	=	gcc

CFLAGS	=	-Werror -Wextra -Wall

LIB	= ar rc

all	:	$(NAME)

$(NAME)	:	$(SRC_O) $(BONUS_O)
	$(LIB) $@ $<

%.o	:	%.c libft.h
	$(CC) $(CFLAGS) -c $<

bonus : $(BONUS_O)
	$(LIB) $(NAME) $^

clean	:
	rm -f $(SRC_O) $(BONUS_O)

fclean	: clean
	rm -f $(NAME)

re	: fclean all


