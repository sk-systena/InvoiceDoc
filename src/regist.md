FORMAT: 1A
 
# Group InvoiceAPI

# 請求書 新規登録 [/invoice/]
# 請求書の登録 [POST]
#### 処理概要
 
* 請求書を新しく登録する。
* 登録に成功した場合、ステータス200と請求書番号を返す。
 
+ Request (application/json)
 
    + Headers
 
            Accept : application/json
 
    + Attributes
        + client_no : 1234567 (number, required) - 顧客管理番号
        + invoiceStatus : 20 (string, required) - 請求状態(10: 新規作成, 20: 送付済, 30: 入金確認済, 90: 廃棄)
        + invoiceTitle : 例：１月度請求 (string, required) -　請求書タイトル
        + invoiceSt : 2017/01/01 (string, required) - 請求期間開始日 [YYYY/MM/DD]
        + invoiceEd : 2017/01/31 (string, required) - 請求期間終了日 [YYYY/MM/DD]
        + invoiceNote : 備考欄 (string, optional) - 備考
        + user_id : 12345678 (string, required) - ユーザID 
 
+ Response 200 (application/json)
 
    + Attributes
        + invoiceNo : 11440002 (number, required) - 請求書番号
        + clientName : Systena (string, required) - 顧客名称
        + invoiceStatus : 20 (string, required) - 請求状態(10: 新規作成, 20: 送付済, 30: 入金確認済, 90: 廃棄)
        + invoiceTitle : 例：Systenaガーデン利用料 (string, required) -　請求書タイトル
        + invoiceAmt : 53000 (number, required) -　請求金額
        + taxAmt : 4240 (number, required) -　税金額
        + invoiceSt : 2017/01/01 (string, required) - 請求開始日 [YYYY/MM/DD]
        + invoiceEd : 2017/02/01 (string, required) - 請求終了日 [YYYY/MM/DD]
        + invoiceNote : 備考欄 (string, optional) - 備考

+ Response 400 (application/json)

    + Attributes
        + message : DB requests failed. Please retry later. (string, required) - Errorメッセージ
        - errors (array, required)
            + (object) - エラー詳細
                + message : "" (string) - Stack Trace 等

+ Response 500 (application/json)

    + Attributes
        + message : Occar Server system errors. Please contact the system administrator. (string, required) - Errorメッセージ
        - errors (array, required)
            + (object) - エラー詳細
                + message : "" (string) - Stack Trace 等
