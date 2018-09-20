<img src="https://cdn.rawgit.com/cades-ifrn/brand/0af1839d/src/svg/simbolo-cor.svg" width="200" align="right">

# Minicurso de REST API com Laravel/Lumen

Repositório oficial do minicurso de Laravel/Lumen promovido pelo **C**élula **A**cadêmico de **De**senvolvimento de **S**oftware (CADES) no **CADESDAY #1**.

### Como usar esse boilerplate

Primeiro, clone o repositório para sua máquina:

```sh
git clone https://github.com/cades-ifrn/minicurso-laravel.git
```

Antes de continuar, certifique-se que você tem `docker-compose` instalado na sua máquina:

```sh
docker-compose --version
```

Se você ver uma mensagem como a seguinte, significa você pode pular o próximo comando:

> docker-compose version 1.22.0, build f46880fe

Se você não tem `docker-compose` instalado, utilize o script `install-docker-compose.sh`:

```sh
./install-docker-compose.sh
```

Feche e reabra seu terminal, e execute novamente:

```sh
docker-compose --version
```

Pronto! Agora que você tem `docker-compose` instalado, realize o deploy da aplicação pela primeira vez:

```sh
./deploy.sh
```
Depois que terminar, se não ocorrer nenhum erro, você já pode ver que a aplicação funcionando:

```sh
docker-compose up
```

Acesse http://localhost:8000 e você verá uma mensagem como:

> Lumen (5.6.4) (Laravel Components 5.6.*)

Tudo pronto! :v:

## Instrutores

| ![](https://avatars3.githubusercontent.com/u/3816749?s=150) |
| ----- |
| [Yves Cabral](//github.com/yvescabral) |

## Apoio

| <img src="https://cdn.rawgit.com/cades-ifrn/minicurso-react-native-wtads/master/logo_ifrn.jpg" alt="IFRN - Campus Natal-Central" width="200" /> |
| ---  |
| Instituto Federal do Rio Grande do Norte<br>Campus Natal-Central<br>Diretoria Acadêmica de Gestão e Tecnologia da Informação |
