# webgpt_repl
## Deploy [ChatGPT-Web](https://github.com/Chanzhaoyu/chatgpt-web) on Replit.

Template：Node.js

First step：
```bash
git clone https://github.com/k0baya/webgpt_repl && mv -b webgpt_repl/* ./ && mv -b webgpt_repl/.[^.]* ./ && rm -rf *~ && rm -rf webgpt_repl
```
Second step：
```bash
chmod +x build.sh && bash build.sh
```
Finally，add variables：
|Secret key|value|
|-|-|
|OPENAI_API_KEY|Your API Key|
|OPENAI_ACCESS_TOKEN|Your Access Token|
|API_REVERSE_PROXY|[Find in here](https://github.com/transitive-bullshit/chatgpt-api#reverse-proxy)|
|AUTH_SECRET_KEY|Auth Key|

Then, click the button "Run".
## Deploy [BetterChatGPT](https://github.com/ztjhz/BetterChatGPT) on Replit.
Template：Node.js
```bash
bash <(curl -s https://raw.githubusercontent.com/k0baya/webgpt_repl/main/BetterChatGPT/install.sh)
```
Then, click the button "Run".

## Deploy [chatgpt-web](https://github.com/869413421/chatgpt-web) on Replit.
Template:Bash

First, add `pkgs.busybox` in *replit.nix*.

Sencond, edit the *main.sh*：
```bash
repo="869413421/chatgpt-web"

tag=$(curl -s "https://api.github.com/repos/$repo/releases/latest" | grep -o '"tag_name": ".*"' | sed 's/"tag_name": "//;s/"//')

download_url="https://github.com/$repo/releases/download/$tag/chatgpt-web-${tag}-linux-amd64.tar.gz"

rm -rf web

wget "$download_url" -O chatgpt-web.tar.gz

mkdir -p web

tar -zxvf "chatgpt-web.tar.gz" -C web --overwrite

rm -rf chatgpt-web.tar.gz

chmod +x web/chatgpt-web

if [ -f config.json ]; then
    cp -f config.json web/config.json
    cd web && ./chatgpt-web
else
    cp web/config.dev.json config.json
    echo "Please modify your configuration in config.json!"
    echo "请先在config.json文件中修改你的配置信息！"
fi
```
Then, click the Run and follow the hints.
## Deploy [Pandora]() on Replit.
Template: Python
```bash
bash <(curl -s https://raw.githubusercontent.com/k0baya/webgpt_repl/main/pandora/install.sh)
```
Then click Run and enjoy~
