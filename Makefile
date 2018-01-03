NAME	= cdate

CC	= gcc
CFLAGS	= -Wall -Werror -Wextra -std=c11

SRCS	= $(shell find . -maxdepth 1 -name "*.c")
OBJS	= $(SRCS:%.c=%.o)

all : $(NAME)

$(NAME) : $(OBJS)
	$(CC) -o $(NAME) $(OBJS)

$(OBJS) : $(SRCS)
	$(CC) $(CFLAGS) -o $@ -c $<

clean :
	rm -f $(OBJS)

fclean : clean
	rm -f $(NAME)

re : fclean all

.PHONY : all clean fclean re
