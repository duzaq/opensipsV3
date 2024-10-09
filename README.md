# OpenSIPS Docker Container

Este repositório contém a configuração para criar um contêiner Docker que executa o OpenSIPS, uma plataforma de SIP (Session Initiation Protocol) altamente escalável e flexível. O projeto inclui a instalação do OpenSIPS, configuração do `rsyslog` para gerenciamento de logs e a criação de um script de inicialização personalizado.

## Recursos

- **Imagem Docker Base**: Utiliza a imagem oficial do OpenSIPS (`opensips/opensips:3.2`).
- **Instalação de Dependências**: Inclui a instalação de pacotes essenciais, como `rsyslog`, `ngrep`, `sngrep` e ferramentas de desenvolvimento.
- **Script de Inicialização**: Um script (`exec.sh`) que inicia o OpenSIPS e reinicia o `rsyslog` após a inicialização, garantindo que os logs sejam capturados corretamente.
- **Configuração de Log**: O `rsyslog` está configurado para registrar logs do OpenSIPS em um arquivo específico.
- **Arquivo de Configuração**: O arquivo de configuração do OpenSIPS (`opensips.cfg`) está localizado dentro do diretório do Docker. Reiniciando o contêiner, as alterações feitas neste arquivo serão carregadas.


