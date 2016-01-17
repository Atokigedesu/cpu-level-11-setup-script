#!/bin/sh

set -eu


###
# Dolphin のインストール
###
# Dolphin をインストール
sudo add-apt-repository ppa:dolphin-emu/ppa
sudo apt-get update
sudo apt-get install -y git dolphin-emu-master


###
# cpu-level-11 のインストール
###
# ダウンロード
git clone https://github.com/altf4/cpu-level-11.git ~/cpu-level-11
cd ~/cpu-level-11
# コンパイル
make
# 設定ファイルの作成
mkdir -p ~/.dolphin-emu/MemoryWatcher ~/.dolphin-emu/Pipes
cp ./Locations.txt ~/.dolphin-emu/MemoryWatcher/
mkfifo ~/.dolphin-emu/Pipes/cpu-level-11
# コントローラーの設定
wget -O ~/.dolphin-emu/Config/GCPadNew.ini https://raw.githubusercontent.com/Atokigedesu/cpu-level-11-setup-script/master/GCPadNew.ini
sed -i -e 's/^SIDevice1 = 0$/SIDevice1 = 6/' ~/.dolphin-emu/Config/Dolphin.ini

###
# 便利ショートカットの作成
###
cd ~
# cpu11 の登録
cat << EOS > ~/.local/share/applications/cpu11.desktop
[Desktop Entry]
Version=1.0
Name=cpu-level-11 の実行
Comment=cpu-level-11 をコンパイル後、実行します
Path=${PWD}
Icon=utilities-terminal
Type=Application
Categories=Utility;Applications;
Terminal=true
Exec=sh -c "cd ${PWD} && make && ./cpu"
EOS
# Launcher のアイコンを整理
gsettings set com.canonical.Unity.Launcher favorites "['application://gnome-terminal.desktop', 'application://dolphin-emu.desktop', 'application://${PWD}/.local/share/applications/cpu11.desktop', 'unity://running-apps', 'unity://expo-icon', 'unity://devices']"
