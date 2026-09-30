# 論文予稿テンプレート

## 環境構築

```bash
sudo apt update
sudo apt install texlive-full make
```

vscodeで書く場合は，以下の拡張機能を入れてください．

```bash
# LaTeX Language Server
code --install-extension efoerster.texlab

# PDF Viewer
code --install-extension mathematic.vscode-pdf
```

## ビルド

vscodeを使っている場合は，保存するだけでbuildされます．
`Ctrl+S`または`Cmd+S`を押してください．

コマンドでやりたい方は，以下のコマンドを実行してください

```bash
# build
make

# 変更があったら自動で再ビルド
make watch

# 生成ファイル削除
make clean
```
