# MSBuildメモ

## ソリューション内の特定のプロジェクト、プラットフォーム、構成でビルドする場合
```bat
MSBuild.exe Hoge.sln /t:HogeProj:"Rebuild" /p:Configuration=Release;Platform="win64" /m
```

* 落とし穴
Platformについてはソリューションの構成マネージャにて名前を変更している場合は  
その名前で指定しなくてはならない。  
しかし、対象ファイルがslnではなくvcxprojの場合は元々のプラットフォーム名を指定する。  
(e.g. slnではwin64だが、vcxprojはx64)
別名はソリューション側で管理していてプロジェクトは元々の名前しか知らないため。
```bat
MSBuild.exe HogeProj/HogeProj.vcxproj /t:Rebuild /p:Configuration="Release";Platform="x64" /m
```