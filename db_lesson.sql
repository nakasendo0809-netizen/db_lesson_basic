CREATE TABLE departments (department_id INT UNSIGNED PRIMARY KEY NOT NULL AUTO_INCREMENT,
name VARCHAR(20) NOT NULL,
created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP); -- Q1.部署テーブルを新規作成

ALTER TABLE people ADD department_id INT UNSIGNED AFTER email; -- Q2.peopleテーブルに部署IDカラムを追加

INSERT INTO departments (name) VALUE ('営業'),('開発'),('経理'),('人事'),('情報システム');
INSERT INTO people (name,department_id,age,gender) VALUE ('フグ田サザエ',1,24,2),('フグ田マスオ',1,28,1),('磯野波平',1,54,1),('磯野フネ',2,50,2),
('磯野カツオ',2,11,1),('磯野ワカメ',2,9,2),('フグ田タラオ',2,3,1),('中島弘',3,11,1),('花沢花子',4,11,2),('穴子先生',5,30,1);
INSERT INTO reports (person_id,content) VALUE (7,'朝会で課題を整理し、優先度を付けて対応しました。'),(8,'依頼内容を精査し、対応手順をまとめて共有しました。'),(9,'システムの動作確認を行い、結果を記録しました。'),
(10,'仕様の不明点を洗い出し、関係者へ確認依頼しました。'),(11,'テストケースを作成し、検証を進めました。'),(12,'作業手順の見直しを行い、改善点を反映しました。'),(13,'不具合の原因を調査し、暫定対応を実施しました。'),
(14,'進捗状況を更新し、次工程の段取りを整えました。'),(15,'ドキュメントを更新し、変更点を分かりやすく整理しました。'),(16,'期限に向けて残タスクを棚卸しし、計画を調整しました。'); -- Q3.department,people,reportsテーブルにレコードを挿入

UPDATE people SET department_id=1 WHERE person_id=1;
UPDATE people SET department_id=1 WHERE person_id=2;
UPDATE people SET department_id=2 WHERE person_id=3;
UPDATE people SET department_id=3 WHERE person_id=4;
UPDATE people SET department_id=4 WHERE person_id=5;
UPDATE people SET department_id=5 WHERE person_id=6; -- Q4.peopleテーブルの空欄department_idにレコードを挿入

SELECT name,age FROM people WHERE gender=1 ORDER BY age DESC; -- Q5.年齢の降順で男性の名前と年齢を取得
