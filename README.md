# cpu-level-11-setup-script

# Deprecated

[本家プログラムに Locations.txt の配置、dolphin ディレクトリの検知作成が追加されました。](https://github.com/altf4/cpu-level-11/commit/afc025555e28aa0c66be0c7c9f2a5aa39a63c92e)
これによってこのリポジトリの大部分は不要になりました。

(Dolphin のコントローラーの設定は必要ですが、サンプルファイル (GCPadNew.ini) があるので、それを手動で上書きするとセットアップは完了です)

本家 README に従ってセットアップしてください。

---

*以下、跡地*


[cpu-level-11](https://github.com/altf4/cpu-level-11) の開発環境セットアップスクリプト

クリーンな Ubuntu に対して以下を実行する

- Dolphin のインストール
- cpu-level-11 の設定ファイルの配置
- Dolphin の設定修正
- 便利ショートカットの配置

※ ゲームディスク ROM は含まれません


## Dependencies

- [Ubuntu Desktop 15.04 (64bit/日本語 Remix)](https://www.ubuntulinux.jp/download/ja-remix)
- スマブラ DX v1.02 English (他の ROM での動作は確認していません)


## Usage

Ubuntu をインストール後、端末を開いて以下を実行

```sh
$ wget -O - https://raw.githubusercontent.com/Atokigedesu/cpu-level-11-setup-script/master/setup.sh | sh
```

~/cpu-level-11 にソースコードがインストールされます。

Launcher メニューの Dolphin のアイコンの一つ下のアイコンをクリックすると、cpu-level-11 のコンパイル (make) と実行 (./cpu) が行われます。

Dolphin でスマブラ DX を起動後、cpu-level-11 を実行し、キャラセレ画面に入ると 2P がカーソルをフォックスに移動するのを確認で、導入完了です。
