# Gerador de Let's Encrypt para Hospadagens Locaweb

Pequena automatização do script: [https://github.com/acmesh-official/acme.sh](https://github.com/acmesh-official/acme.sh)


Ao invés de ter que utilizar diversos comandos conforme o [guia da Locaweb](https://ajuda.locaweb.com.br/wiki/certificado-lets-encrypt/), com este script você precisa apenas indicar o dominio. 


# Como utilizar?

1. Acesse o FTP do seu site via [SSH](https://ajuda.locaweb.com.br/wiki/como-habilitar-o-ssh-hospedagem-de-sites/). 

2. Execute este comando: 

`curl -O https://raw.githubusercontent.com/lucasfernandesxyz/Let-s-Encrypt-na-Locaweb/main/lets.sh && sh lets.sh`


3. Informe o domínio.

O certificado será gerado desta forma:

![Certificado gerado](https://ajuda.locaweb.com.br/wp-content/uploads/2018/07/certificado_cloud_locaweb02.png)


Será necessário copiar as linhas em destaque e [abrir um ticket](https://ajuda.locaweb.com.br/wiki/como-criar-e-acompanhar-um-chamado-central-do-cliente/) para o suporte da Locaweb para que possam finalizar a instalação. Indique o path do certificado conforme este exemplo:

`PATH PARA O CERTIFICADO:
[Wed Nov 23 14:38:36 BRST 2016] Your cert is in /home/storage/6/1e/54/linux171/.acme.sh/ssllinux171.hospedagemdesites.ws/ssllinux171.hospedagemdesites.ws.cerPATH PARA O ARQUIVO KEY:
[Wed Nov 23 14:38:36 BRST 2016] Your cert key is in /home/storage/6/1e/54/linux171/.acme.sh/ssllinux171.hospedagemdesites.ws/ssllinux171.hospedagemdesites.ws.keyPATH PARA O CA-BUNDLE:
[Wed Nov 23 14:38:36 BRST 2016] The intermediate CA cert is in /home/storage/6/1e/54/linux171/.acme.sh/ssllinux171.hospedagemdesites.ws/ca.cerPATH PARA O FULL CHAIN (CERTIFICADO + CA JUNTOS):
[Wed Nov 23 14:38:36 BRST 2016] And the full chain certs is there: /home/storage/6/1e/54/linux171/.acme.sh/ssllinux171.hospedagemdesites.ws/fullchain.cer`


# Funciona em todas as hospedagens? 

Apenas em hospedagens Linux. Para Hospedagens Windows eu recomendo utilizar o [ZeroSSL](https://zerossl.com)
