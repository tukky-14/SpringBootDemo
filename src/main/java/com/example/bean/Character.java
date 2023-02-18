package com.example.bean;

import lombok.Data;
import lombok.AllArgsConstructor;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Character {

    // キャラクター番号
    private Integer id;

    // キャラクター名
    private String name;

    // 系統
    private String ability_type;

    // 念能力
    private String ability_name;

    // 名セリフ
    private String quote;

    // バージョン番号
    private Integer version;

    // 登録日時
    private String created_at;

    // 更新日時
    private String updated_at;

}
