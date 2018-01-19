FORMAT: 1A
 
# Group InvoiceAPI
 
# 請求書の登録 [POST /invoices/1]
#### 処理概要
 
* 請求書を新しく登録する。
* 登録に成功した場合、ステータス200と請求書番号を返す。
 
+ Request (application/json)
 
    + Headers
 
            Accept : application/json
 
    + Attributes
        + order_no : 50000 (number, required) - 注文管理番号
        + client_no : 1234567 (number, required) - 顧客管理番号
        + clientName : Systena (string, required) - 顧客名称
        + invoiceStatus : 20 (string, required) - 請求状態(10: 新規作成, 20: 送付済, 30: 入金確認済, 90: 廃棄)
        + invoiceTitle : 例：Systena特製 漢字ドリル代金 (string, required) -　請求書タイトル
        + item_no : 490000000 (string, optional) - 商品ID（JAN_CDを想定）
        + item_name : Systena特製 漢字ドリル (string, optional) - 商品名
        + item_type : 10 (number, optional) - 請求状態(10: 書籍, 20: PC, 90: その他)
        + item_price : 2300 (number, required) - 税抜き商品単価
        + item_count : 5 (number, required) - 購入個数
        + invoiceSt : 2017/01/01 (string, required) - 請求開始日 [YYYY/MM/DD]
        + invoiceEd : 2017/02/01 (string, required) - 請求終了日 [YYYY/MM/DD]
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
        + error (object, required) - エラー詳細
            + message : "" (string) - Stack Trace 等

+ Response 500 (application/json)

    + Attributes
        + message : Occar Server system errors. Please contact the system administrator. (string, required) - Errorメッセージ
        + error (object, required) - エラー詳細
            + message : "" (string) - Stack Trace 等

