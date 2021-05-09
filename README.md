# API 利用方法
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
  * Rails 5.2.6

* System dependencies

* Configuration

* Database creation

  ```rails db:create```

* Database initialization

  ```rails db:migrate```

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions
