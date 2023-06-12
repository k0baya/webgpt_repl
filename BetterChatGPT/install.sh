git clone https://github.com/ztjhz/BetterChatGPT.git && mv -b BetterChatGPT/* ./ && mv -b BetterChatGPT/.[^.]* ./ && rm -rf *~ && rm -rf BetterChatGPT

echo "import { exec } from 'child_process';

const devProcess = exec('npm run dev');

devProcess.stdout.on('data', (data) => {
  console.log(\`stdout: \${data}\`);
});

devProcess.stderr.on('data', (data) => {
  console.error(\`stderr: \${data}\`);
});

devProcess.on('close', (code) => {
  console.log(\`child process exited with code \${code}\`);
});" > index.js

npm install && npm audit fix --force && npm install 

sed -i '/^});$/i \
  server: {\
    port: 80,\
    host: "0.0.0.0"\
  },' vite.config.ts
