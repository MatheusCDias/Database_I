CREATE DATABASE prova
USE prova

CREATE TABLE LinhasAereas (
    id INT PRIMARY KEY IDENTITY (1,1),
    nome VARCHAR(100),
    voos_internacionais VARCHAR(3),
    numero_aeronaves INT
);

CREATE TABLE Midias (
    id INT PRIMARY KEY IDENTITY (1,1),
    titulo VARCHAR(255),
    sinopse TEXT,
    tipo VARCHAR(10),
    data_estreia DATE,
    genero VARCHAR(50),
    classificacao VARCHAR(10),
    pais_origem VARCHAR(50),
    direcao VARCHAR(100),
    duracao INT,
    temporada INT,
    episodio INT,
    avaliacao DECIMAL(3, 2),
    linha_aerea_id INT,
    FOREIGN KEY (linha_aerea_id) REFERENCES LinhasAereas(id)
);

INSERT INTO LinhasAereas (nome, voos_internacionais, numero_aeronaves) VALUES
('Companhia Um', 'Sim', 150),
('Companhia Dois', 'N�o', 75);

INSERT INTO Midias (titulo, sinopse, tipo, data_estreia, genero, classificacao, pais_origem, direcao, duracao, temporada, episodio, avaliacao, linha_aerea_id) VALUES
('Harry Potter 1', 'Um menino descobre que é um bruxo.', 'Filme', '05/03/2001', 'Fantasia', 'L', 'ING', 'Igor', 120, NULL, NULL, 6.7, 1),
('The Walking Dead', 'Uma galera foge de zumbis.', 'Série', '21/09/2001', 'Apocalipse', '18', 'USA', 'Matheus', 3300, 11, 110, 7.8, 2),
('Harry Potter 2', 'Um menino treina sua magia contra um Basilisco', 'Filme', '05/04/2002', 'Fantasia', 'L', 'ING', 'Igor', 120, NULL, NULL, 6.9, 1),
('Breaking Bad', 'Um professor público, sem salário, vende drogas para pagar o tratamento do câncer.', 'Série', '11/08/2004', 'Ficção científica', '18', 'USA', 'Rayner', 1500, 5, 50, 9.9, 2),
('Harry Potter 3', 'Um menino foge de seu padrinho que escapou da prisão.', 'Filme', '05/05/2003', 'Fantasia', 'L', 'ING', 'Igor', 120, NULL, NULL, 9.8, 1),
('Harry Potter 4', 'Um menino disputa um torneio pelo cálice de fogo.', 'Filme', '05/06/2004', 'Fantasia', 'L', 'ING', 'Igor', 120, NULL, NULL, 8.3, 1),
('Harry Potter 5', 'Um menino muito doido entra para a ordem da Fénix.', 'Filme', '05/07/2005', 'Fantasia', 'L', 'ING', 'Igor', 120, NULL, NULL, 8.7, 1),
('Harry Potter 6', 'Um menino vê o seu diretor morrer.', 'Filme', '05/08/2006', 'Fantasia', '14', 'ING', 'Igor', 120, NULL, NULL, 9.3, 1),
('Harry Potter 7: Parte Um', 'Um menino tenta destruir as Horcruxs.', 'Filme', '05/09/2007', 'Fantasia', '14', 'ING', 'Igor', 120, NULL, NULL, 9, 1),
('Harry Potter 7: Parte Dois', 'Um menino consegue destruir as Horcruxs.', 'Filme', '05/10/2008', 'Fantasia', '14', 'ING', 'Igor', 120, NULL, NULL, 9.5, 1);

SELECT * FROM LinhasAereas;
SELECT * FROM Midias;