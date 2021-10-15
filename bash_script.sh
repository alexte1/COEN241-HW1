#run sysbench cpu test
sysbench --test=cpu --cpu-max-prime=20000 run

echo "--------------------------------------------------------------------------------------"

# run fileio test
sysbench --num-threads=16 --test=fileio --file-total-size=6G --file-test-mode=rndrw prepare
sysbench --num-threads=16 --test=fileio --file-total-size=6G --file-test-mode=rndrw run
sysbench --num-threads=16 --test=fileio --file-total-size=6G --file-test-mode=rndrw cleanup
