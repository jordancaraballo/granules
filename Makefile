chequeo = no
corridas:
	$(info Generando Diagramas)
	@cd doc/Diagramas;make
	$(info Corrinedo test_1 Chignolin)
	@cd package/granules/tests/chignolin;make
	$(info Corriendo test_2 tubos)
	@cd package/granules/tests/tubes;make
	$(chequeo) : si

clean:
	@rm -f package/granules/__pycache__/__init__.cpython-37.pyc
	@rm -f package/granules/structure/__pycache__/LAMMPSdata.cpython-37.pyc
	@rm -f package/granules/structure/__pycache__/NAMDdata.cpython-37.pyc
	@rm -f package/granules/structure/__pycache__/__init__.cpython-37.pyc
