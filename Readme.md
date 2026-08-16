Sunshine AMD 

Uma compilação personalizada do Sunshine para Void Linux, desenvolvida como parte do Ruined Void Linux, com foco em sistemas equipados com GPUs AMD.

O objetivo deste projeto é disponibilizar uma versão do Sunshine preparada para ambientes AMD, mantendo uma configuração simples e adequada para transmissão de jogos através do Moonlight.

Sobre 

O Sunshine é um servidor de streaming de jogos que permite transmitir a imagem e o áudio do computador para dispositivos compatíveis com Moonlight.

Esta versão foi compilada a partir do Sunshine 0.22.1, utilizando um template personalizado para o sistema de pacotes do Void Linux (xbps-src).

Principais características Baseado no Sunshine 0.22.1 Pacote nativo para Void Linux Compilado com CUDA desativado Foco em sistemas com GPUs AMD Compatível com clientes Moonlight Construído utilizando CMake Integração com PipeWire Suporte às bibliotecas necessárias para captura, codificação e streaming Distribuição através do sistema de pacotes XBPS AMD 

O projeto foi criado pensando principalmente em computadores equipados com GPUs AMD, evitando a dependência do ecossistema NVIDIA/CUDA.

A configuração utilizada no build desativa explicitamente o CUDA:

-DSUNSHINE_ENABLE_CUDA=OFF 

Isso torna o pacote mais adequado para máquinas AMD onde CUDA não está disponível ou não é necessário.

Nota: desativar CUDA não significa que o projeto tenha recebido um encoder AMD proprietário ou alterações profundas no código-fonte do Sunshine. Esta versão é uma compilação/configuração direcionada a sistemas AMD.

Dependências 

O pacote utiliza bibliotecas do ecossistema Linux relacionadas a:

X11 XCB VA-API VDPAU PipeWire PulseAudio libevdev libva libvpx Opus libcurl MiniUPnPc GLslang NUMA 

As dependências são declaradas no template XBPS utilizado para compilar o pacote.

Compilação 

O pacote pode ser compilado utilizando o sistema xbps-src do Void Linux.

Depois de configurar o repositório void-packages, o processo básico é:

./xbps-src pkg sunshine-amd 

Após uma compilação bem-sucedida, o pacote XBPS será disponibilizado no diretório de pacotes gerados pelo xbps-src.

Instalação 

Depois de gerar o pacote, ele pode ser instalado utilizando o XBPS:

sudo xbps-install --repository hostdir/binpkgs sunshine-amd 

Dependendo da configuração do seu ambiente Void Linux, o caminho do repositório local pode variar.

Projeto 

Este pacote faz parte do projeto Ruined Void Linux, com o objetivo de experimentar, personalizar e disponibilizar soluções para usuários do Void Linux.

Desenvolvedor/Mantenedor: Jorge Melyodas
Projeto: Ruined Void Linux
Base: Void Linux
Sunshine: 0.22.1
Licença: GPL-3.0-or-later

Aviso 

Este projeto é uma compilação personalizada e não representa oficialmente o projeto Sunshine ou a equipe do Void Linux.

Para problemas relacionados especificamente ao Sunshine original, consulte o projeto oficial da LizardByte.

Contribuições 

Sugestões, correções e melhorias são bem-vindas.

Se você encontrar um problema durante a compilação ou utilização do pacote, abra uma issue informando:

versão do Void Linux; arquitetura utilizada; GPU; versão do driver Mesa; versão do kernel; mensagem completa do erro; logs relevantes. 

Ruined Void Linux — Ô Void Linux do Rei Destruido!
