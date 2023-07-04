echo "import os" > main.py
echo "status = os.system('sh start.sh')" >> main.py
cat << EOF > start.sh
TOKEN=\${TOKEN:-'pk-this-is-a-real-free-pool-token-for-everyone'}
echo "\${TOKEN}" > tokens.txt
pip install pandora-chatgpt pandora-chatgpt[api] pandora-chatgpt[cloud] --upgrade
pandora -s 0.0.0.0:80 -t tokens.txt -a
EOF
