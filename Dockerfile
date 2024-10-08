# Imagem base do OpenSIPS
FROM opensips/opensips:3.2

# Instala rsyslog, vim, e sngrep com suas dependências
RUN apt-get update && \
    apt install -y build-essential pkg-config libpcap-dev libglib2.0-dev && \
    apt-get update && apt-get install -y ngrep && \
    apt install -y sngrep && \
    apt install -y vim

# Copia o arquivo de configuração do OpenSIPS
COPY opensips.cfg /etc/opensips/opensips.cfg

# Cria o script de inicialização
RUN echo '#!/bin/bash' > /start.sh && \
    echo '/usr/sbin/opensips -f /etc/opensips/opensips.cfg &' >> /start.sh && \
    echo 'sleep 5' >> /start.sh && \
    echo 'service rsyslog start' >> /start.sh && \
    chmod +x /start.sh

# Comando padrão para iniciar o script
CMD ["/start.sh"]
