# 請求書の削除 [DELETE /invoices/:{invoiceNo}]
## 処理概要
 
* 請求書データの再削除フラグを立てる。
* 更新完了した場合、ステータス200を返却
 
+ Request (application/json)

    + Headers

            Accept : application/json

    + Attributes
        + invoiceNo : 11440002 (number, required) - 請求書番号

+ Response 204 (application/json)

    + Attributes
        + message : 請求書ステータス更新（削除） (string, required)

+ Response 400 (application/json)

    + Attributes
        + status : 200 (number, required) - Status(200:成功, 500:Serverエラー, 999:システムエラー)


+ Response 500 (application/json)

    + Attributes
        + status : 200 (number, required) - Status(200:成功, 500:Serverエラー, 999:システムエラー)
