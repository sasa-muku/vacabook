# API 利用方法
* rails環境構築
  * Rails 5.2.6
  * インストール後コマンド
    * bin/rails db:create
    * bin/rails db:migrate
    * bin/rails s

## 仕様

| 動作 |  Method  |  URL Sample
| ---- | ---- | ---- |
| 一覧 |  GET  |  /api/v1/vocabs |
| 一部 |  GET  |  /api/v1/vocabs/:id |
| 新規 |  POST |  /api/v1/vocabs |
| 更新 |  PUT  |  /api/v1/vocabs/:id |
| 削除 |  DELETE  | /api/v1/vocabs/:id |

### リクエスト例（新規登録）
Content-Type:application/json

{
    "en":"cat",
    "ja":"猫",
    "memo":"犬のがかわいい"
}

### リクエスト例（更新）
Content-Type:application/json

{
    "en":"cat",
    "ja":"猫",
    "memo":"やっぱり猫のがかわいい"
}


# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version
  * 

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions
