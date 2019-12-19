## Nodejsメモ

### 更新方法
- windows版はinstallerを実行して更新が推奨されている
- https://nodejs.org/ja/ （※基本的にLTSをインストール）

### npm

パッケージ管理ツール

* npmのバージョン確認
    ```
    npm --version
    ```

* パッケージインストール
    ```
    npm install <パッケージ名>{@<バージョン>}


    (例)

    npm install express@4.16.3

    -g をつけるとグローバル環境にインストールされる

    npm install -g <パッケージ名>
    ```

* インストールされているパッケージの確認
    ```
    npm list
    ```

* パッケージの検索方法
    ```
    npm search パッケージ名
    ```

* package.jsonの使い方
    - initコマンドで作成できる
        ```
        npm init
        ```
    - --saveを付与することでpackage.jsonに記述される
        ```
        npm install --save <パッケージ名>
        ```
    - package.jsonがあるディレクトリで
        ```
        npm install
        ```
      を実行することで、記述されているパッケージをインストールすることができる

### node_modules
ローカルにインストールしたパッケージはすべてこのフォルダ以下にインストールされる
