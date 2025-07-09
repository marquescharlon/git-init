# 🛠️ Guia de Configuração Básica do Git

[![Python](https://img.shields.io/badge/git-2.50%2B-blue)](https://www.python.org/)
[![Status](https://img.shields.io/badge/status-active-success.svg)]()

---

Este repositório contém instruções essenciais para configurar e utilizar o Git em ambientes Windows, incluindo dicas para gerenciamento de credenciais e boas práticas para iniciar projetos.

## 📦 Índice

- [Instalação](#-instalação)
- [Configuração Inicial](#configuração-inicial)
- [Inicializando um Repositório](#inicializando-um-repositório)
- [Gerenciamento de Branches](#gerenciamento-de-branches)
- [Atualizando o Repositório Local](#atualizando-o-repositório-local)
- [Clonando Repositórios](#clonando-repositórios)
- [Gerenciamento de Credenciais](#gerenciamento-de-credenciais)
- [Automatizando Limpeza de Configurações](#automatizando-limpeza-de-configurações)
- [Autor](#autor)

## 💻 Instalação

- Baixe e instale o [Git for Windows](https://gitforwindows.org/).

## Configuração Inicial

Após a instalação, configure seu nome e e-mail:

```sh
git config --global user.name "Seu Nome"
git config --global user.email "seu_email@example.com"
```

## Inicializando um Repositório

```sh
git init
git add .
git commit -m "Comentário inicial"
git push
```

## Gerenciamento de Branches

Crie o repositório já com a branch `main`:

```sh
git init --initial-branch=main
# ou
git init -b main
```

Altere a branch padrão para `main`:

```sh
git config --global init.defaultBranch main
```

## Atualizando o Repositório Local

Mantenha seu repositório atualizado:

```sh
git pull
```

## Clonando Repositórios

```sh
git clone <link-do-repositorio.git>
```

## Gerenciamento de Credenciais

### 1. Pelo Gerenciador de Credenciais do Windows

Acesse o Gerenciador de Credenciais para remover credenciais antigas do GitHub.

> [!WARNING]
> Se não estiver conseguindo acessar as credenciais por causa da política de segurança você pode executar o procedimento abaixo: <br>
> 1. `Win + R`
> 2. Digite: `rundll32.exe keymgr.dll,KRShowKeyMgr`
> 3. Clique em `OK`

<img src="https://github.com/user-attachments/assets/03d6f38d-62ba-41ec-8ba0-9f830b2d87c4" alt="Executar" width="300"/>

### 2. Pelo Prompt de Comando ou PowerShell

Execute os comandos abaixo para remover credenciais e configurações globais:

```sh
cmdkey /delete:LegacyGeneric:target=git:https://github.com
git config --global --unset-all user.name
git config --global --unset-all user.email
```

## Automatizando Limpeza de Configurações

Utilize o script [`limpar_git_config.bat`](limpar_git_config.bat) para automatizar a remoção de configurações e credenciais do Git.

## Autor

Marquescharlon Santos  
- GitHub: [@marquescharlon](https://github.com/marquescharlon)  
- LinkedIn: [@marquescharlon](https://www.linkedin.com/in/marquescharlon/)

⭐️ Dê uma estrela se este repositório foi útil para você!

---
> _Mantenha suas configurações do Git organizadas e seguras!_
