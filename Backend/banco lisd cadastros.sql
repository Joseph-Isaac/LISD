SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema lisdbd
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema lisdbd
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `lisdbd` DEFAULT CHARACTER SET utf8 ;
USE `lisdbd` ;

SHOW DATABASES;

SHOW TABLES;

-- -----------------------------------------------------
-- Table `lisdbd`.`Option`
-- -----------------------------------------------------

DROP TABLE IF EXISTS `lisdbd`.`Option`;
CREATE TABLE IF NOT EXISTS `lisdbd`.`Option` (
  `idOption` INT NOT NULL AUTO_INCREMENT,
  `descricao` VARCHAR(250) NULL,
  `valor` TINYINT NULL,
  `situacao` INT NULL,
  PRIMARY KEY (`idOption`))
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `lisdbd`.`Situacao`
-- -----------------------------------------------------

DROP TABLE IF EXISTS `lisdbd`.`Situacao` ;
CREATE TABLE IF NOT EXISTS `lisdbd`.`Situacao` (
  `idSituation` INT NOT NULL AUTO_INCREMENT,
  `imagem` VARCHAR(250) NULL,
  `Descricao` VARCHAR(500) NULL,
  `situacao` INT NULL,
  PRIMARY KEY (`idSituation`))
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `lisdbd`.`Option_has_Situacao`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `lisdbd`.`Option_has_Situacao`;
CREATE TABLE IF NOT EXISTS `lisdbd`.`Option_has_Situacao` (
  `Situacao_idSituation` INT NOT NULL,
  `Option_idOption` INT NOT NULL,
  `aparece` INT NULL,
  PRIMARY KEY (`Option_idOption`, `Situacao_idSituation`),
  INDEX `fk_Option_has_Situacao_Situacao1_idx` (`Situacao_idSituation` ASC),
  INDEX `fk_Option_has_Situacao_Option1_idx` (`Option_idOption` ASC),
  CONSTRAINT `fk_Option_has_Situacao_Situacao1`
    FOREIGN KEY (`Situacao_idSituation`)
    REFERENCES `lisdbd`.`Situacao` (`idSituation`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Option_has_Situacao_Option1`
    FOREIGN KEY (`Option_idOption`)
    REFERENCES `lisdbd`.`Option` (`idOption`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

use lisdbd;
show databases;
SHOW TABLES;

SELECT * FROM Situacao;
SELECT * FROM `Option`;

INSERT INTO `lisdbd`.`Situacao`(descricao, situacao) 
VALUES 
('Você e sua equipe são encaminhados para um acidente automobilístico envolvendo carro e moto, na BR 222.Segundo informações a colisão foi frontal e o motorista do carro se retirou do local sem prestar socorro a vítima que estava na moto. A vítima , homem, 30 anos, apresenta sinais de embriaguez. O mesmo está no acostamento e verbaliza com os transeuntes na cena e encontra-se de capacete, com a presença de pequenas escoriações e refere dor na região abdominal.', 1), -- 1
('Você percebe dificuldade de colocar o colar cervical. Você está numa cena segura, o que fazer?', 1), -- 2 
('Paciente referiu dor durante o procedimento e você percebeu crepitações. O que poderá ser?', 1), -- 3
('O paciente foi transportado para o hospital referência em traumas, houve piora da lesão cervical e o paciente foi diagnosticado com tetraplegia e incapacidade de respirar por conta própria. Você falhou!', 1), -- 4
('Após a abordagem inicial, a estabilização da coluna cervical e a remoção do capacete, o que fazer?', 1), -- 5
('Não foi possível verificar, devido o barulho local. Deseja Continuar?', 1), -- 6
('Você perdeu bastante tempo e os sintomas se agravaram. Você falhou!', 1), -- 7
('Você realizou a avalição primária e agora?', 1), -- 8
('Para avaliação do estado neurológico, é necessário utilizar a escala de glasgow, contudo, não  será eficaz utilizar o instrumento, pois o paciente encontra-se alcoolizado. Você perdeu tempo e o paciente faleceu devido perda excessiva de sangue, devido hemorragia interna na região abdominal. Você falhou!', 1), -- 9
('Realizaram-se as manobras de abertura das vias aéreas(Tração de mandíbula) e não encontrou-se secreção ou corpos estranhos, não foi necessário o uso de cânula orofaríngea. SP02 97% . O que fazer?', 1), -- 10
('27 rpm. O que fazer?', 1), -- 11
('Percepção de Sudorese. O que fazer?', 1), -- 12
('Você não percebeu o choque hipovolêmico devido a hemorragia interna. O paciente não resistiu durante o transporte. Você falhou!', 1), -- 13
('Pulso (filiforme); Perfusão (>2 seg.); Pele (Fria e pegajosa). A partir dos dados apresentados da situação você percebe que:', 1), -- 14
('A cirrose é resultado de agressões crônicas como ataque de vírus (hepatites A,B,C...), não correlacionase com acidentes automobilísticos. Infelizmente, o paciente estava em choque hipovolêmicos e por não executar os procedimentos, ele faleceu durante o transporte. Você falhou!', 1), -- 15
('A partir dos dados apresentados da situação você percebe que houve choque hipovolêmico devido hemorragia abdominal interna. O que fazer?', 1), -- 16
('É um repositor hidroeletrolítico indicado para auxiliar na reposição de água, calorias, diurese osmótica, desidratação e hipoglicemias. Em choques hipovolêmicos não é indicado. Você falhou!', 1), -- 17
('Depois de administrado de soro ringer lactato, o que fazer?', 1), -- 18
('Houve piora do quadro clínico, devido a perda excessiva de sangue. O paciente não resistiu durante o transporte ao hospital. Você falhou!', 1), -- 19
('Decubito Dorsal.', 1), -- 20
('Você deixou o paciente em decúbito ventral, ocasionando a partir do procedimento a retirada do acesso venoso  periférico que estava sendo administrado soro. Infelizmente, houve demora para colocar o paciente na prancha e o paciente não resistiu durante o transporte. Você falhou!', 1), -- 21
('Você aplicou o colar cervical (após avaliação primária) e realizou o rolamento de 90°.', 1), -- 22
('Parabéns. Você concluiu o atendimento com sucesso', 1); -- 23

insert into `lisdbd`.`Option`(descricao, valor, situacao) values 
('Abordagem inicial ao paciente e estabilização manual da coluna cervical e depois remover o capcete.', true, 1), -- 1
('Abordagem inicial ao paciente e colocar o colar cervical o mais rápido possível.', false, 1), -- 2
('Remover o capacete.', true, 1), -- 3
('Continuar colocando o colar cervical, finalizando esse procedimento.', false, 1), -- 4
('Lesão na coluna cervical.', true, 1),  -- 5
('Isso é normal, pois o paciente encontra-se embriagado.', false, 1), -- 6
('Realizar avaliação primária.', true, 1), -- 7
('Verificar todos os sinais vitais', false, 1), -- 8
('Avaliar as vias aéreas.', true, 1), -- 9
('Avaliar o estado neurológico', false, 1), -- 10
('Avaliar presença de boa ventilação e oxigenação. Ofertar O2 por máscara não reinalante de 10 a 15 LPM.', true, 1), -- 11
('Cortar as vestes do paciente para melhor visualização das escoriações', false, 1), -- 12
('Avaliar pulso bilateral, perfusão, pele e buscar hemorrágias', true, 1), -- 13
('Ignora e associa sudorese ao calor, pois paciente relatou calor.', false, 1), -- 14
('Cirrose agravada pelo acidente.', false, 1), -- 15
('Choque hipovolêmico, devido hemorragia abdominal interna.', true, 1), -- 16
('Administração de solução glicosada', false, 1), -- 17
('Administração de soro ringer lactato.', true, 1), -- 18
('Finalizar atendimento e encaminhar para o Hospital de referencia em traumas.', false, 1), -- 19
('Verificar Escala de Glasgow; Realizar exposição da vítima(se necessário na cena); Controle da hipotermia (manta aluminizada).', true, 1), -- 20
('Aplicar colar cervical (após avaliação primária), realizar rolamento de 180°.', false, 1), -- 21
('Aplicar colar cervical (após avaliação primária), realizar rolamento de 90°.', true, 1), -- 22
('Finalizar atendimento e encaminhar para o Hospital de referencia em traumas.', true, 1); -- 23

insert into `lisdbd`.`Option_has_Situacao`(`Situacao_idSituation`,`Option_idOption`, `aparece`) values
('1','1','1'),
('1','2','1'),
('2','2','0'),
('2','3','1'),
('2','4','1'),
('3','4','0'),
('3','5','1'),
('3','6','1'),
('4','5','0'), -- f
('4','6','0'), -- f
('5','1','0'),
('5','3','0'),
('5','7','1'),
('5','8','1'),
('6','7','1'),
('6','8','1'),
('7','8','0'), -- f
('8','7','0'),
('8','9','1'),
('8','10','1'),
('9','10','0'), -- f
('10','9','0'),
('10','11','1'),
('10','12','1'),
('11','11','0'),
('11','13','1'),
('11','14','1'),
('12','12','0'),
('12','13','1'),
('12','14','1'),
('13','14','0'), -- f
('14','13','0'),
('14','15','1'),
('14','16','1'),
('15','15','0'), -- f
('16','16','0'),
('16','17','1'),
('16','18','1'),
('17','17','0'), -- f
('18','18','0'),
('18','19','1'),
('18','20','1'),
('19','19','0'), -- f
('20','20','0'),
('20','21','1'),
('20','22','1'),
('21','21','0'), -- f
('22','22','0'),
('22','23','1'),
('23','23','1'); -- f

use lisdbd;
select * from `Option`;
select * from `situacao`;

INSERT INTO `lisdbd`.`Situacao`(descricao, situacao) VALUES
('Você e sua equipe são encaminhados para um restaurante. Segundo informações, a vitima estava se alimentando e inesperadamente obteve um inicio súbito de angustia respiratória, tosse e restrição para a fala. A vitima, mulher, gestante, 26 anos, no ultimo trimestre da gestação, ela está na cadeira do restaurante a espera de atendimento.', 2), -- 24
('Devido a demora na realização das condutas corretas observa-se agora a ausência de movimentação de expansão torácica.', 2), -- 25
('Infelizmente você percebeu apenas  PR, porém, o paciente estava em PCR. O procedimento correto a ser realizado seria a checagem do pulso central e ventilação para ser constatado a presença de PCR ou não. Você falhou!', 2), -- 26
('Constatou-se PCR e solicitou-se o SAV.', 2), -- 27
('Em pacientes adultos é recomendado realizar 5 ciclos de 30 compressões e 2 ventilações por ciclo e aplicar o DEA. Você falhou!', 2), -- 28
('VOCÊ CONSEGUIU! Utilizou-se o DEA, a partir do ritmo chocável verificado pelo equipamento, aplicou-se o choque, reiniciou-se a RCP e reavaliou-se o rítmo. O suporte avançado chegou ao local e continuou as manobras e você juntamente com a equipe, conseguiram estabilizar  e encaminhar a vítima para um hospital de referência.', 2), -- 29
('Paciente inconsciente', 2), -- 30
('Esse procedimento não é prioridade em casos de obstrução de vias aéreas. Você falhou!', 2), -- 31
('Solicitar o SAV.', 2), -- 32
('Não é recomendado verificar pulso e ventilação em pacientes inconscientes por OVACE grave. Pois haveria atraso na conduta ideal. Você falhou!', 2), -- 33
('Iniciada as compressões (laterização do útero).', 2), -- 34
('O ideal a ser realizado em adultos seriam as 30 compressões, pois apenas 15 é ineficaz para a reanimação da vítima. Você falhou!', 2), -- 35
('Aplicou-se o DEA. Após compressões e avaliação das vias áreas, não obteve-se visualização de um corpo estranho.', 2), -- 36
('Devido a demora na realização das condutas corretas, observa-se agora a ausência de expansão torácica.', 2), -- 37
('Infelizmente você percebeu apenas  PR, porém, o paciente estava em PCR. O procedimento correto a ser realizado seria a checagem do pulso central e ventilação para ser constatado a presença de PCR ou não. Você falhou!', 2), -- 38
('Não houve expansão torácica no paciente.', 2), -- 39
('A oferta de oxigênio pelo cateter nasal foi insuficiente para o caso da vítima e ela evoluiu para uma PCR ao chegar no hospital. Você falhou!', 2), -- 40
('Após a 2° ventilação, não houve expansão torácica.', 2), -- 41
('O ideal a ser realizado em adultos seriam as 30 compressões, pois apenas 15 é ineficaz para a reanimação da vítima. Constatado PCR.', 2), -- 42
('Constatado PCR.', 2), -- 43
('É necessário a solicitação do DEA para avaliar se a vítima está em ritmo chocável e assim serem realizados os procedimentos necessários. Você falhou!', 2), -- 44
('VOCÊ CONSEGUIU! O SAV chegou ao local com o DEA, a partir do ritmo chocável verificado pelo equipamento, aplicaram o choque, reiniciaram a RCP e reavaliaram o rítmo. O suporte avançado continuou as manobras e você juntamente com a equipe, conseguiram estabilizar  e encaminhar a vítima para um hospital de referência.', 2), -- 45
('Realizou-se abertura de vias aéreas, visualizou-se o corpo estranho.', 2), -- 46
('É recomendado ofertar 2 ventilações, após remoção do corpo estranho, estabilização e transporte do paciente para o ambiente hospitalar. Você falhou!', 2), -- 47
('VOCÊ CONSEGUIU! Realizou as medidas que salvaram a vítima. O SAV chegou a cena, finalizou o atendimento e realizou o transporte para a unidade de saúde.', 2); -- 48

insert into `Option`(descricao, valor, situacao) values 
('Abordagem inicial ao paciente', true, 2), -- 24
('Estabilização manual da coluna cervical', false, 2), -- 25
('Checar pulso central (carotídeo) durante 10 segundos e drive ventilatório concomitante', true, 2), -- 26
('Checar o drive ventilatório da vítima fazendo observação do tórax durante 10 segundos ', false, 2), -- 27
('Iniciar RCP com 5 ciclos de 30 compressões e duas ventilações por ciclo e utiliza o DEA', true, 2), -- 28
('Iniciar RCP imediatamente com 5 ciclos de 50 compressões e 2 ventilações por ciclo', false, 2), -- 29
('Retirar a paciente da cadeira, deixando  em decúbito dorsal em uma superfície rígida.', true, 2), -- 30
('Expor a vítima.', false, 2), -- 31
('Iniciar as compressões (laterização do útero).', true, 2), -- 32
('Checagem da responsividade, pulso e ventilação por 15 seg.', false, 2), -- 33
('30 compressões.', true, 2), -- 34
('15 compressões', false, 2), -- 35
('Realizar uma insuflação com BVM e avaliar a expansão torácica.', true, 2), -- 36
('Levar para o hospital para remoção cirurgica do corpo estranho.', false, 2), -- 37
('Checar pulso central (carotídeo) durante 10 segundos e avaliar o drive ventilatório.', true, 2), -- 38
('Checar o drive ventilatório da vítima fazendo observação do tórax durante 10 segundos.', false, 2), -- 39
('Reposicionar vias áreas e realizar 1 insuflação novamente', true, 2), -- 40
('Colocação de cateter nasal 2 l', false, 2), -- 41
('Realizar mais 30 compressões.', true, 2), -- 42
('Realizar mais 2 ciclos de 15 compressões', false, 2), -- 43
('Iniciar RCP com 5 ciclos de 30 compressões e duas ventilações por ciclo e solicitar o DEA', true, 2), -- 44
('Iniciar RCP imediatamente com 5 ciclos de 30 compressões e 2 ventilações por ciclo', false, 2), -- 45
('Retirada do corpo estranho e 2 ventilações com BVM.', true, 2), -- 46
('Retirada do corpo estranho e liberação do paciente', false, 2); -- 47

insert into `lisdbd`.`Option_has_Situacao`(`Situacao_idSituation`,`Option_idOption`) values
('24','24','1'), -- 1
('24','25','1'),
('25','25','0'), -- 2
('25','26','1'),
('25','27','1'),
('26','27','0'), -- f -- 3
('27','26','0'), -- 4
('27','28','1'),
('27','29','1'),
('28','29','0'), -- f -- 5
('29','28','0'), -- f -- 6
('30','24','0'), -- 7
('30','31','1'),
('30','32','1'),
('31','31','0'), -- f -- 8
('32','30','0'), -- 9, (chamada pela 7) (a: 9, b: 10)
('32','32','1'), 
('32','33','1'), 
('33','33','0'), -- f -- 10 (chamada pela 10)
('34','32','0'), -- 11 (chamda pela 9) (a:12b:11)
('34','35','1'),
('34','34','1'),
('35','35','0'), -- f -- 12 (chamda pela 12)
('36','34','0'), -- 13 (chamda pela 11) (a:13b:14)
('36','36','1'),
('36','37','1'),
('37','37','0'), -- 14 (chamda pela 14) (a:15b:16)
('37','38','1'),
('37','39','1'),
('38','39','0'), -- f -- 15 (chamda pela 16)
('39','36','0'), -- 16 (chamda pela 13) (a:17b:18)
('39','40','1'),
('39','41','1'),
('40','41','0'), -- f -- 17 (chamda pela 18) 
('41','40','0'), -- 18 (chamda pela 17) (a:19b:20)
('41','42','1'),
('41','43','1'),
('42','43','0'), -- 19 (chamda pela 20) (a:21b:22)
('42','44','1'),
('42','45','1'),
('43','38','0'), -- 20 (chamda pela 15) (a:21b:22)
('43','44','1'),
('43','45','1'),
('44','45','0'), -- f -- 21 (chamda pela 22)
('45','44','1'), -- f -- 22 (chamda pela 21)
('46','42','0'), -- 23 (chamda pela 19) (a:23b:24)
('46','46','1'),
('46','47','1'),
('47','47','0'), -- f -- 24 (chamda pela 24)
('48','46','0'); -- f -- 25 (chamda pela 23)

INSERT INTO `lisdbd`.`Situacao`(descricao, situacao) VALUES
('Você e sua equipe são encaminhados a um estádio de futebol. Segundo informações, a vítima estava com um fogo de artificio para comemorar a vitória do seu time, todavia, houve detonação do explosivo em seus braços. A vítima homem, 24 anos, encontra-se na arquibancada, verbalizando com os outros torcedores, possui lacerações nos membros superiores e está a espera de atendimento.', 3), -- 49
('Percepção de sangramento ativo e amputação parcial da mão em MSD.', 3), -- 50
('Houve perda de tempo para a realização do procedimento e houve piora do sangramento, evoluindo para o choque hipovolêmico classe 3. Acionou-se o SAV', 3), -- 51
('Esse procedimento não é indicado, já que não houve contensão da hemorragia, havendo perda excessiva de fluídos. Evoluindo para a inconsciência', 3), -- 52
('Você falhou! Esse procedimento não é o indicado, persistindo a perda de sangue. Acarretando óbito ao paciente.', 3), -- 53
('Paciente irresponsivo.', 3), -- 54
('Constatado PCR.', 3), -- 55
('VOCÊ FALHOU! Em pacientes adultos é recomendado realizar 5 ciclos de 30 compressões e 2 ventilações por ciclo e aplicar o DEA.', 3), -- 56
('Utilizou-se o DEA, aplicou-se o choque, reiniciou-se a RCP e reavaliou-se o rítmo. Houve RCE, sendo iniciado os cuidados pós parada.', 3), -- 57
('VOCÊ FALHOU! Após a aplicação do torniquete, o mesmo só poderá ser retirado no ambiente hospitalar.', 3), -- 58
('Dentro da ambulância, foi verificado SSVV. Exposição do paciente e limpeza das queimaduras com soro fisiológico e curativo da região torácica.', 3), -- 59
('VOCÊ FALHOU! Pacientes vítimas de trauma grave é indicado o uso da manta térmica para o controle de hipotermia.', 3), -- 60
('Parabéns! Você realizou todos os procedimentos e encaminhou o paciente para um hospital de referencia.', 3), -- 61
('Foi colocado torniquete proximal ao corpo.', 3), -- 62
('VOCÊ FALHOU! Você não ofertou soro para a perda de sangue e nem tratou as queimaduras. O paciente não resistiu durante o transporte.', 3), -- 63
('Foi ofertado de 1000 a 1500 ml de soro cristaloide', 3), -- 64
('VOCÊ FALHOU! Esta conduta não é a mais apropriada para o atendimento atrasando os procedimentos necessários e prejudicando o paciente', 3), -- 65
('Foi ofertado suplementação de oxigênio com máscara não reinalante com reservatório de 10 a 12 l/min.', 3), -- 66
('Abordagem inicial e contenção de hemorragia', 3), -- 67
('Qual tipo de torniquete?', 3), -- 68
('VOCÊ FALHOU! Ao se colocar o torniquete em região mais distal do corpo, você poderá prejudicar lesões não vistas.', 3), -- 69
('Você evitou prejudicar algumas lesões não vistas', 3), -- 70
('VOCÊ FALHOU! O ideal é deixa-lo durante 120 a 150 minutos.', 3), -- 71
('Foi realizado o procedimento com sucessoe a hemorragia foi contida. As vias áreas estão pervias e não há necessidade de colocar o colar cervical.', 3), -- 72
('VOCÊ FALHOU! O ideal é utilizar e ofertar máscara reinalante com reservatório de 10 a 12 l/min. É contraindicado a cânula de Guedel em pacientes conscientes, pois poderá estimular o reflexo de vômito.', 3), -- 73
('Foi ofertada suplementação de oxigênio com máscara não reinalante com reservatório de 10  a 12 l/min.', 3), -- 74
('VOCÊ FALHOU! Esta conduta não é a prioridade para esteatendimento, tendo em vista a hipovolemia apresentada. O ideal seria a oferta de soro cristaloide.', 3), -- 75
('Você colocou o paciente na ambulância. Não foram encontradas alterações referentes a esses 3 aspectos. O paciente encontra-se nervoso e cooperativo. Havia pequenas queimaduras no tórax do paciente.', 3), -- 76
('VOCÊ FALHOU! Após a aplicação do torniquete, o mesmo só poderá ser retirado no ambiente hospitalar.', 3), -- 77
('Foi verificado SSVV. Exposição do paciente e limpeza das queimaduras com soro fisiológico e curativo da região torácica.', 3), -- 78
('VOCÊ FALHOU! Pacientes vítimas de trauma grave é indicado o uso da manta térmica para o controle de hipotermia.', 3), -- 79
('Parabéns! Você realizou todos os procedimentos e encaminhou o paciente para um hospital de referencia.', 3); -- 80
  

insert into `Option`(descricao, valor, situacao) values 
('Continuar.',true, 3), -- 48
('Abordagem inicial e contenção de hemorragia.',true, 3), -- 49
('Abordagem inicial e imobilização do membro.',false, 3), -- 50
('Colocar torniquete proximal ao corpo.',true, 3), -- 51
('Ofertar de 1 a 2 l de soro cristaloide.',false, 3), -- 52
('Checar responsividade.', true, 3), -- 53
('imobilização do membro com tala',false, 3 ), -- 54
('Checar pulso e respiração durante 10 seg. E colocar o torniquete',true, 3), -- 55
('Iniciar imediatamente as compressões.',false, 3), -- 56
('Iniciar RCP com 5 ciclos de 30 compressões e duas ventilações por ciclo e utiliza o DEA',true, 3), -- 57
('Iniciar RCP imediatamente com 5 ciclos de 40 compressões e 2 ventilações por ciclo',false, 3), -- 58
('Dentro da ambulância, foi verificado SSVV. Exposição do paciente e  limpeza das queimaduras com soro fisiológico e curativo da região torácica.',true, 3), -- 59
('Durante o transporte, você verifica o sangramento abrindo o torniquete e fixa-o novamente.', false, 3), -- 60
('Cobrir o paciente com manta térmica e encaminhar para um hospital de referência', true, 3), -- 61
('Não utilizar a manta térmica pois causa atrito e machuca o paciente e encaminhá-lo diretamente ao hospital.',false, 3), -- 62  
('Ofertar de 1000 a 1500 ml de soro cristaloide',true, 3), -- 63
('Cobrir ao paciente com manta térmica e encaminha-lo a um hospital de referência',false, 3), -- 64
('Ofertar suplementação de oxigênio com máscara não reinalante com reservatório de 10 a 12 l/min.',true, 3), -- 65
('Verificar PA.',false, 3), -- 66
('Torniquete', true, 3), -- 67
('Curativo compressivo',false, 3), -- 68
('Proximal', true, 3), -- 69
('Distal', false, 3), -- 70
('Após, cessar o sangramento, identificar o horário de aplicação do torniquete. Deixar por 120 a 150 minutos.',true, 3), -- 71
('Após, cessar o sangramento, identificar o horário de aplicação do torniquete. Deixar por 160 a 180 minutos',false, 3), -- 72
('Ofertar suplementação de oxigênio com máscara não reinalante com reservatório de 10  a 12 l/min.',true, 3), -- 73
('Ofertar suplementação de oxigênio com cateter nasal a 6 l/min utilizando juntamente a  cânula de Guedel.',false, 3), -- 74
('Checar pulso, perfusão e pele. E ofertar de 1000 a 1500 ml de soro cristaloide.',true, 3), -- 75
('Verificar PA',false, 3), -- 76
('Verificado SSVV. Exposição do paciente e limpeza das queimaduras com soro fisiológico e curativo da região torácica.',true, 3), -- 77
('Durante o transporte, você verifica o  sangramento abrindo o torniquete e fixa-o novamente.',false, 3), -- 78
('Cobrir o paciente com manta térmica e encaminhar para um hospital de referência.',true, 3), -- 79
('Não utilizar a manta térmica pois causa atrito e machuca o paciente e encaminhá-lo diretamente ao hospital.',false, 3); -- 80

insert into `lisdbd`.`Option_has_Situacao`(`Situacao_idSituation`,`Option_idOption`) values
('49','48','1'), -- 1 (a:1, b:1)
('50','48','0'), -- 2 (chamada pela 1) (a:2, b:3)
('50','49','1'),
('50','50','1'),
('51','49','0'), -- 3 (chamada pela 2) (a:4, b:5)
('51','68','0'), -- 3 (chamada pela 21) (a:4, b:5)
('51','51','1'),
('51','52','1'),
('52','52','0'), -- 4 (chamada pela 5) (a:6, b:7)
('52','53','1'),
('52','54','1'),
('53','54','0'), -- f -- 5 (chamada pela 7)
('53','56','0'), -- f -- 5 (chamada pela 9)
('54','53','0'), -- 6 (chamada pela 6) (a:8, b:9)
('54','55','1'),
('54','56','1'),
('55','55','0'), -- 7 (chamada pela 8) (a:10, b:11)
('55','57','1'),
('55','58','1'),
('56','58','0'), -- f -- 8  (chamada pela 11)
('57','57','0'), -- 9 (chamada pela 10) (a:12, b:13)
('57','59','1'),
('57','60','1'),
('58','60','0'), -- f -- 10 (chamada pela 13)
('59','59','0'), -- 11 (chamada pela 12) (a:14, b:15)
('59','61','1'),
('59','62','1'),
('60','62','0'), -- f -- 12 (chamada pela 15)
('61','61','0'), -- f -- 13 (chamada pela 14)
('62','51','0'), -- 14  (chamada pela 4) (a:16, b:17)
('62','63','1'),
('62','64','1'),
('63','64','0'), -- f -- 15 (chamada pela 17)
('64','63','0'), -- 16 (chamada pela 16) (a:18, b:19)
('64','65','1'),
('64','66','1'),
('65','66','0'), -- f -- 17 (chamada pela 19)
('66','65','0'), -- 18 (chamada pela 18) (a:12, b:13)
('66','59','1'),
('66','60','1'),
('67','50','0'), -- 19 (chamada pela 3) (a:21, b:27)
('67','68','1'),
('67','67','1'),
('68','67','0'), -- 20 (chamada pela 20) (a:22, b:23)
('68','69','1'),
('68','70','1'),
('69','70','0'), -- f -- 21 (chamada pela 23)
('70','69','0'), -- 22 (chamada pela 22) (a:24, b:25)
('70','71','1'), 
('70','72','1'),
('71','72','0'), -- f -- 23 (chamada pela 25)
('72','71','0'), -- 24 (chamada pela 24) (a:26, b:27)
('72','73','1'),
('72','74','1'),
('73','74','0'), -- f -- 25 (chamada pela 27)
('74','73','0'), -- 26 (chamada pela 26) (a:28, b:29)
('74','75','1'),
('74','76','1'),
('75','76','0'), -- f -- 27 (chamada pela 29)
('76','75','0'), -- 28 (chamada pela 28) (a:30, b:31)
('76','77','1'),
('76','78','1'),
('77','78','0'), -- f -- 29 (chamada pela 31)
('78','77','0'), -- 30 (chamada pela 30) (a:32, b:33)
('78','79','1'),
('78','80','1'),
('79','80','0'), -- f -- 31 (chamada pela 33)
('80','79','0'); -- f -- 32 (chamada pela 32)