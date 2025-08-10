# macos-screenshot-utility

## 项目说明

这是一个 macOS 截图工具，旨在帮助用户方便地进行屏幕截图并进行后续处理。

### 如何方便使用

1.  **一键截图**: 运行 `shotpaste.sh` 脚本即可快速截取屏幕。
2.  **自动保存**: 截图会自动保存到指定位置。
3.  **自定义设置**: 您可以编辑 `shotpaste.sh` 文件来修改截图的保存路径、文件名格式等。
4.  **设置别名**: 为了更方便地使用，您可以将 `shotpaste.sh` 脚本设置为别名。例如，在您的 shell 配置文件（如 `~/.bashrc`, `~/.zshrc` 或 `~/.config/fish/config.fish`）中添加以下行：
    ```bash
    alias shot="/path/to/your/home/directory/Gemini/macos-screenshot-utility/shotpaste.sh"
    ```
    然后，您就可以在任何地方直接运行 `shot` 命令来执行截图操作。