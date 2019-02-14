# lab_development_env

## Summary

Vagrantを使用して仮想マシン上に開発環境を自動でセットアップする．  
（Vagrantのインストール方法は説明しません．）

* **Vagrantfile**

* **provision_root.sh**  
root権限が必要なコマンドを記述する．

* **provision_node.sh**  
root権限を必要としないコマンドを記述する．


### Environment

#### OS

Ubuntuの最新長期サポートバージョン18.04LSTを使用する．

#### Network Proxy

Vagrant

#### Python


## Setup


## Usage

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

## TODO

* [ ] プロキシの設定を書く（家でも試したいので別ブランチに作ったほうがいいかも）

* [ ] 導入するプラグインについて書く

    requirements.txtを作る（dotfilesのを引っ張ってくるのをやめる）
