### gitメモ

* git の更新方法
    ```
    git update-git-for-windows
    ```

* コメントを取得したい
    ```
    git log -n 1 --pretty=format:%s
    ```
    - git log だけだと複数履歴表示される
    - -n 1 で1件表示にしている
    - --pretty=format:～で抜き出したい情報を指定している