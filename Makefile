CFLAGS  = -Wall -Wextra -Werror
NAME    = libft.a
AR		= ar -rcs
SRC		= \
	ft_isalpha.c ft_isdigit.c ft_isalnum.c ft_isascii.c ft_isprint.c \
	ft_strlen.c ft_memset.c ft_bzero.c ft_memcpy.c ft_memcpy.c ft_memmove.c \
	ft_strlcpy.c ft_strlcat.c ft_toupper.c ft_tolower.c ft_strchr.c \
	ft_strrchr.c ft_strncmp.c ft_memchr.c ft_memcmp.c ft_strnstr.c ft_atoi.c \
	ft_calloc.c ft_strdup.c ft_putchar_fd.c ft_putstr_fd.c \
	ft_putendl_fd.c ft_putnbr_fd.c ft_striteri.c ft_strmapi.c ft_substr.c \
	ft_strjoin.c ft_strtrim.c ft_split.c ft_itoa.c 
OBJ		= ${SRC:.c=.o}
SRCBON	= \
		ft_lstnew.c ft_lstadd_front.c ft_lstsize.c ft_lstlast.c ft_lstadd_back.c \
	ft_lstdelone.c ft_lstclear.c ft_lstiter.c ft_lstmap.c
OBJBON	= ${SRCBON:.c=.o}

all: $(NAME)

$(NAME): $(OBJ)
	@$(AR) $(NAME) $(OBJ)
	@echo Making the Library ✅ ✅
bonus: $(OBJBON) $(OBJ)
	@$(AR) $(NAME) $(OBJBON) $(OBJ)
	@echo Making the bonus Library ✅ ✅
clean:
	@rm -rf *.o
	@echo Deleting all .o Files 🗑️ 🗑️
fclean: clean
	@rm -f $(NAME)
	@echo Deleting .a File 🗑️ 🗑️

%.o: %.c
	@gcc $(CFLAGS) -I libft.h -o $@ -c $<

re: fclean all

.PHONY: all clean fclean re bonus