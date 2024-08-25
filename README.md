# Configurações básicas do Git

## Instalação
- [GitForWindows](https://gitforwindows.org/)

## Config
Após a instalação é necessário realizar a sua primeira configuração, neste caso, identificando o nome e o e-mail de quem estará atrelado as alterações.
```
git config --global user.name "Nome Sobrenome"
git config --global user.email "seu_email@example.com"
```

## Init
```
git init
git add . 
git commit -m "Comentário a ser adicionado"
git push
```

## Atualizar o repositório local
Ao utilizar diferentes locais para trabalho se faz necessário sua atualização sempre que for dar início, pois, pode ser que as alterações realizadas não tenho sido baixadas na máquina local.
```
git pull
```

## Copiar um repositório existente
```
git clone <link-repositorio>
```
