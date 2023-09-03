include dmenu/config.mk
all: deps note
deps:
	make -C cmagickarg
note: note.c
	${CC} $^ -o $@ ${LIBS} ${INCS} dmenu/libdmenu.a
clean:
	rm -rf note *.o *.a
	make -C cmagickarg clean
