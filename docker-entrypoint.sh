#!/bin/bash
set -e
freeMem=`awk '/MemFree/ { print int($2/1024) }' /proc/meminfo`
s=$(($freeMem/10*8))
x=$(($freeMem/10*8))
n=$(($freeMem/10*2))
export JVM_ARGS="-Xmn${n}m -Xms${s}m -Xmx${x}m"
$JMETER_BIN/jmeter \
    -n \
    -t "/load_tests/${TEST_DIR}/${TEST_PLAN}.jmx" \
    -l "/load_tests/${TEST_DIR}/${TEST_PLAN}.jtl" \
exec tail -f jmeter.log
