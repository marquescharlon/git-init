# Configurações básicas do Git

## 1. Instalação
- [GitForWindows](https://gitforwindows.org/)

## 2. Config
Após a instalação é necessário realizar a sua primeira configuração, neste caso, identificando o nome e o e-mail de quem estará atrelado as alterações.
```
git config --global user.name "Nome Sobrenome"
```
```
git config --global user.email "seu_email@example.com"
```

## 3. Init
```
git init
git add . 
git commit -m "Comentário a ser adicionado"
git push
```

## 4. Branch
Você pode iniciar o repositório com uma branch padrão:

```
git init --initial-branch=main
```
ou 
```
git init -b main
```

> Para aqueles que possui instalado o Git a mais tempo e sua branch padrão é master, basta realizar essa alteração utilizando o comando abaixo:
```
git config --global init.defaultBranch main
```


## 5. Atualizar o repositório local
Ao utilizar diferentes locais para trabalho se faz necessário sua atualização sempre que for dar início, pois, pode ser que as alterações realizadas não tenho sido baixadas na máquina local.
```
git pull
```

## 6. Copiar um repositório existente
```
git clone <link-repositorio>
```

## 7. Excluir as credenciais
Você pode excluir as credenciais usando uma das opções abaixo.

### 7.1 Credenciais do Windows

![image](https://github.com/user-attachments/assets/6ce5396a-5545-44d5-ad9b-2654a6e3447e)

![image](https://github.com/user-attachments/assets/16660faf-4b3e-4acd-8b42-46e1203d46e4)

> [!WARNING]
> Se não estiver conseguindo acessar as credenciais por causa da política de segurança você pode executar o procedimento abaixo: <br>
> 1. Abrir o Executar ```(Win+R)```
> 2. Digitar os comandos ```rundll32.exe keymgr.dll,KRShowKeyMgr```
> 3. Clicar em ```Ok```

![Executar](https://github.com/user-attachments/assets/03d6f38d-62ba-41ec-8ba0-9f830b2d87c4)


### 7.2 Pelo Prompt de Comando (CMD) ou PowerShell

Isso possibilita excluir as credenciais de outra pessoa para que você possa realizar o acesso com seu login e atribuir o seu usuário e e-mail vinculado ao seus commits.

> Lembra de executar esses comandos principalmente se o computador que você geralmente utiliza é compartilhado com outras pessoas.

```
cmdkey /delete:LegacyGeneric:target=git:https://github.com
```
```
git config --global --unset-all user.name
```
```
git config --global --unset-all user.email
```

<!--
## 8. Git Bash no menu de contexto do Windows

**8.1** Abra o bloco de notas (notepad) e salva o documento com o nome `OpenGitBash.reg`

![image](https://github.com/user-attachments/assets/9c6e9b17-cd6e-44b9-9050-ae3f5e7fb520)

**8.2** Copia e cola o conteúdo abaixo para dentro do **bloco de notas**

```
Windows Registry Editor Version 5.00
; Open files
; Default Git-Bash Location C:\Program Files\Git\git-bash.exe

[HKEY_CLASSES_ROOT\*\shell\Open Git Bash]
@="Open Git Bash"
"Icon"="C:\\Program Files\\Git\\git-bash.exe"

[HKEY_CLASSES_ROOT\*\shell\Open Git Bash\command]
@="\"C:\\Program Files\\Git\\git-bash.exe\" \"--cd=%1\""

; This will make it appear when you right click ON a folder
; The "Icon" line can be removed if you don't want the icon to appear

[HKEY_CLASSES_ROOT\Directory\shell\bash]
@="Open Git Bash"
"Icon"="C:\\Program Files\\Git\\git-bash.exe"

[HKEY_CLASSES_ROOT\Directory\shell\bash\command]
@="\"C:\\Program Files\\Git\\git-bash.exe\" \"--cd=%1\""

; This will make it appear when you right click INSIDE a folder
; The "Icon" line can be removed if you don't want the icon to appear

[HKEY_CLASSES_ROOT\Directory\Background\shell\bash]
@="Open Git Bash"
"Icon"="C:\\Program Files\\Git\\git-bash.exe"

[HKEY_CLASSES_ROOT\Directory\Background\shell\bash\command]
@="\"C:\\Program Files\\Git\\git-bash.exe\" \"--cd=%v.\""
```

**8.3** Execute o arquivo clicando duas vezes

**8.4** Irá pedir que autorize no modo administrador, clique em `Sim`
   
<!-- ![image](https://github.com/user-attachments/assets/e2dbc61c-9377-41fb-a398-009bcd5bc8d2) -->

<!-- **8.5** Então, a instalação será realizada no registro. Agora, só clicar em `Ok`. -->
   
<!-- ![image](https://github.com/user-attachments/assets/7d314577-26bb-44ea-878f-2d315ebb47c6) -->
<!-- ![image](https://github.com/user-attachments/assets/7d314577-26bb-44ea-878f-2d315ebb47c6) -->

<!-- **8.6** Para utilizar basta apenas acessar alguma pasta e clicar com o botão direito. Irá notar que irá aparecer a opção `Open Git Bash`. -->

<div align="left">
  <img src="https://github.com/user-attachments/assets/d0c36ce4-09f5-4059-a5e7-8a385440f776" width="50%" />
</div>

> Nota que estou utilizando o Windows 11.


