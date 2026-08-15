#!/bin/bash
echo "[*] Instalando dependências críticas do Void Linux..."
sudo xbps-install -Sy nodejs libcap-devel pipewire-devel opus-devel libcurl-devel miniupnpc-devel mesa-vaapi libva-utils

echo "[*] Instalando os binários do Sunshine AMD..."
sudo cp bin/sunshine /usr/local/bin/sunshine
mkdir -p ~/.config/sunshine
cp config/sunshine.conf ~/.config/sunshine/sunshine.conf

echo "[*] Injetando permissões do Kernel para a PLACA AMD..."
sudo setcap cap_sys_admin,cap_sys_nice+ep /usr/local/bin/sunshine
sudo usermod -aG video,input $USER

echo "[+] Instalação concluída com sucesso! Reinicie o PC e digite 'sunshine' para rodar."
