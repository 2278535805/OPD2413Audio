echo "- 音量+ 禁用手写笔 禁用面积防误触"
echo "- 音量- 启用手写笔 启用面积防误触"

while [ "$key_click" = "" ]; do
	key_click=$(getevent -qlc 1 | awk '{ print $3 }' | grep 'KEY_')
	sleep 0.05
done

case $key_click in
KEY_VOLUMEUP)
    touchHidlTest -c wo 0 32 0
	echo "- 已禁用手写笔"
	;;
*)
    touchHidlTest -c wo 0 32 1
	echo "- 已启用手写笔"
	;;
esac
