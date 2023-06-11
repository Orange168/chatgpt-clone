export http_proxy=http://127.0.0.1:7890
export https_proxy=http://127.0.0.1:7890
#python3 run.py
nohup python3 run.py </dev/null >output.log 2>&1 &
