# CSE30SP24 DFA Example

# if you type 'make' without arguments, this is the default
PROG        = noq
all:        $(PROG)

# header files and the associated object files
HEAD        =  states.h
SRC         =  noq.c states.c
OBJ         =  ${SRC:%.c=%.o}

# special libraries
LIB         =
LIBFLAGS    = -L ./ $(LIB)

# select the compiler and flags you can over-ride on command line
# e.g., make DEBUG=
CC          = gcc
DEBUG       = -ggdb
CSTD        =
WARN        = -Wall -Wextra
CDEFS       =
CFLAGS      = -I. $(DEBUG) $(WARN) $(CSTD) $(CDEFS)

$(OBJ): $(HEAD)

# specify how to compile/assemble the target
$(PROG): $(OBJ)
	$(CC) $(CFLAGS) $(OBJ) $(LIB) -o $@

# remove binaries
.PHONY: clean clobber
clean:
	rm -f $(OBJ) $(PROG)

