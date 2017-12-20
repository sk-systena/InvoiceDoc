FORMAT: 1A
 
# Group InvoiceAPI
 
## 請求書登録APIのエンドポイント [/invoice/regist]
 
### 請求書登録 [POST]
 
#### 処理概要
 
* 請求書を新しく登録する。
* 登録に成功した場合、アクセストークンを返す。
 
+ Request (application/json)
 
    + Headers
 
            Accept: application/json
 
    + Attributes
        + email: test@example.com (string, required) - メールアドレス（format: email）
        + password: abc123 (string, required) - パスワード（pattern: ^[0-9A-Za-z]{6,16}$）
 
+ Response 200 (application/json)
 
    + Attributes
        + status: 200 (number, required) - アクセストークン

## ユーザのエンドポイント [/invoice/remove]
 
### 請求書削除 [POST]
 
#### 処理概要
 
* ユーザ情報を新しく登録する。
* 登録に成功した場合、アクセストークンを返す。
 
+ Request (application/json)
 
    + Headers
 
            Accept: application/json
 
    + Attributes
        + email: test@example.com (string, required) - メールアドレス（format: email）
        + password: abc123 (string, required) - パスワード（pattern: ^[0-9A-Za-z]{6,16}$）
 
+ Response 201 (application/json)
 
    + Attributes
        + accessToken: f58ba22059f5a8aa8f346e0f40987adab326041fac99029c909bef2c6300821a (string, required) - アクセストークン

## 請求書情報取得 [/invoice/search]
 
### 請求書情報取得API [POST]
 
#### 処理概要
 
* 検索条件に該当する請求書情報を返す。
* 必須検索項目は無し。
* 返却は該当するすべての請求書情報をjson形式にて返却。

+ Request (application/json)

    + Headers

            Accept: application/json

    + Parameters
 
        + groupId: 11440002 (number, required) - ユーザが所属するグループID
        + userId: 300 (number, optional) - ユーザID
        + mailAddress: some@example.com (string, optional) - ユーザのメールアドレス
 
+ Response 200 (application/json)
 
    + Attributes
        + status : 200 (number, required) - Status(200:成功, 500:Serverエラー, 999:システムエラー)
        + user (required)
            + name: wada (string, required)
            + age: 18 (number, required) -- (6)
            + type: 0 (enum, required) - ユーザ種別(0:無料ユーザ, 1:有料ユーザ) -- (7)
                + 0 (number)
                + 1 (number)
            + profile (object, required) -- (8)
            + registered: `2015-06-11T08:40:51Z` (string, required)  -- (9)
            + favorites (array) -- (10)
                + `https://dev.classmethod.jp/` (string)
        + messageHistory (array) -- (11)
            + (object)
                + id: 22345 (number, required)
                + title: 今日の献立 (string, required)
