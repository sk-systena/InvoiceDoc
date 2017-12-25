## 請求書情報の取得 [/invoice/search]
 
### 請求書情報取得 [POST]
 
#### 処理概要
 
* 検索条件に該当する請求書情報を返す。
* 請求書番号で該当請求書情報を検索する。
* 返却は該当するすべての請求書情報をjson形式にて返却。

+ Request (application/json)

    + Headers

            Accept : application/json

    + Attributes
        + invoiceNo : 11440002 (number, required) - 請求書番号

+ Response 200 (application/json)
 
    + Attributes
        + status : 200 (number, required) - Status(200:成功, 500:Serverエラー, 999:システムエラー)
        + invoiceNo : 11440002 (number, required) - 請求書番号
        + clientNo : 300 (number, required) - 顧客管理番号
        + clientName : Systena (string, required) - 顧客名称
        + invoiceStatus : 20 (string, required) - 請求状態(10: 新規作成, 20: 送付済, 30: 入金確認済, 90: 廃棄)
        + invoiceTitle : 例：Systenaガーデン利用料 (string, required) -　請求書タイトル
        + invoiceAmt : 53000 (number, required) -　請求金額
        + taxAmt : 4240 (number, required) -　税金額
        + invoiceSt : 2017/01/01 (string, required) - 請求開始日 [YYYY/MM/DD]
        + invoiceEd : 2017/02/01 (string, required) - 請求終了日 [YYYY/MM/DD]
        + invoiceNote : 備考欄 (string, optional) - 備考
