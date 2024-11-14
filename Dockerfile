# 基本のイメージ
FROM node:18

# 作業ディレクトリの設定
WORKDIR /app

# 必要なファイルをコピー
COPY ./package*.json ./

# 依存関係をインストール
RUN npm install

# 残りのアプリケーションファイルをコピー
COPY . .

# ビルド
RUN npm run build

# エクスポートの代わりに出力がビルド時に行われる
# (次のコマンドは不要)

# ポートの公開
EXPOSE 3000

# 静的ファイルを提供
CMD ["npx", "serve@latest", "out"]
