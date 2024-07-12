$script_dir = Split-Path -Parent $MyInvocation.MyCommand.Path

# カレントディレクトリのフォルダを取得(otherは最後に来るようにする)
$folders = Get-ChildItem -Directory -Path $script_dir -Exclude ".temp" | Where-Object { $_.Name -ne "other" }
$folders += Get-ChildItem -Directory -Path $script_dir -Filter "other"


# 目次を格納する変数
$contents = New-Object System.Collections.Generic.List[string]

$contents += "### 目次"
$contents += "- [README](./README.md)"

# 各フォルダを処理
foreach ($folder in $folders) {
    # フォルダ名の見出し (H2)
    $folder_name = $folder.Name
    $contents += "- $folder_name"

    # フォルダ内の markdown ファイルを取得
    $md_files = Get-ChildItem -Path $folder.FullName -Filter "*.md"

    # 各 markdown ファイルを処理
    foreach ($md_file in $md_files) {
        # ファイル名の見出し (H3)
        $md_file_base_name = $md_file.BaseName
        $md_file_name = $md_file.Name
        $contents += "  - [$md_file_base_name](./$folder_name/$md_file_name)"
    }
}

if (!(Test-Path "$script_dir/.temp")) {
    New-Item -ItemType Directory -Force -Path "$script_dir/.temp"
}

# 目次を `content.md` ファイルに出力
Write-Output $contents | Out-File -FilePath ".temp/content.md" -Encoding utf8 -Force