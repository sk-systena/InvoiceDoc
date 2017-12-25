FORMAT: 1A
 
# Group InvoiceAPI
 
## 請求書の登録 [/invoice/regist]
 
### 請求書登録 [POST]
 
#### 処理概要
 
* 請求書を新しく登録する。
* 登録に成功した場合、ステータス200と請求書番号を返す。
 
+ Request (application/json)
 
    + Headers
 
            Accept : application/json
 
    + Attributes
        + clientName : Systena (string, required) - 顧客名称
        + invoiceStatus : 20 (string, required) - 請求状態(10: 新規作成, 20: 送付済, 30: 入金確認済, 90: 廃棄)
        + invoiceTitle : 例：Systenaガーデン利用料 (string, required) -　請求書タイトル
        + invoiceAmt : 53000 (number, required) -　請求金額
        + taxAmt : 4240 (number, required) -　税金額
        + invoiceSt : 2017/01/01 (string, required) - 請求開始日 [YYYY/MM/DD]
        + invoiceEd : 2017/02/01 (string, required) - 請求終了日 [YYYY/MM/DD]
        + invoiceNote : 備考欄 (string, optional) - 備考

 
+ Response 200 (application/json)
 
    + Attributes
        + status : 200 (number, required) - Status(200:成功, 500:Serverエラー, 999:システムエラー)
        + invoiceNo : 11440002 (number, required) - 請求書番号
