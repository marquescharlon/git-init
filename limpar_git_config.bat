@echo off
cls
echo Iniciando processo de limpeza das configuracoes do Git...
echo.

REM Removendo email global do Git
git config --global --unset-all user.email
IF %ERRORLEVEL% EQU 0 (
    echo [✔] Email global removido com sucesso.
) ELSE (
    echo [✖] Falha ao remover o email global ou nao foi encontrado.
)

REM Removendo nome global do Git
git config --global --unset-all user.name
IF %ERRORLEVEL% EQU 0 (
    echo [✔] Nome global removido com sucesso.
) ELSE (
    echo [✖] Falha ao remover o nome global ou nao foi encontrado.
)

REM Removendo credencial armazenada do GitHub
cmdkey /delete:LegacyGeneric:target=git:https://github.com
IF %ERRORLEVEL% EQU 0 (
    echo [✔] Credencial do GitHub removida com sucesso.
) ELSE (
    echo [✖] Falha ao remover a credencial do GitHub ou ela nao existia.
)

echo.
echo Processo finalizado.
pause
