# Koerec - 高速音声コーパス作成ツール

合成音声制作のための音声コーパス作成を効率化するWebアプリケーションです。大量の文章を読み上げて録音し、文章と音声ファイルを対応付けたデータセットを簡単に作成できます。

## 🚀 主要機能

- **台本管理**: 事前定義台本の選択、カスタム台本のアップロード・編集
- **効率的な録音**: ワンクリック録音、リアルタイム波形表示
- **キーボードショートカット**: Space（録音）、Enter（次へ）、P（再生）
- **進捗保存**: ブラウザを閉じても進捗が保持される
- **データエクスポート**: ZIPファイル、TXTファイル形式での出力

## 📋 使用しているデータ

- **ITAコーパス**: [Unlicense](https://github.com/mmorise/ita-corpus) - 感情表現・朗読用文章
- **ROHAN4600コーパス**: [CC0-1.0](https://github.com/mmorise/rohan4600) - モーラバランス型日本語コーパス
- **日常会話セリフ集**: オリジナル - 日常会話用セリフ

## 🛠️ 技術仕様

- **フロントエンド**: HTML5, CSS3 (Tailwind), JavaScript (ES6+)
- **Web APIs**: MediaRecorder, Web Audio, IndexedDB, File API
- **対応ブラウザ**: Chrome 60+, Firefox 55+, Safari 11+, Edge 79+
- **データ保存**: ローカル保存のみ（プライバシー保護）

## 🚀 使用方法

1. ブラウザで `index.html` を開く
2. 台本を選択（複数選択可能）
3. 「録音開始」ボタンをクリック
4. 表示された文章を読み上げ、録音
5. 全文章録音完了後、データをダウンロード

## 📁 ファイル構成

```
koerec/
├── index.html              # メインアプリケーション
├── scripts/                # 台本ファイル
│   ├── manifest.json       # 台本リスト設定
│   ├── ita_corpus_*.txt   # ITAコーパス
│   ├── ROHAN4600_*.txt    # ROHAN4600コーパス
│   └── 日常会話セリフ集.txt # オリジナル台本
├── config/
│   └── export_formats.json # エクスポート形式設定
├── assets/                 # 画像リソース
├── LICENSE                 # MITライセンス
└── README.md              # このファイル
```

## 📄 ライセンス

本ソフトウェアは [MIT License](LICENSE) の下で公開されています。

## 📞 サポート

問題が発生した場合は、[Issues](https://github.com/MarkN2000/koerec/issues) で報告してください。