while true; do
    touchHidlTest -c wo 0 24 1 # 平滑等级 smooth_lv (1-5)
    touchHidlTest -c wo 0 25 5 # 灵敏等级 sensitive_lv (0-5)
    # touchHidlTest -c wo 0 32 0 # 面积防误触 (0/1) 该项影响手写笔，已分离至 action.sh
    touchHidlTest -c wo 0 38 1000
    sleep 5
done
