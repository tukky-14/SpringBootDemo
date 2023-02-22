package com.example.demo.controllers;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.bean.AbilityType;
import com.example.bean.Hunter;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class HunterController {

    @RequestMapping("/")
    public String list(Model model) {
        // 系統
        List<AbilityType> abilityTypes = new ArrayList<>();
        abilityTypes.add(new AbilityType("1", "強化系"));
        abilityTypes.add(new AbilityType("2", "変化系"));
        abilityTypes.add(new AbilityType("3", "具現化系"));
        abilityTypes.add(new AbilityType("4", "操作系"));
        abilityTypes.add(new AbilityType("5", "放出系"));
        abilityTypes.add(new AbilityType("6", "特質系"));

        // キャラクター
        List<Hunter> hunters = new ArrayList<>();
        hunters.add(new Hunter(1, "ゴン＝フリークス", "強化系", "ジャジャン拳", "もうこれで終わってもいい・・・だからありったけを", 1, "", ""));
        hunters.add(new Hunter(2, "キルア＝ゾルディック", "変化系", "電光石火", "オレなら平気だよ訓練してるから毒じゃ死なない", 1, "", ""));
        hunters.add(new Hunter(3, "クラピカ", "具現化系", "束縛する中指の鎖", "2度と旅団の名を語らぬことだ・・・さもないと私がお前を殺す", 1, "", ""));
        hunters.add(new Hunter(4, "レオリオ＝パラディナイト", "放出系", "不明", "相手が「もう帰ってくれ」って言ってからが本当の商談だぜ", 1, "", ""));

        model.addAttribute("abilityTypes", abilityTypes);
        model.addAttribute("hunters", hunters);

        log.info("Hunters: {}", hunters);

        return "Hunter_list";

    }

}
