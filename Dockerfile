FROM ubuntu:latest

RUN apt-get update
RUN apt-get -y install curl
RUN apt-get -y install software-properties-common
RUN apt-get update

# リポジトリの追加
RUN add-apt-repository ppa:fish-shell/release-3
RUN apt-get -y install fish

# fishermanのインストール
RUN curl -Lo ~/.config/fish/functions/fisher.fish --create-dirs --create-dirs https://git.io/fisher

# powerlineフォントのインストール
RUN apt-get -y install fonts-powerline
