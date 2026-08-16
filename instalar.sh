#!/bin/bash
echo "[*] Instalando Dependências Necessárias do Void Linux..."
sudo xbps-install -Sy nodejs pipewire-devel libcap-devel libcurl-devel miniupnpc-devel mesa-vaapi libva-utils libnuma-devel glslang

echo "[*] Instalando os binários e assets do Sunshine AMD..."
sudo cp bin/sunshine /usr/local/bin/sunshine
# Copia a pasta de assets para o local correto do sistema
sudo mkdir -p /usr/local/assets
sudo cp -r assets/* /usr/local/assets/

# Cria as configurações do usuário atual
mkdir -p ~/.config/sunshine
cp config/sunshine.conf ~/.config/sunshine/sunshine.conf
# Cria o arquivo de aplicativos base para evitar o erro de cópia do sistema
echo '{"apps": []}' > ~/.config/sunshine/apps.json

echo "[*] Injetando Permissões do Kernel para a PLACA AMD..."
sudo setcap cap_sys_admin,cap_sys_nice+ep /usr/local/bin/sunshine
sudo usermod -aG video,input $USER

echo "[+] Instalação concluída com sucesso! Reinicie o PC ou digite 'sunshine' para rodar."
