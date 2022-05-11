# 用途
rails routesの情報をcsvに書き出す。
# 使い方
1. builderpadレポジトリのtmpフォルダ等に、list_routes.rbとlist_routes.shを配置する
2. 以下のコマンドを実行する
```
# 以下はURLに"chat_app"を含むルーティングを出力する例。"chat_app"の部分は適宜置き換える。
dc exec web bash tmp/list_routes.sh chat_app
```
3. list_routes.rbと同じディレクトリにlist_routes.csvが出力される
