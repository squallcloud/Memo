### powreshellメモ

* 管理者実行
    ```powershell
    powershell start-process "実行するバッチ" -verb runas
    ```

* cmd や bat から ps1 を実行する
    ```bat
    powershell -NoProfile -ExecutionPolicy Unrestricted "実行する.ps1"
    ```

* レジストリ
    - レジストリにキー、エントリー追加
        ```powershell
        New-ItemProperty -Path <キーのパス> -Name <エントリー名> -PropertyType <エントリーのタイプ> -Value <値> -Force
        ```
    - エントリーの値更新
        ```powershell
        Set-ItemProperty -Path <キーのパス> -Name <エントリー名> -Value <値>
        ```
    - エントリーの削除
        ```powershell
        Remove-ItemProperty -Path <キーのパス> -Name <エントリー名>
        ```
    - エントリーの取得
        ```powershell
        Get-ItemProperty -Path <キーのパス> -Name <エントリー名>
        ```
