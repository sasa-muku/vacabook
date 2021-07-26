## はじめに
### 概要
英単語アプリ作成のための API。英単語の登録、単語の音声再生の機能を持つ。

### 環境
* Rails 5.2.6

### サーバ起動に必要なコマンド
```
bundle install
bin/rails db:create
bin/rails db:migrate
bin/rails s
```

## 基本

| 動作 |  Method  |  URL Sample
| ---- | ---- | ---- |
| 一覧 |  GET  |  /api/v1/vocabs |
| 一部 |  GET  |  /api/v1/vocabs/:id |
| 新規 |  POST |  /api/v1/vocabs |
| 更新 |  PUT  |  /api/v1/vocabs/:id |
| 削除 |  DELETE  | /api/v1/vocabs/:id |

### リクエスト例（新規登録）
Content-Type:application/json
```
{
    "en":"cat",
    "ja":"猫",
    "memo":"犬のがかわいい"
}
```
## 音声変換

| 動作 |  Method  |  URL Sample
| ---- | ---- | ---- |
| 音声データ取得 |  GET  |  /api/v1/speeches/:word |

## 認証
基本的に `devise_token_auth` をデフォルト設定で利用。

https://devise-token-auth.gitbook.io/devise-token-auth/usage

リクエストヘッダーに必要な認証情報
```
"access-token": "wwwww",
"token-type":   "Bearer",
"client":       "xxxxx",
"uid":          "zzzzz"
```

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
