while true; do
    touchHidlTest -c wo 0 24 0 # 平滑等级 smooth_lv (1-5)
    echo "0" > /proc/touchpanel/smooth_level # Force set, try to disable smooth 还是禁用不掉

    touchHidlTest -c wo 0 25 5 # 灵敏等级 sensitive_lv (0-5)
    # touchHidlTest -c wo 0 32 0 # 是否启用手写笔 可禁用面积防误触 (0/1) 该项影响手写笔，已分离至 action.sh
    sleep 5
done
