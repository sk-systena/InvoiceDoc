# 請求書リスト情報の取得 [GET /invoices{?invoiceNo,clientNo,clientName,invoiceStatus,invoiceSt,invoiceEd}]
#### 処理概要
 
* 検索条件に該当する請求書番号リスト情報を返す。
* 必須検索項目は無し。
* 返却は該当するすべての請求書情報をjson形式にて返却。

+ Parameters
    + invoiceNo : 11440002 (number, optional) - 請求書番号
    + clientNo : 300 (number, optional) - 顧客管理番号
    + clientName : Systena (string,optional) - 顧客名称（法人名）
    + invoiceStatus : 20 (string, optional) - 請求状態(10: 新規作成, 20: 送付済, 30: 入金確認済, 90: 廃棄)
    + invoiceSt : 2017/01/01 (string, optional) - 請求開始日 [YYYY/MM/DD]
    + invoiceEd : 2017/02/01 (string, optional) - 請求終了日 [YYYY/MM/DD]

+ Response 200 (application/json)
 
    + Attributes
        + invoices (array, required)
            + (object)
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
