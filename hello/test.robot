** Settings **
Library     app.py


*** Test Cases ***
Deve retornar mensagem de boas-vindas
    ${result}=          welcome         Gislaine
    #log to console      ${result}
    Should Be Equal     ${result}       Olá Gislaine, bem-vinda ao curso básico de Robot Framework!