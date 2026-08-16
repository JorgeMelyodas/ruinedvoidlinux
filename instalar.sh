#!/bin/bash

echo "========================================="
echo "   SUNSHINE AMD OPTIMIZED EDITION       "
echo "   Mantenedor: Jorge Melyodas            "
echo "========================================="

echo "[*] Instalando Dependências Necessárias do Void Linux..."

sudo xbps-install -Sy \
nodejs \
pipewire-devel \
libcap-devel \
libcurl-devel \
miniupnpc-devel \
mesa-vaapi \
libva-utils \
libnuma-devel \
glslang

echo "[*] Instalando os Binários do Sunshine AMD..."

sudo cp bin/sunshine /usr/local/bin/sunshine

mkdir -p "$HOME/.config/sunshine"

cp config/sunshine.conf "$HOME/.config/sunshine/sunshine.conf"

echo "[*] Criando Atalho do Sunshine AMD no Menu de Aplicativos..."

sudo tee /usr/share/applications/sunshine-amd.desktop > /dev/null <<EOF
[Desktop Entry]
Name=Sunshine AMD Optimized Edition
Comment=Servidor de streaming de jogos para Moonlight
Exec=/usr/local/bin/sunshine
Icon=applications-games
Terminal=false
Type=Application
Categories=Game;Network;
StartupNotify=false
EOF

echo "[*] Aplicando Permissões Necessárias Para a GPU AMD..."

sudo setcap cap_sys_admin,cap_sys_nice+ep /usr/local/bin/sunshine

echo "[*] Adicionando Seu Usuário aos Grupos Video e Input..."

sudo usermod -aG video,input "$USER"

echo "[*] Atualizando Cache do Menu de Aplicativos..."

if command -v update-desktop-database >/dev/null 2>&1; then
    sudo update-desktop-database /usr/share/applications
fi

echo ""
echo "========================================="
echo "       INSTALAÇÃO CONCLUÍDA!             "
echo "========================================="
echo ""
echo "[+] Sunshine AMD Instalado em:"
echo "    /usr/local/bin/sunshine"
echo ""
echo "[+] Configuração Instalada em:"
echo "    $HOME/.config/sunshine/sunshine.conf"
echo ""
echo "[+] Atalho Criado no Menu:"
echo "    Sunshine AMD Optimized Edition"
echo ""
echo "[+] Seu Usuário Foi Adicionado aos Grupos:"
echo "    video input"
echo ""
echo "[!] Reinicie o Computador Para Aplicar as Permissões dos Grupos."
echo ""
echo "[+] Depois da Reinicialização, Você Poderá:"
echo "    • Abrir pelo menu de aplicativos"
echo "    • Executar 'sunshine' pelo terminal"
echo ""
echo "========================================="
echo "       RUINED VOID LINUX                 "
echo "========================================="
