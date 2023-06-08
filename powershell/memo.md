### powreshellメモ

* 管理者実行
    ```powershell
    powershell start-process "実行するバッチ" -verb runas
    ```

* cmd や bat から ps1 を実行する
    ```bat
    powershell -NoProfile -ExecutionPolicy Unrestricted "実行する.ps1"
    ```
