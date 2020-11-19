*** Settings ***
Resource            base.robot

Test Setup          Nova sessão
Test Teardown       Encerra sessão


*** Test Cases ***
Selecionar por Texto e validar por Valor
    Go To                           ${url}dropdown
    Select From List By Label       class:avenger-list              Scott Lang
    ${selected}=                    Get Selected List Value         class:avenger-list
    Should Be Equal                 ${selected}                     7
    Sleep                           5

Selecionar por Value e validar por Texto
   [Tags]      HomemFormiga
    Go To                           ${url}dropdown
    select From List By Value       id:dropdown                     6
    ${selected}=                    Get Selected List Label         id:dropdown
    Should Be Equal                 ${selected}                     Loki
    Sleep                           5