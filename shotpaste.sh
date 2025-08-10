#!/bin/bash

# 根据用户的最新请求，回归到一个更简单、直接的实现。

# 1. 基于当前毫秒时间戳生成一个唯一的文件名。
FILENAME="$(date +%s%3N).png"

# 2. 获取当前终端的工作目录的绝对路径。
# `pwd` 会返回运行此脚本的目录，这也是用户期望的保存位置。
CURRENT_DIR=$(pwd)

# 3. 拼接出截图的最终保存路径。
SAVE_PATH="$CURRENT_DIR/$FILENAME"

# 4. 执行交互式区域截图，并直接将文件保存到最终路径。
screencapture -i "$SAVE_PATH"

# 5. 检查截图文件是否成功创建。如果用户按 ESC 取消，文件将不存在。
if [ ! -f "$SAVE_PATH" ]; then
    echo "截图操作已取消。"
    exit 0
fi

# 6. 将新截图的绝对路径复制到剪贴板。
# `pbcopy` 是 macOS 上用于操作剪贴板的命令。
echo -n "$SAVE_PATH" | pbcopy

# 7. 向用户提供清晰的反馈信息。
echo "截图已成功保存到: $SAVE_PATH"
echo "文件路径已复制到您的剪贴板，请按 Command + V 粘贴。"