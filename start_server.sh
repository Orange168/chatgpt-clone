#!/bin/bash
export OPENAI_API_KEY=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
# export http_proxy=http://127.0.0.1:1080
# export https_proxy=http://127.0.0.1:1080

echo "请选择操作："
echo "1. 前台启动进程：python3 run.py"
echo "2. 后台启动进程：nohup python3 run.py </dev/null >output.log 2>&1 &"
echo "3. 重启进程"

read -p "请输入选项序号：" option

case $option in
    1)
        echo "执行前台启动进程命令："
        python3 run.py
        ;;
    2)
        echo "执行后台启动进程命令："
        nohup python3 run.py </dev/null >output.log 2>&1 &
        ;;
    3)
        echo "执行重启进程命令："
        # 查找使用9000端口的进程ID
        PID=$(lsof -t -i :9000)
        if [ -z "$PID" ]; then
            echo "进程未找到或未使用9000端口"
        else
            # 终止进程
            kill $PID
            echo "进程 $PID 已终止"
        fi
        # 重新启动进程
        nohup python3 run.py </dev/null >output.log 2>&1 &
        echo "进程已重新启动"
        ;;
    *)
        echo "无效的选项"
        ;;
esac


