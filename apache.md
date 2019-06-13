# apache2(Webサーバ)の設定

- インストール
	- $ sudo apt install apache2
- 状態確認
	- $ sudo systemctl status apache2.service
- 再起動
	- $ sudo systemctl restart apache2
- CGIモジュールの組み込み
	- $ sudo a2enmod cgi
- バーチャルホストの切り替え
	- デフォルトの無効化
		- $ sudo a2dissite 000-default.conf
	- ss.confの有効化
		- $ sudo a2ensite ss.conf
	- 設定の再読込
		- $ sudo systemctl reload apache2.service