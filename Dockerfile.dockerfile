# ベースイメージ
FROM node:18

# 作業ディレクトリの作成
WORKDIR /app

# 依存関係のインストール
COPY package.json yarn.lock ./
RUN yarn install

# アプリケーションファイルのコピー
COPY . .

# Vue.jsプロジェクトのビルド
RUN yarn build

# サーバーを起動
CMD ["yarn", "serve"]
