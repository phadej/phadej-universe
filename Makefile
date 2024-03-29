project-files: cabal.7.4.2.project cabal.7.6.3.project cabal.7.8.4.project cabal.7.10.3.project cabal.8.0.2.project cabal.8.2.2.project cabal.8.4.4.project cabal.8.6.5.project cabal.8.8.4.project cabal.8.10.7.project cabal.9.0.2.project cabal.9.2.7.project cabal.9.4.6.project cabal.9.6.2.project cabal.9.8.1.project
Makefile: cabal.darkmatter
	darkmatter > Makefile
build: build-7.4.2 build-7.6.3 build-7.8.4 build-7.10.3 build-8.0.2 build-8.2.2 build-8.4.4 build-8.6.5 build-8.8.4 build-8.10.7 build-9.0.2 build-9.2.7 build-9.4.6 build-9.6.2 build-9.8.1
test: test-build test-7.4.2 test-7.6.3 test-7.8.4 test-7.10.3 test-8.0.2 test-8.2.2 test-8.4.4 test-8.6.5 test-8.8.4 test-8.10.7 test-9.0.2 test-9.2.7 test-9.4.6 test-9.6.2 test-9.8.1
test-build: test-dry test-build-7.4.2 test-build-7.6.3 test-build-7.8.4 test-build-7.10.3 test-build-8.0.2 test-build-8.2.2 test-build-8.4.4 test-build-8.6.5 test-build-8.8.4 test-build-8.10.7 test-build-9.0.2 test-build-9.2.7 test-build-9.4.6 test-build-9.6.2 test-build-9.8.1
test-dry: test-dry-7.4.2 test-dry-7.6.3 test-dry-7.8.4 test-dry-7.10.3 test-dry-8.0.2 test-dry-8.2.2 test-dry-8.4.4 test-dry-8.6.5 test-dry-8.8.4 test-dry-8.10.7 test-dry-9.0.2 test-dry-9.2.7 test-dry-9.4.6 test-dry-9.6.2 test-dry-9.8.1
deps: deps-7.4.2.png deps-7.6.3.png deps-7.8.4.png deps-7.10.3.png deps-8.0.2.png deps-8.2.2.png deps-8.4.4.png deps-8.6.5.png deps-8.8.4.png deps-8.10.7.png deps-9.0.2.png deps-9.2.7.png deps-9.4.6.png deps-9.6.2.png deps-9.8.1.png
build-7.10.3: cabal.7.10.3.project
	cabal new-build --builddir=dist-newstyle-7.10.3 --project-file cabal.7.10.3.project -w ghc-7.10.3 --disable-tests --disable-benchmarks all
build-7.4.2: cabal.7.4.2.project
	cabal new-build --builddir=dist-newstyle-7.4.2 --project-file cabal.7.4.2.project -w ghc-7.4.2 --disable-tests --disable-benchmarks all
build-7.6.3: cabal.7.6.3.project
	cabal new-build --builddir=dist-newstyle-7.6.3 --project-file cabal.7.6.3.project -w ghc-7.6.3 --disable-tests --disable-benchmarks all
build-7.8.4: cabal.7.8.4.project
	cabal new-build --builddir=dist-newstyle-7.8.4 --project-file cabal.7.8.4.project -w ghc-7.8.4 --disable-tests --disable-benchmarks all
build-8.0.2: cabal.8.0.2.project
	cabal new-build --builddir=dist-newstyle-8.0.2 --project-file cabal.8.0.2.project -w ghc-8.0.2 --disable-tests --disable-benchmarks all
build-8.10.7: cabal.8.10.7.project
	cabal new-build --builddir=dist-newstyle-8.10.7 --project-file cabal.8.10.7.project -w ghc-8.10.7 --disable-tests --disable-benchmarks all
build-8.2.2: cabal.8.2.2.project
	cabal new-build --builddir=dist-newstyle-8.2.2 --project-file cabal.8.2.2.project -w ghc-8.2.2 --disable-tests --disable-benchmarks all
build-8.4.4: cabal.8.4.4.project
	cabal new-build --builddir=dist-newstyle-8.4.4 --project-file cabal.8.4.4.project -w ghc-8.4.4 --disable-tests --disable-benchmarks all
build-8.6.5: cabal.8.6.5.project
	cabal new-build --builddir=dist-newstyle-8.6.5 --project-file cabal.8.6.5.project -w ghc-8.6.5 --disable-tests --disable-benchmarks all
build-8.8.4: cabal.8.8.4.project
	cabal new-build --builddir=dist-newstyle-8.8.4 --project-file cabal.8.8.4.project -w ghc-8.8.4 --disable-tests --disable-benchmarks all
build-9.0.2: cabal.9.0.2.project
	cabal new-build --builddir=dist-newstyle-9.0.2 --project-file cabal.9.0.2.project -w ghc-9.0.2 --disable-tests --disable-benchmarks all
build-9.2.7: cabal.9.2.7.project
	cabal new-build --builddir=dist-newstyle-9.2.7 --project-file cabal.9.2.7.project -w ghc-9.2.7 --disable-tests --disable-benchmarks all
build-9.4.6: cabal.9.4.6.project
	cabal new-build --builddir=dist-newstyle-9.4.6 --project-file cabal.9.4.6.project -w ghc-9.4.6 --disable-tests --disable-benchmarks all
build-9.6.2: cabal.9.6.2.project
	cabal new-build --builddir=dist-newstyle-9.6.2 --project-file cabal.9.6.2.project -w ghc-9.6.2 --disable-tests --disable-benchmarks all
build-9.8.1: cabal.9.8.1.project
	cabal new-build --builddir=dist-newstyle-9.8.1 --project-file cabal.9.8.1.project -w ghc-9.8.1 --disable-tests --disable-benchmarks all
cabal.7.10.3.project: cabal.darkmatter
	darkmatter
cabal.7.4.2.project: cabal.darkmatter
	darkmatter
cabal.7.6.3.project: cabal.darkmatter
	darkmatter
cabal.7.8.4.project: cabal.darkmatter
	darkmatter
cabal.8.0.2.project: cabal.darkmatter
	darkmatter
cabal.8.10.7.project: cabal.darkmatter
	darkmatter
cabal.8.2.2.project: cabal.darkmatter
	darkmatter
cabal.8.4.4.project: cabal.darkmatter
	darkmatter
cabal.8.6.5.project: cabal.darkmatter
	darkmatter
cabal.8.8.4.project: cabal.darkmatter
	darkmatter
cabal.9.0.2.project: cabal.darkmatter
	darkmatter
cabal.9.2.7.project: cabal.darkmatter
	darkmatter
cabal.9.4.6.project: cabal.darkmatter
	darkmatter
cabal.9.6.2.project: cabal.darkmatter
	darkmatter
cabal.9.8.1.project: cabal.darkmatter
	darkmatter
deps-7.10.3.png: cabal.7.10.3.project
	cabal new-build --builddir=dist-newstyle-7.10.3 --project-file cabal.7.10.3.project -w ghc-7.10.3 --disable-tests --disable-benchmarks all --dry-run
	cabal-plan --hide-builtin --hide-global dot --builddir=dist-newstyle-7.10.3 --tred --tred-weights | dot -Tpng -odeps-7.10.3.png
	cabal-plan topo --builddir=dist-newstyle-7.10.3 | sort > deps-7.10.3.txt
deps-7.4.2.png: cabal.7.4.2.project
	cabal new-build --builddir=dist-newstyle-7.4.2 --project-file cabal.7.4.2.project -w ghc-7.4.2 --disable-tests --disable-benchmarks all --dry-run
	cabal-plan --hide-builtin --hide-global dot --builddir=dist-newstyle-7.4.2 --tred --tred-weights | dot -Tpng -odeps-7.4.2.png
	cabal-plan topo --builddir=dist-newstyle-7.4.2 | sort > deps-7.4.2.txt
deps-7.6.3.png: cabal.7.6.3.project
	cabal new-build --builddir=dist-newstyle-7.6.3 --project-file cabal.7.6.3.project -w ghc-7.6.3 --disable-tests --disable-benchmarks all --dry-run
	cabal-plan --hide-builtin --hide-global dot --builddir=dist-newstyle-7.6.3 --tred --tred-weights | dot -Tpng -odeps-7.6.3.png
	cabal-plan topo --builddir=dist-newstyle-7.6.3 | sort > deps-7.6.3.txt
deps-7.8.4.png: cabal.7.8.4.project
	cabal new-build --builddir=dist-newstyle-7.8.4 --project-file cabal.7.8.4.project -w ghc-7.8.4 --disable-tests --disable-benchmarks all --dry-run
	cabal-plan --hide-builtin --hide-global dot --builddir=dist-newstyle-7.8.4 --tred --tred-weights | dot -Tpng -odeps-7.8.4.png
	cabal-plan topo --builddir=dist-newstyle-7.8.4 | sort > deps-7.8.4.txt
deps-8.0.2.png: cabal.8.0.2.project
	cabal new-build --builddir=dist-newstyle-8.0.2 --project-file cabal.8.0.2.project -w ghc-8.0.2 --disable-tests --disable-benchmarks all --dry-run
	cabal-plan --hide-builtin --hide-global dot --builddir=dist-newstyle-8.0.2 --tred --tred-weights | dot -Tpng -odeps-8.0.2.png
	cabal-plan topo --builddir=dist-newstyle-8.0.2 | sort > deps-8.0.2.txt
deps-8.10.7.png: cabal.8.10.7.project
	cabal new-build --builddir=dist-newstyle-8.10.7 --project-file cabal.8.10.7.project -w ghc-8.10.7 --disable-tests --disable-benchmarks all --dry-run
	cabal-plan --hide-builtin --hide-global dot --builddir=dist-newstyle-8.10.7 --tred --tred-weights | dot -Tpng -odeps-8.10.7.png
	cabal-plan topo --builddir=dist-newstyle-8.10.7 | sort > deps-8.10.7.txt
deps-8.2.2.png: cabal.8.2.2.project
	cabal new-build --builddir=dist-newstyle-8.2.2 --project-file cabal.8.2.2.project -w ghc-8.2.2 --disable-tests --disable-benchmarks all --dry-run
	cabal-plan --hide-builtin --hide-global dot --builddir=dist-newstyle-8.2.2 --tred --tred-weights | dot -Tpng -odeps-8.2.2.png
	cabal-plan topo --builddir=dist-newstyle-8.2.2 | sort > deps-8.2.2.txt
deps-8.4.4.png: cabal.8.4.4.project
	cabal new-build --builddir=dist-newstyle-8.4.4 --project-file cabal.8.4.4.project -w ghc-8.4.4 --disable-tests --disable-benchmarks all --dry-run
	cabal-plan --hide-builtin --hide-global dot --builddir=dist-newstyle-8.4.4 --tred --tred-weights | dot -Tpng -odeps-8.4.4.png
	cabal-plan topo --builddir=dist-newstyle-8.4.4 | sort > deps-8.4.4.txt
deps-8.6.5.png: cabal.8.6.5.project
	cabal new-build --builddir=dist-newstyle-8.6.5 --project-file cabal.8.6.5.project -w ghc-8.6.5 --disable-tests --disable-benchmarks all --dry-run
	cabal-plan --hide-builtin --hide-global dot --builddir=dist-newstyle-8.6.5 --tred --tred-weights | dot -Tpng -odeps-8.6.5.png
	cabal-plan topo --builddir=dist-newstyle-8.6.5 | sort > deps-8.6.5.txt
deps-8.8.4.png: cabal.8.8.4.project
	cabal new-build --builddir=dist-newstyle-8.8.4 --project-file cabal.8.8.4.project -w ghc-8.8.4 --disable-tests --disable-benchmarks all --dry-run
	cabal-plan --hide-builtin --hide-global dot --builddir=dist-newstyle-8.8.4 --tred --tred-weights | dot -Tpng -odeps-8.8.4.png
	cabal-plan topo --builddir=dist-newstyle-8.8.4 | sort > deps-8.8.4.txt
deps-9.0.2.png: cabal.9.0.2.project
	cabal new-build --builddir=dist-newstyle-9.0.2 --project-file cabal.9.0.2.project -w ghc-9.0.2 --disable-tests --disable-benchmarks all --dry-run
	cabal-plan --hide-builtin --hide-global dot --builddir=dist-newstyle-9.0.2 --tred --tred-weights | dot -Tpng -odeps-9.0.2.png
	cabal-plan topo --builddir=dist-newstyle-9.0.2 | sort > deps-9.0.2.txt
deps-9.2.7.png: cabal.9.2.7.project
	cabal new-build --builddir=dist-newstyle-9.2.7 --project-file cabal.9.2.7.project -w ghc-9.2.7 --disable-tests --disable-benchmarks all --dry-run
	cabal-plan --hide-builtin --hide-global dot --builddir=dist-newstyle-9.2.7 --tred --tred-weights | dot -Tpng -odeps-9.2.7.png
	cabal-plan topo --builddir=dist-newstyle-9.2.7 | sort > deps-9.2.7.txt
deps-9.4.6.png: cabal.9.4.6.project
	cabal new-build --builddir=dist-newstyle-9.4.6 --project-file cabal.9.4.6.project -w ghc-9.4.6 --disable-tests --disable-benchmarks all --dry-run
	cabal-plan --hide-builtin --hide-global dot --builddir=dist-newstyle-9.4.6 --tred --tred-weights | dot -Tpng -odeps-9.4.6.png
	cabal-plan topo --builddir=dist-newstyle-9.4.6 | sort > deps-9.4.6.txt
deps-9.6.2.png: cabal.9.6.2.project
	cabal new-build --builddir=dist-newstyle-9.6.2 --project-file cabal.9.6.2.project -w ghc-9.6.2 --disable-tests --disable-benchmarks all --dry-run
	cabal-plan --hide-builtin --hide-global dot --builddir=dist-newstyle-9.6.2 --tred --tred-weights | dot -Tpng -odeps-9.6.2.png
	cabal-plan topo --builddir=dist-newstyle-9.6.2 | sort > deps-9.6.2.txt
deps-9.8.1.png: cabal.9.8.1.project
	cabal new-build --builddir=dist-newstyle-9.8.1 --project-file cabal.9.8.1.project -w ghc-9.8.1 --disable-tests --disable-benchmarks all --dry-run
	cabal-plan --hide-builtin --hide-global dot --builddir=dist-newstyle-9.8.1 --tred --tred-weights | dot -Tpng -odeps-9.8.1.png
	cabal-plan topo --builddir=dist-newstyle-9.8.1 | sort > deps-9.8.1.txt
test-7.10.3: cabal.7.10.3.project test-build-7.10.3
	cabal new-test --builddir=dist-newstyle-7.10.3 --project-file cabal.7.10.3.project -w ghc-7.10.3 --enable-tests --enable-benchmarks all
test-7.4.2: cabal.7.4.2.project test-build-7.4.2
	cabal new-test --builddir=dist-newstyle-7.4.2 --project-file cabal.7.4.2.project -w ghc-7.4.2 --enable-tests --enable-benchmarks all
test-7.6.3: cabal.7.6.3.project test-build-7.6.3
	cabal new-test --builddir=dist-newstyle-7.6.3 --project-file cabal.7.6.3.project -w ghc-7.6.3 --enable-tests --enable-benchmarks all
test-7.8.4: cabal.7.8.4.project test-build-7.8.4
	cabal new-test --builddir=dist-newstyle-7.8.4 --project-file cabal.7.8.4.project -w ghc-7.8.4 --enable-tests --enable-benchmarks all
test-8.0.2: cabal.8.0.2.project test-build-8.0.2
	cabal new-test --builddir=dist-newstyle-8.0.2 --project-file cabal.8.0.2.project -w ghc-8.0.2 --enable-tests --enable-benchmarks all
test-8.10.7: cabal.8.10.7.project test-build-8.10.7
	cabal new-test --builddir=dist-newstyle-8.10.7 --project-file cabal.8.10.7.project -w ghc-8.10.7 --enable-tests --enable-benchmarks all
test-8.2.2: cabal.8.2.2.project test-build-8.2.2
	cabal new-test --builddir=dist-newstyle-8.2.2 --project-file cabal.8.2.2.project -w ghc-8.2.2 --enable-tests --enable-benchmarks all
test-8.4.4: cabal.8.4.4.project test-build-8.4.4
	cabal new-test --builddir=dist-newstyle-8.4.4 --project-file cabal.8.4.4.project -w ghc-8.4.4 --enable-tests --enable-benchmarks all
test-8.6.5: cabal.8.6.5.project test-build-8.6.5
	cabal new-test --builddir=dist-newstyle-8.6.5 --project-file cabal.8.6.5.project -w ghc-8.6.5 --enable-tests --enable-benchmarks all
test-8.8.4: cabal.8.8.4.project test-build-8.8.4
	cabal new-test --builddir=dist-newstyle-8.8.4 --project-file cabal.8.8.4.project -w ghc-8.8.4 --enable-tests --enable-benchmarks all
test-9.0.2: cabal.9.0.2.project test-build-9.0.2
	cabal new-test --builddir=dist-newstyle-9.0.2 --project-file cabal.9.0.2.project -w ghc-9.0.2 --enable-tests --enable-benchmarks all
test-9.2.7: cabal.9.2.7.project test-build-9.2.7
	cabal new-test --builddir=dist-newstyle-9.2.7 --project-file cabal.9.2.7.project -w ghc-9.2.7 --enable-tests --enable-benchmarks all
test-9.4.6: cabal.9.4.6.project test-build-9.4.6
	cabal new-test --builddir=dist-newstyle-9.4.6 --project-file cabal.9.4.6.project -w ghc-9.4.6 --enable-tests --enable-benchmarks all
test-9.6.2: cabal.9.6.2.project test-build-9.6.2
	cabal new-test --builddir=dist-newstyle-9.6.2 --project-file cabal.9.6.2.project -w ghc-9.6.2 --enable-tests --enable-benchmarks all
test-9.8.1: cabal.9.8.1.project test-build-9.8.1
	cabal new-test --builddir=dist-newstyle-9.8.1 --project-file cabal.9.8.1.project -w ghc-9.8.1 --enable-tests --enable-benchmarks all
test-build-7.10.3: cabal.7.10.3.project test-dry-7.10.3
	cabal new-build --builddir=dist-newstyle-7.10.3 --project-file cabal.7.10.3.project -w ghc-7.10.3 --enable-tests --enable-benchmarks all
test-build-7.4.2: cabal.7.4.2.project test-dry-7.4.2
	cabal new-build --builddir=dist-newstyle-7.4.2 --project-file cabal.7.4.2.project -w ghc-7.4.2 --enable-tests --enable-benchmarks all
test-build-7.6.3: cabal.7.6.3.project test-dry-7.6.3
	cabal new-build --builddir=dist-newstyle-7.6.3 --project-file cabal.7.6.3.project -w ghc-7.6.3 --enable-tests --enable-benchmarks all
test-build-7.8.4: cabal.7.8.4.project test-dry-7.8.4
	cabal new-build --builddir=dist-newstyle-7.8.4 --project-file cabal.7.8.4.project -w ghc-7.8.4 --enable-tests --enable-benchmarks all
test-build-8.0.2: cabal.8.0.2.project test-dry-8.0.2
	cabal new-build --builddir=dist-newstyle-8.0.2 --project-file cabal.8.0.2.project -w ghc-8.0.2 --enable-tests --enable-benchmarks all
test-build-8.10.7: cabal.8.10.7.project test-dry-8.10.7
	cabal new-build --builddir=dist-newstyle-8.10.7 --project-file cabal.8.10.7.project -w ghc-8.10.7 --enable-tests --enable-benchmarks all
test-build-8.2.2: cabal.8.2.2.project test-dry-8.2.2
	cabal new-build --builddir=dist-newstyle-8.2.2 --project-file cabal.8.2.2.project -w ghc-8.2.2 --enable-tests --enable-benchmarks all
test-build-8.4.4: cabal.8.4.4.project test-dry-8.4.4
	cabal new-build --builddir=dist-newstyle-8.4.4 --project-file cabal.8.4.4.project -w ghc-8.4.4 --enable-tests --enable-benchmarks all
test-build-8.6.5: cabal.8.6.5.project test-dry-8.6.5
	cabal new-build --builddir=dist-newstyle-8.6.5 --project-file cabal.8.6.5.project -w ghc-8.6.5 --enable-tests --enable-benchmarks all
test-build-8.8.4: cabal.8.8.4.project test-dry-8.8.4
	cabal new-build --builddir=dist-newstyle-8.8.4 --project-file cabal.8.8.4.project -w ghc-8.8.4 --enable-tests --enable-benchmarks all
test-build-9.0.2: cabal.9.0.2.project test-dry-9.0.2
	cabal new-build --builddir=dist-newstyle-9.0.2 --project-file cabal.9.0.2.project -w ghc-9.0.2 --enable-tests --enable-benchmarks all
test-build-9.2.7: cabal.9.2.7.project test-dry-9.2.7
	cabal new-build --builddir=dist-newstyle-9.2.7 --project-file cabal.9.2.7.project -w ghc-9.2.7 --enable-tests --enable-benchmarks all
test-build-9.4.6: cabal.9.4.6.project test-dry-9.4.6
	cabal new-build --builddir=dist-newstyle-9.4.6 --project-file cabal.9.4.6.project -w ghc-9.4.6 --enable-tests --enable-benchmarks all
test-build-9.6.2: cabal.9.6.2.project test-dry-9.6.2
	cabal new-build --builddir=dist-newstyle-9.6.2 --project-file cabal.9.6.2.project -w ghc-9.6.2 --enable-tests --enable-benchmarks all
test-build-9.8.1: cabal.9.8.1.project test-dry-9.8.1
	cabal new-build --builddir=dist-newstyle-9.8.1 --project-file cabal.9.8.1.project -w ghc-9.8.1 --enable-tests --enable-benchmarks all
test-dry-7.10.3: cabal.7.10.3.project
	cabal new-build --builddir=dist-newstyle-7.10.3 --project-file cabal.7.10.3.project -w ghc-7.10.3 --enable-tests --enable-benchmarks --dry all
test-dry-7.4.2: cabal.7.4.2.project
	cabal new-build --builddir=dist-newstyle-7.4.2 --project-file cabal.7.4.2.project -w ghc-7.4.2 --enable-tests --enable-benchmarks --dry all
test-dry-7.6.3: cabal.7.6.3.project
	cabal new-build --builddir=dist-newstyle-7.6.3 --project-file cabal.7.6.3.project -w ghc-7.6.3 --enable-tests --enable-benchmarks --dry all
test-dry-7.8.4: cabal.7.8.4.project
	cabal new-build --builddir=dist-newstyle-7.8.4 --project-file cabal.7.8.4.project -w ghc-7.8.4 --enable-tests --enable-benchmarks --dry all
test-dry-8.0.2: cabal.8.0.2.project
	cabal new-build --builddir=dist-newstyle-8.0.2 --project-file cabal.8.0.2.project -w ghc-8.0.2 --enable-tests --enable-benchmarks --dry all
test-dry-8.10.7: cabal.8.10.7.project
	cabal new-build --builddir=dist-newstyle-8.10.7 --project-file cabal.8.10.7.project -w ghc-8.10.7 --enable-tests --enable-benchmarks --dry all
test-dry-8.2.2: cabal.8.2.2.project
	cabal new-build --builddir=dist-newstyle-8.2.2 --project-file cabal.8.2.2.project -w ghc-8.2.2 --enable-tests --enable-benchmarks --dry all
test-dry-8.4.4: cabal.8.4.4.project
	cabal new-build --builddir=dist-newstyle-8.4.4 --project-file cabal.8.4.4.project -w ghc-8.4.4 --enable-tests --enable-benchmarks --dry all
test-dry-8.6.5: cabal.8.6.5.project
	cabal new-build --builddir=dist-newstyle-8.6.5 --project-file cabal.8.6.5.project -w ghc-8.6.5 --enable-tests --enable-benchmarks --dry all
test-dry-8.8.4: cabal.8.8.4.project
	cabal new-build --builddir=dist-newstyle-8.8.4 --project-file cabal.8.8.4.project -w ghc-8.8.4 --enable-tests --enable-benchmarks --dry all
test-dry-9.0.2: cabal.9.0.2.project
	cabal new-build --builddir=dist-newstyle-9.0.2 --project-file cabal.9.0.2.project -w ghc-9.0.2 --enable-tests --enable-benchmarks --dry all
test-dry-9.2.7: cabal.9.2.7.project
	cabal new-build --builddir=dist-newstyle-9.2.7 --project-file cabal.9.2.7.project -w ghc-9.2.7 --enable-tests --enable-benchmarks --dry all
test-dry-9.4.6: cabal.9.4.6.project
	cabal new-build --builddir=dist-newstyle-9.4.6 --project-file cabal.9.4.6.project -w ghc-9.4.6 --enable-tests --enable-benchmarks --dry all
test-dry-9.6.2: cabal.9.6.2.project
	cabal new-build --builddir=dist-newstyle-9.6.2 --project-file cabal.9.6.2.project -w ghc-9.6.2 --enable-tests --enable-benchmarks --dry all
test-dry-9.8.1: cabal.9.8.1.project
	cabal new-build --builddir=dist-newstyle-9.8.1 --project-file cabal.9.8.1.project -w ghc-9.8.1 --enable-tests --enable-benchmarks --dry all
git-update:
	git submodule foreach git checkout master
	git submodule foreach git pull
cabal-deps:
	cabal-deps */*.cabal */*/*.cabal
