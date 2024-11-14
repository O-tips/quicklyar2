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

# 出力フォルダを確認
RUN ls -l docs  

# ポートの公開
EXPOSE 3000

# 静的ファイルを提供
CMD ["npx", "serve@latest", "docs"]
