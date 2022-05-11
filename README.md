# 使い方
1. builderpadレポジトリのtmpフォルダ配下に、list_routes.rbとlist_routes.shを配置する
2. 以下のコマンドを実行する
```
# 以下はURLに"chat_app"を含むルーティングを出力する例。"chat_app"の部分は適宜置き換える
dc exec web bash tmp/list_routes.sh chat_app
```
