CC = gcc
CFLAGS = -c -Wall -Wextra -Werror
NASM = nasm
NASM_FLAGS = -f elf64
MAIN = main.c
ASM_SOURCES = ft_strlen.s ft_strcpy.s ft_strcmp.s ft_write.s ft_read.s ft_strdup.s
MAIN_BONUS = main_bonus.c
ASM_BONUS_SOURCES =	ft_list_push_front_bonus.s ft_list_size_bonus.s
NAME = libasm.a
TEST = test
DO_BONUS = 0

ifeq ($(DO_BONUS), 1)
	MAIN_OBJECT = $(MAIN_BONUS:.c=.o)
	OBJECTS = $(ASM_BONUS_SOURCES:.s=.o)
else
	MAIN_OBJECT = $(MAIN:.c=.o)
	OBJECTS = $(ASM_SOURCES:.s=.o)
endif

all: $(NAME)

$(NAME): $(OBJECTS)
	ar cr $(NAME) $(OBJECTS)
	ranlib $(NAME)

$(TEST): $(NAME) $(MAIN_OBJECT)
	$(CC) -no-pie $(MAIN_OBJECT) $(NAME) -o $(TEST)

%.o: %.s
	$(NASM) $(NASM_FLAGS) $< -o $@

%.o: %.c
	$(CC) $(CFLAGS) $< -o $@

bonus:
	$(MAKE) DO_BONUS=1

clean:
	rm -f *.o

fclean:
	rm -f *.o
	rm -f $(NAME)
	rm -f $(TEST)

re: fclean all

.PHONY: all clean fclean bonus re