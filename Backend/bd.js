const mysql = require('mysql');
var connection = mysql.createConnection({
    host    : 'localhost',
    user    : 'root',
    password: '',
    database: 'lisdbd'
});

connection.connect(function(err){
    if(err){
        console.error('erro na conecçao: '+err.stack);
        return;
    }
    console.error('conectado com o id '+connection.threadId);
});

connection.query('SELECT * FROM Situacao WHERE idSituation = 1', function(err, rows){
    if(!err){
        console.log('Resultado: ', rows);
    }else{
        console.log('Erro ao realizar as consultas: ', err);
    }
});

var id = 1;
var select = 'situacao.descricao, option.descricao';
var tabelas = ' situacao, option, option_has_situacao ';
var pesquisa = 'situacao.idSituation = '+id+' AND situacao.idSituation = option_has_situacao.Situacao_idSituation '
+'AND option.idOption = option_has_situacao.Option_idOption AND option_has_situacao.aparece = 1';

connection.query('SELECT '+select+' FROM '+tabelas+' WHERE '+pesquisa, function(err, rows){
    if(!err){
        console.log('Resultado: ', rows);
    }else{
        console.log('Erro ao realizar as consultas: ', err);
    }
});

/*
 
switch(QualSituacao){
 	case 1:
 		var idDescricao = 1
		var idA = 1
		var idB = 2
		break;
	case 2:
		var idDescricao = 24
		var idA = 24
		var idB = 25
	case 3:
		var idDescricao = 49
		var idA = 48
		var idB = 49
	default: 
		return 0;
}

var descricaoSit, a, b, textBtnA, textBtnB;

descricaoSit = 'SELECT situacao.descricao FROM tabelas WHERE situacao.idSituation = '+id;
a = 'SELECT option.descricao FROM tabelas ' +
	'WHERE idA = option_has_situacao.Option_idOption AND option.valor = true AND option_has_situacao.aparece = 1';
b = 'SELECT option.descricao FROM tabelas '+ 
 	'WHERE idA = option_has_situacao.Option_idOption AND option.valor = false AND option_has_situacao.aparece = 1';
 
textBtnA = a; 	
textBtnB = b; 	
 
textBtnA.onClick(){
 	idDescricao = 'SELECT situacao.idSituation FROM tabelas' +
 	'WHERE idA = option_has_situacao.Option_idOption AND option_has_situacao.aparece = 0'
};

textBtnB.onClick(){
 	idDescricao = 'SELECT situacao.idSituation FROM tabelas' +
 	'WHERE idB = option_has_situacao.Option_idOption AND option_has_situacao.aparece = 0'
};

idA = 'SELECT option.idOption FROM tabelas  '+
 	'WHERE idDescricao = option_has_situaca.Situacao_idSituation AND option.valor = false AND option_has_situacao.aparece = 1';

idB = 'SELECT option.idOption FROM tabelas  '+
 	'WHERE idDescricao = option_has_situaca.Situacao_idSituation AND option.valor = true AND option_has_situacao.aparece = 1'; 	
 
escolha = 'botão que ele selecionou' //situacao_has_option.option_idOption

opcao1 = 1; -- verdadeira -- id = SELECT situacao.idSituation FROM tabelas 
	WHERE situacao.idSituacao = situacao_has_option.situacao_idSituation 
	AND option.idOption = escolha;

opcao2 = 0; -- falsa

if(opcao1) -> chama linha 31
if(opcao2) -> chama linha 31

*/