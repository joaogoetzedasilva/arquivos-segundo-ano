// server.js
const express = require('express');
const mysql = require('mysql2');
const path = require('path');
 
const app = express();
const port = 3000;
 
// Conexão com o MySQL
const conexao = mysql.createConnection({
  host: 'localhost',
  user: 'root', // normalmente 'root'
  password: 'admin',
  database: 'mydb',
  port: 3307
});
 
conexao.connect(err => {
  if (err) {
    console.error('Erro ao conectar ao banco:', err);
    return;
  }
  console.log('Conectado ao banco de dados!');
});
 
// Servir HTML
app.use(express.static(__dirname));
 
// Rota para buscar dados
app.get('/dados', (req, res) => {
  conexao.query('SELECT nome FROM alunos', (err, results) => {
    if (err) {
      console.error('Erro na consulta:', err);
      res.status(500).send('Erro na consulta ao banco');
    } else {
      console.log('Dados recebidos do banco:', results);
      res.json(results);
    }
  });
});
 
app.listen(port, () => {
  console.log(`Servidor rodando em http://localhost:${port}`);
});
 
 
 






/*
npm init -y
// Criar o arquivo package.json com as configurações padrão
 
 
// Instalar dependências
npm install express mysql2
 
 
// Iniciar o servidor
// No terminal, execute:
node server.js
 
 
 
Abra o navegador e acesse http://localhost:3000/index.html
*/