#!/usr/bin/env bash

if [ -d "$HOME/gtest/lib" ]; then
	echo "Using cached gtest"
else
	mkdir -p ./libs
	git clone https://github.com/google/googletest.git ./libs/gtest
	cd ./libs/gtest
	mkdir build && cd build
	cmake .. && make
	mkdir -p $HOME/gtest/lib $HOME/gtest/include/gtest
	cp ./googlemock/gtest/libgtest* $HOME/gtest/lib
	cp -r ./../googletest/include/gtest/* $HOME/gtest/include/gtest
fi
