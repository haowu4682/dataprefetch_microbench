
SRCS := $(wildcard src/*.cc)
OBJS := $(patsubst src/%.cc, bin/%, $(SRCS))

bin/%: src/%.cc
	g++ -o $@ $^

all: $(OBJS)

clean:
	rm -rf bin/*
