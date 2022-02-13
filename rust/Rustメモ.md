# Rustメモ

## 環境セットアップ
* rustup-init.exe を実行。たぶんデフォルトの 1 を選択でもいいかも。
    - PATH に %USERPROFILE%\.cargo\bin が設定されている
* VSCode拡張の Rust(rls)、CodeLLDB を入れる
    - Python は 3.8 だと LLDB.dll がロードできないってエラーがでる(なので一旦 3.8 はアンインストールした)。

## プロジェクト作成・ビルド
* 下記を実行
    ```
    cargo new <プロジェクト名>
    ```
* プロジェクトフォルダをVSCodeで開く
* F5 実行で デバッグ + 実行 までやってくれる