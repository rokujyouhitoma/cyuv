
build_ext:
	python setup.py build_ext --inplace

run:
	python main.py

clean:
	@echo Cleaning
	@rm -f *~ *.o *.so core core.* *.c
