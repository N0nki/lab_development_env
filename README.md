# lab_development_env


## Summary

Vagrantを使用して仮想マシン上に開発環境を自動でセットアップする．  
（Vagrantのインストール方法は説明しません．）

**各ファイルについて**

* **Vagrantfile**  
仮想マシンの設定を記述する．  

* **provision_root.sh**  
root権限が必要なコマンドを記述する．

* **provision_root_simple.sh**  
provision_root.shの簡易版

* **provision_node.sh**  
root権限を必要としないコマンドを記述する．

* **provision_node_simple.sh**
provision_node.shの簡易版


## Environment

### OS

Ubuntuの最新長期サポートバージョン18.04LSTを使用する．

### Python

Python 3.6.7

パッケージ

* numpy
* pandas
* matplotlib
* networkx
* graphillion
* ipython
* jupyter


## Setup

自動設定に必要なプラグインや初期設定

### Plugin

プロキシの自動設定と，guest additionの導入に必要なVagrantのプラグインをインストールする．

```bash
$ vagrant plugin install vagrant-proxyconf vagrant-vbguest
```

### Environment Variable

学内プロキシをVagrantで自動設定するために，環境変数にプロキシサーバのアドレスなどを指定する．  
以下の表に示す名前の環境変数に学内プロキシサーバのアドレスなどを指定してください．

|環境変数|意味|備考|
|:---:|:----:|:---:|
|AKITA_UNIV_HTTP_PROXY|httpのプロキシサーバアドレス||
|AKITA_UNIV_HTTPS_PROXY|httpsのプロキシサーバアドレス||
|AKITA_UNIV_NO_PROXY|プロキシを適用しないホスト名（カンマ区切り）|例: localhost,127.0.0.1|

3つすべての環境変数が定義されていないとプロキシの自動設定を行わないようになっています．  
一部の値のみ不要な場合には空文字で定義してください．


## Usage

仮想マシンを操作する基本的なVagrantのコマンド

### Launch

仮想マシンを起動する．初回起動のみ仮想マシンのデータのダウンロードとセットアップスクリプトに書かれたコマンド群によるセットアップが行われるので時間が掛かる．

```bash
$ vagrant up
```

### Restart

仮想マシンを再起動する．

```bash
$ vagrant reload
```

### Shutdown

仮想マシンを停止する．

```bash
$ vagrant halt
```

### Delete

仮想マシンを削除する．

```bash
$ vagrant destroy
```

### SSH

sshでホストから仮想マシンにアクセスする．

```bash
$ vagrant ssh
```


## Misc

### SCP

### Localize
