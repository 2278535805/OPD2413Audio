#!/bin/sh

# while true; do
#     touchHidlTest -c wo 0 24 0 # 平滑等级 smooth_lv (1-5)
#     echo "0" > /proc/touchpanel/smooth_level # Force set, try to disable smooth 还是禁用不掉

#     touchHidlTest -c wo 0 25 5 # 灵敏等级 sensitive_lv (0-5)
#     # touchHidlTest -c wo 0 32 0 # 是否启用手写笔 可禁用面积防误触 (0/1) 打开游戏之前记得断开手写笔连接就行了
#     sleep 5
# done

# while [ "$(getprop sys.boot_completed)" != "1" ]; do sleep 5; done && sleep 5

boost() {
    pgrep -f $1 | while read pid; do
    echo $pid > /dev/cpuset/top-app/cgroup.procs
    echo $pid > /dev/stune/top-app/cgroup.procs
    chrt -p $pid -f 5
    done
}

while true; do
    boost audioserver
    boost audiohalservice.qti

    sleep 1

    screen=`dumpsys deviceidle get screen`
    while test "$screen" = "false" ; do
        sleep 5
        screen=`dumpsys deviceidle get screen`
    done

done
