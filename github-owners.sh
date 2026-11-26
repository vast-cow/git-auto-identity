#!/usr/bin/env bash

# post-checkout から source されるマッピング定義。
# 引数: 小文字に正規化した GitHub owner
# 戻り値: 0 = マッピングあり、1 = マッピングなし
# username / name / email は呼び出し元の変数に設定する。

# GitHub owner -> コミットユーザー情報
# username を指定: GitHub API モード
# name と email を指定: 直接指定モード
map_github_owner() {
    case "$1" in
        personal-user|side-project)
            username="personal-user"
            ;;
        company-org)
            username="work-user"
            ;;
        company-internal)
            name="Company Developer"
            email="developer@example.com"
            ;;
        client-org)
            name="Taro Yamada"
            email="taro@example.com"
            ;;
        *)
            return 1
            ;;
    esac
}
