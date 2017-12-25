# **InvoiceDoc**

### 前提実施
    npm install

### 生成方法
    cd bin
	bash convert.sh
※APIを追加した場合、renameした場合にはshファイルを修正が必要

### API DocumetsをMarkDownより生成

####フォルダ構成
----------
- InvoiceDoc
    - src -- mdファイル置き場
        + regist.md -- 登録API
        + remove.md -- 削除API
        + search.md -- 検索API
        + list.md   -- 一覧検索API
    - bin -- コマンド置き場
        + convert.sh -- 生成用コマンド
    - output --
        + api.html -- htmlベースのAPI設計書
    + api.md -- MarkDownベースのAPI設計書
    + README.md
    + package-lock.json

----------

