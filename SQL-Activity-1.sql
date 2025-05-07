CREATE DATABASE sistemaReserva
USE sistemaReserva

CREATE TABLE Hotel (
    id_hotel INT,
    nome VARCHAR(100),
    endereco VARCHAR(100),
    telefone VARCHAR(15)
);

CREATE TABLE Hospede (
    id_hospede INT,
    nome VARCHAR(50),
    cpf VARCHAR(14),
    data_nascimento DATE,
    telefone VARCHAR(15)
);

CREATE TABLE Funcionario (
    id_funcionario INT,
    nome VARCHAR(50),
    cargo VARCHAR(50),
    salario DECIMAL(10,2),
    telefone VARCHAR(15)
);

CREATE TABLE Conta (
    id_conta INT,
    id_hospede INT,
    id_quarto INT,
    total DECIMAL(10,2),
    data_entrada DATE,
    data_saida DATE
);

CREATE TABLE Quarto (
    id_quarto INT,
    numero INT,
    tipo VARCHAR(50),
    preco_diaria DECIMAL(10,2),
    disponivel VARCHAR(5)
);

CREATE TABLE Reserva (
    id_reserva INT,
    id_hospede INT,
    id_quarto INT,
    data_reserva DATE,
    data_checkin DATE,
    data_checkout DATE
);
  
INSERT INTO Hotel (id_hotel, nome, endereco, telefone)
VALUES
    (1, 'Hotel Lux', 'Rua das Flores, 123', '(11) 98765-4321'),
    (2, 'Pousada Sol', 'Avenida Principal, 456', '(22) 22222-2222'),
    (3, 'Hotel Frente ao Mar', 'Rua das Mangabeiras, 109', '(33) 33333-3333'),
    (4, 'Hotel Caravelle', 'Rua Central, 489', '(44) 44444-4444'),
    (5, 'Pousa da Rosa', 'Rua das Águas, 330', '(55) 55555-5555');

INSERT INTO Hospede (id_hospede, nome, cpf, data_nascimento, telefone)
VALUES
    (1, 'Maria Silva', '123.456.789-10', '05/15/1990', '(11) 11111-1111'),
    (2, 'José Santos', '987.654.321-00', '08/20/1985', '(22) 22222-2222'),
    (3, 'Aurora Costa', '499.628.992-03', '08/22/2001', '(10) 10001-1001'),
    (4, 'Matheus Dias', '500.429.528-12', '09/21/2001', '(11) 12321-1221'),
    (5, 'Andrea Silvia', '789.539.871-24', '10/26/1992', '(22) 21012-2112');
    
INSERT INTO Funcionario (id_funcionario, nome, cargo, salario, telefone)
VALUES
    (1, 'Ana Oliveira', 'Recepcionista', 2500.00, '(11) 33333-3333'),
    (2, 'Carlos Souza', 'Faxineiro', 1000.00, '(22) 44444-4444'),
    (3, 'Felipe Moreira', 'Camareiro', 1500.00, '(11) 33333-4444'),
    (4, 'Manoel Mario', 'Recepcionista', 2500.00, '(11) 33333-5555'),
    (5, 'Carmen Rodrigues', 'Gerente', 5000.00, '(22) 44444-6666');

INSERT INTO Quarto (id_quarto, numero, tipo, preco_diaria, disponivel)
VALUES
    (1, 101, 'Standard', 100.00, 'Sim'),
    (2, 201, 'Luxo', 200.00, 'Sim'),
    (3, 301, 'Suíte', 300.00, 'Não'),
    (4, 401, 'Standard', 100.00, 'Não'),
    (5, 501, 'Suíte', 300.00, 'Sim');

INSERT INTO Reserva (id_reserva, id_hospede, id_quarto, data_reserva, data_checkin, data_checkout)
VALUES
    (1, 1, 1, '05/01/2024', '05/10/2024', '05/15/2024'),
    (2, 2, 2, '06/01/2024', '06/10/2024', '06/15/2024'),
    (3, 3, 3, '07/01/2024', '07/10/2024', '07/15/2024'),
    (4, 4, 4, '08/01/2024', '08/10/2024', '08/15/2024'),
    (5, 5, 5, '09/01/2024', '09/10/2024', '09/15/2024');

INSERT INTO Conta (id_conta, id_hospede, id_quarto, total, data_entrada, data_saida)
VALUES
    (1, 1, 1, 500.00, '05/10/2024', '05/15/2024'),
    (2, 2, 2, 800.00, '06/10/2024', '06/15/2024'),
    (3, 3, 3, 400.00, '07/10/2024', '07/15/2024'),
    (4, 4, 4, 600.00, '08/10/2024', '08/15/2024'),
    (5, 5, 5, 500.00, '09/10/2024', '09/15/2024');