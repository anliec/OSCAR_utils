#!/bin/bash

for pid in $(ps h -o pid -C Main_Thread)
do
	kill $pid
done
