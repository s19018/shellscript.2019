- sed
    - 行単位の処理
    - sed 2,5d                                           データの２から５行目を削除
    - sed '3,$d'                                         データの３から最終行を削除
    - sed /^B/                                           行頭がBの行を削除
    - sed -n 1p                                          1行目だけ表示する
    - sed 's/Beer/Whiskey/'                              BeerをWhiskeyに置き換え、ただし１行に１回
    - sed 's/Beer/Whiskey/g'                             BeerをWhiskeyに置き換え、すべて
    - sed 's/Be*r/Whiskey/g'                             Bとrの間に１文字以上のeがある文字列をWhiskeyに置き換え
    - sed 's/!//g'                                       !を削除
    - sed -n 's/!//gp'                                   !を削除した行のみを表示
- awk
    - awk 'BEGIN { 最初の行を読み込む前の処理 } { メイン処理 } END { 最後の行を読み込んだ後の処理 }'
    - 列(フィールド)単位の処理

    - awk '{print $2,$3}'                               半角スペース( )区切りのデータの第2、第３フィールドを抽出

    - awk -F: '{print $7}'                               コロン(:)区切りのデータの第７フィールドを抽出

    - awk -F: '{print $NF}'                              NF => データのフィールド数
                                                         コロン(:)区切りのデータの最後のフィールドを抽出

    - awk '$NF == "cpan" {print $NF}'                     最後のフィールドがcpanのデータの最後のフィールドを抽出

    - awk '$NF ~ "^cp" {print $NF}'                       最後のフィールドがcpから始まるデータの最後のフィールドを抽出

    - awk '$NF ~ "cp$" {print $NF}'                       最後のフィールドがcpで終わるデータの最後のフィールドを抽出

    - awk -F, '{print $3} END{print NR}'                  第３フィールドと処理したデータ数を表示

    - awk -F, '{sum += $3} END{print sum}'                第３フィールドの合計を表示

    - awk -F, '{sum += $3} END{print sum/NR}'             第３フィールドの平均を表示
        -
- sort
    - 並べ替え
    -k                                                    並べ替えを行うキーのフィールドを指定する
    -n                                                    数字の昇順/降順での並べ替え
    -r                                                    降順(大きい順)での並べ替え

- uniq                                                    重複の排除
    -c                                                    重複した個数

- cat /etc/passwd | awk -F: '{print $NF}' | sort | uniq -c    passwdファイルからそれぞれシェルの利用数を表示

- tar
    - アーカイブと圧縮
    - アーカイブ =>                                        複数のファイルとかディレクトリを一つのファイルにすること
    - c                                                    アーカイブ
    - x                                                    アーカイブの展開
    - f                                                    対象ファイルの指定
    - z                                                    アーカイブファイルをgzipで圧縮/展開

    - vカレントディレクトリを/vagrantに移動
        - 表示モード
    - cd /vagrant                              カレントディレクトリを/vagrantに移動
    - tar cvzf home.0629.tar.gz ~/.            ホームディレクトリ以下をhome.0629.tar.gzでアーカイブ/圧縮(gzip)
    - Linuxカーネル
    - シェル
        - echo $SHELL
        - bash --version



- シェルとは
- プロンプト
    - <a href="https://qiita.com/zaburo/items/9194cd9eb841dea897a0">Bashプロンプトの変更</a>
    - $ => 一般ユーザ
    - ＃ => 管理者ユーザ
        - sudo -s => $ -> ＃
        - exit => ＃ -> $
- パス
    - echo $PATH
- cd、ls
    - ディレクトリ構造
        - ツリー構造
            - /home/vagrant => vagrantユーザのホームディクトリ
- mkdir ディレクトリ名
    - ディレクトリ名のディレクトリを作成
- cd => カレントディレクトリの移動
    - cd ディレクトリ名
        - ディレクトリ名のディレクトリに移動
    - cd ..
        - 一つ上位のディレクトリに移動
    - cd ../..
        - ２つ上位のディレクトリに移動
    - cd /home/vagrant/dir1/
        - 直接dir1ディレクトリに移動
- ls
    - 指定したディレクトリ、カレントディレクトリのファイル/ディレクトリの一覧
- pwd
    - 現在のいるディレクリ(カレントディレクトリ)の確認
- touch ファイル名
    - ファイル名の空のファイルを作成
- cat ファイル名
    - ファイル名の中身を確認
- cp ファイル名1 ファイル名2
    - ファイル名1をファイル名にコピーする
- mv ファイル名 ディレクトリ名
    - ファイル名をディレクトリ名に移動
- treeコマンドのインストール
    - sudo apt install tree
- tree ディレクトリ名
    - ディレクトリ名以下のディレクトリ構造
- find . -type f
    - カレントディレクト以下のファイル一覧
- find . -type d
    - カレントディレクト以下のディレクトリ一覧
- wc ファイル名
    - ファイル名の内容の行数、単語数、文字数
- cat file1  | wc
    - catでfile1の中身を表示して、それをwcに渡してそれの行数、単語数、文字数を求める
- find . -type f | wc -l
    - カレントディレクトリ以下のファイル数
- find . -type d | wc -l
    - カレントディレクトリ以下のディレクトリ数
- find /home/vagrant -type f | wc -l
    - ホームディレクトリ以下のファイル数
- find /home/vagrant -type d | wc -l
    - ホームディレクトリ以下のディレクトリ数
- sudo find /etc -type f | wc -l
    - /etcディレクトリ以下のファイル数
- sudo find /etc -type d | wc -l
    - /
- 正規表現
    - ^ => 行頭
    - $ => 行末
    - * => 直前の文字が0文字以上
        - sed -n '/Bee*r/p'
            - Bとrの間にeが１文字以上
    - + => 直前の文字が1文字以上
        - sed -n '/Bee+r/p'
            - Bとrの間にeが２文字以上
    - () => グループ化
        - グループ化の体調は\1の形で置換文字側で参照




- sed
    - 行単位の処理
    - sed 2,5d                                           データの２から５行目を削除
    - sed '3,$d'                                         データの３から最終行を削除
    - sed /^B/                                           行頭がBの行を削除
    - sed -n 1p                                          1行目だけ表示する
    - sed 's/Beer/Whiskey/'                              BeerをWhiskeyに置き換え、ただし１行に１回
    - sed 's/Beer/Whiskey/g'                             BeerをWhiskeyに置き換え、すべて
    - sed 's/Be*r/Whiskey/g'                             Bとrの間に１文字以上のeがある文字列をWhiskeyに置き換え
    - sed 's/!//g'                                       !を削除
    - sed -n 's/!//gp'                                   !を削除した行のみを表示
- awk
    - awk 'BEGIN { 最初の行を読み込む前の処理 } { メイン処理 } END { 最後の行を読み込んだ後の処理 }'
    - 列(フィールド)単位の処理

    - awk '{print $2,$3}'                               半角スペース( )区切りのデータの第2、第３フィールドを抽出

    - awk -F: '{print $7}'                               コロン(:)区切りのデータの第７フィールドを抽出

    - awk -F: '{print $NF}'                              NF => データのフィールド数
                                                         コロン(:)区切りのデータの最後のフィールドを抽出

    - awk '$NF == "cpan" {print $NF}'                     最後のフィールドがcpanのデータの最後のフィールドを抽出

    - awk '$NF ~ "^cp" {print $NF}'                       最後のフィールドがcpから始まるデータの最後のフィールドを抽出

    - awk '$NF ~ "cp$" {print $NF}'                       最後のフィールドがcpで終わるデータの最後のフィールドを抽出

    - awk -F, '{print $3} END{print NR}'                  第３フィールドと処理したデータ数を表示

    - awk -F, '{sum += $3} END{print sum}'                第３フィールドの合計を表示

    - awk -F, '{sum += $3} END{print sum/NR}'             第３フィールドの平均を表示
        -
- sort
    - 並べ替え
    -k                                                    並べ替えを行うキーのフィールドを指定する
    -n                                                    数字の昇順/降順での並べ替え
    -r                                                    降順(大きい順)での並べ替え

- uniq                                                    重複の排除
    -c                                                    重複した個数

- cat /etc/passwd | awk -F: '{print $NF}' | sort | uniq -c    passwdファイルからそれぞれシェルの利用数を表示

- tar
    - アーカイブと圧縮
    - アーカイブ =>                                        複数のファイルとかディレクトリを一つのファイルにすること
    - c                                                    アーカイブ
    - x                                                    アーカイブの展開
    - f                                                    対象ファイルの指定
    - z                                                    アーカイブファイルをgzipで圧縮/展開

    - vカレントディレクトリを/vagrantに移動
        - 表示モード
    - cd /vagrant                              カレントディレクトリを/vagrantに移動
    - tar cvzf home.0629.tar.gz ~/.            ホームディレクトリ以下をhome.0629.tar.gzでアーカイブ/圧縮(gzip)
