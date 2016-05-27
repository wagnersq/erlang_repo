#!/bin/sh

erlc helloworld.erl

erl -noshell -s helloworld start -s init stop

rm helloworld.beam

erl -noshell -eval 'io:fwrite("Hello, one liner World!\n"), init:stop().'
