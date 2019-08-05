CDCMD=jsish -c
#CC=clang -fsanitize=address 

Terminal.so: Terminal.c
	$(CC)  `$(CDCMD) -cflags true Terminal.so`

Terminal.c: Terminal.jsc #terminalinc.c
	$(CDCMD) $(CDOPTS)  Terminal.jsc

install: Terminal.so
	install -Dvt /usr/local/lib/jsi Terminal.so
clean:
	rm -f Terminal.c Terminal.so
