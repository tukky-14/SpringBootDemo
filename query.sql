-- ーーーーーーーーーーーーーーーーーーーー
-- テーブル作成
-- ーーーーーーーーーーーーーーーーーーーー

-- ハンターテーブル作成
CREATE TABLE Hunter (
	id INT NOT NULL PRIMARY KEY,
	hunter_name VARCHAR(100),
	ability_type VARCHAR(20),
	ability_name VARCHAR(100),
	quote VARCHAR(200),
	version INT,
	created_at DATETIME,
	updated_at DATETIME
);

-- 系統テーブル作成
CREATE TABLE AbilityType (
	id INT NOT NULL PRIMARY KEY,
	ability_name VARCHAR(100)
);


-- ーーーーーーーーーーーーーーーーーーーー
-- データ作成
-- ーーーーーーーーーーーーーーーーーーーー
INSERT INTO AbilityType
	( id, ability_name )
VALUES
	( 1, "強化系"),
	( 2, "変化系"),
	( 3, "具現化系"),
	( 4, "操作系"),
	( 5, "放出系"),
	( 6, "特質系")

INSERT INTO Hunter
(
	id,
	hunter_name,
	ability_type,
	ability_name,
	quote,
	version,
	created_at,
	updated_at
)
VALUES
(
	1,
	"ゴン＝フリークス",
	"強化系",
	"ジャジャン拳",
	"もうこれで終わってもいい・・・だからありったけを",
	1,
	now(),
	null
),
(
	2,
	"キルア＝ゾルディック",
	"変化系",
	"電光石火",
	"オレなら平気だよ訓練してるから毒じゃ死なない",
	1,
	now(),
	null
),
(
	3,
	"クラピカ",
	"具現化系",
	"束縛する中指の鎖",
	"2度と旅団の名を語らぬことだ・・・さもないと私がお前を殺す",
	1,
	now(),
	null
),
(
	4,
	"レオリオ＝パラディナイト",
	"放出系",
	"不明",
	"相手が「もう帰ってくれ」って言ってからが本当の商談だぜ",
	1,
	now(),
	null
),

-- ーーーーーーーーーーーーーーーーーーーー
-- データ選択
-- ーーーーーーーーーーーーーーーーーーーー
SELECT * FROM Hunter
WHERE id = 1