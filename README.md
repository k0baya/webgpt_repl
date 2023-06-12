# webgpt_repl
Deploy [ChatGPT-Web](https://github.com/Chanzhaoyu/chatgpt-web) on Replit.

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
