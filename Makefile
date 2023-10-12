NAME = libft.a

SRCS = ft_isascii.c ft_memcpy.c ft_split.c ft_strlen.c ft_tolower.c \
ft_isdigit.c ft_memmove.c ft_strchr.c ft_strmapi.c ft_toupper.c \
ft_atoi.c ft_isprint.c ft_memset.c ft_strdup.c ft_strncmp.c \
ft_bzero.c ft_itoa.c ft_putchar_fd.c ft_striteri.c ft_strnstr.c \
ft_calloc.c ft_putendl_fd.c ft_strjoin.c ft_strrchr.c ft_isalnum.c \
ft_memchr.c ft_putnbr_fd.c ft_strlcat.c ft_strtrim.c ft_isalpha.c \
ft_memcmp.c ft_putstr_fd.c ft_strlcpy.c ft_substr.c
BONUS_SRCS = ft_lstnew.c ft_lstadd_front.c ft_lstsize.c ft_lstlast.c \
ft_lstadd_back.c ft_lstdelone.c ft_lstclear.c ft_lstiter.c ft_lstmap.c \

OBJECTS = $(SRCS:.c=.o)
BONUS_OBJECTS = $(BONUS_SRCS:.c=.o)

CFLAGS = -Wall -Wextra -Werror

all: $(NAME)

$(NAME): $(OBJECTS)
	ar rc $(NAME) $(OBJECTS)
	gcc $(CFLAGS) -c $(SRCS)

bonus: $(BONUS_OBJECTS)
	ar rc $(NAME) $(BONUS_OBJECTS)
	gcc $(CFLAGS) -c $(BONUS_SRCS)

clean:
	$(RM) $(OBJECTS) $(BONUS_OBJECTS)

fclean: clean
	$(RM) $(NAME)

re: fclean all

.PHONY: all clean fclean re bonus