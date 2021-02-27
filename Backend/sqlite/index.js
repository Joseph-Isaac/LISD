const express = require('express');
const app = express();

app.get('/situation', (req, res)=>{
    return res.json({
        descricao: "Você e sua equipe são encaminhados para um acidente automobilístico envolvendo carro e moto, "
        +"na BR 222.Segundo informações a colisão foi frontal e o motorista do carro se retirou do local sem prestar"
        +" socorro a vítima que estava na moto. A vítima , homem, 30 anos, apresenta sinais de embriaguez. "
        +"O mesmo está no acostamento e verbaliza com os transeuntes na cena e encontra-se de capacete, com a "
        +"presença de pequenas escoriações e refere dor na região abdominal.",
        numPergunta:  1
    });
});

app.listen(3333);