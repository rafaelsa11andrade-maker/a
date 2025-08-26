<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Enigma</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #282c34; /* Cor de fundo escura */
            color: #ffffff; /* Cor do texto branca */
            text-align: center;
            padding: 50px;
        }
        .container {
            background: #3c4043; /* Cor de fundo do container */
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.5);
            display: inline-block;
        }
        input[type="text"] {
            padding: 10px;
            margin-top: 10px;
            width: 80%;
            border: none;
            border-radius: 5px;
            background-color: #ffffff; /* Cor de fundo do input */
            color: #000000; /* Cor do texto do input */
        }
        button {
            padding: 10px 15px;
            margin-top: 10px;
            cursor: pointer;
            background-color: #4CAF50; /* Cor de fundo do botão */
            color: white; /* Cor do texto do botão */
            border: none;
            border-radius: 5px;
        }
        button:hover {
            background-color: #45a049; /* Cor do botão ao passar o mouse */
        }
        .result {
            margin-top: 20px;
            font-weight: bold;
        }
    </style>
</head>
<body>

<div class="container">
    <h1>Resolva o Enigma!</h1>
    <p id="enigma">Eu sou papel muito importante para vida e para certos processos e além disso sou uma parte de um código o que eu sou??</p>
    <input type="text" id="resposta" placeholder="Digite sua resposta aqui">
    <button onclick="verificarResposta()">Enviar</button>
    <div class="result" id="resultado"></div>
</div>

<script>
    const enigmas = [
        { pergunta: "Eu sou papel muito importante para vida e para certos processos e além disso sou uma parte de um código o que eu sou??", resposta: "aminoácidos" },
        { pergunta: "Qual o número que me define?", resposta: "20" } // Segunda pergunta
    ];

    let indiceAtual = 0;

    function mostrarEnigma() {
        document.getElementById('enigma').textContent = enigmas[indiceAtual].pergunta;
        document.getElementById('resposta').value = '';
        document.getElementById('resultado').textContent = '';
    }

    function verificarResposta() {
        const resposta = document.getElementById('resposta').value.toLowerCase();
        const resultado = document.getElementById('resultado');

        // Verifica se a resposta está correta
        if (resposta === enigmas[indiceAtual].resposta.toLowerCase()) {
            resultado.textContent = 'Correto! Você resolveu o enigma!';
            resultado.style.color = 'lightgreen'; // Cor do texto de resposta correta
            indiceAtual++; // Avança para o próximo enigma
            if (indiceAtual < enigmas.length) {
                setTimeout(mostrarEnigma, 2000); // Mostra o próximo enigma após 2 segundos
            } else {
                resultado.textContent += ' Parabéns, agentes! Espero vocês dia 20 às 18:30 🌲.';
            }
        } else {
            resultado.textContent = 'Incorreto! Tente novamente.';
            resultado.style.color = 'red'; // Cor do texto de resposta incorreta
        }
    }

    // Mostra o primeiro enigma ao carregar a página
    mostrarEnigma();
</script>

</body>
</html>
