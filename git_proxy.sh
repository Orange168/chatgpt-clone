#!/bin/bash

set_proxy() {
    # 设置代理地址和端口
    proxy="127.0.0.1:7890"

    # 设置代理
    git config --global http.proxy "$proxy"
    git config --global https.proxy "$proxy"

    echo "代理已设置"
}

unset_proxy() {
    # 取消代理
    git config --global --unset http.proxy
    git config --global --unset https.proxy

    echo "代理已取消"
}

echo "请选择要执行的操作:"
echo "1. 设置代理"
echo "2. 取消代理"

read -p "请输入选项序号: " option

case $option in
    1)
        set_proxy
        ;;
    2)
        unset_proxy
        ;;
    *)
        echo "无效的选项"
        ;;
esac

