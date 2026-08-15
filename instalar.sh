#!/bin/bash
echo "[*] Instalando Dependências Necessárias do Void Linux..."
sudo xbps-install -Sy nodejs pipewire-devel libcap-devel libcurl-devel miniupnpc-devel mesa-vaapi libva-utils libnuma-devel glslang

echo "[*] Instalando os binários do Sunshine AMD..."
sudo cp bin/sunshine /usr/local/bin/sunshine
mkdir -p ~/.config/sunshine
cp config/sunshine.conf ~/.config/sunshine/sunshine.conf

echo "[*] Injetando Permissões do Kernel para a PLACA AMD..."
sudo setcap cap_sys_admin,cap_sys_nice+ep /usr/local/bin/sunshine
sudo usermod -aG video,input $USER

echo "[+] Instalação concluída com sucesso! Reinicie o PC ou digite 'sunshine' para rodar."
