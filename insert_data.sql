INSERT INTO Especialidade (nome_especialidade)
VALUES ('Cardiologia'), ('Pediatria'), ('Dermatologia');

INSERT INTO Medico (nome, crm, telefone, id_especialidade)
VALUES ('Dra. Ana Lima', '12345-PB', '8399999-1111', 1),
       ('Dr. Carlos Souza', '67890-PB', '8398888-2222', 2);

INSERT INTO Paciente (nome, cpf, data_nascimento, telefone, endereco)
VALUES ('João Silva', '111.222.333-44', '1990-05-10', '8399999-3333', 'Rua A, 100'),
       ('Maria Santos', '555.666.777-88', '1985-03-22', '8399999-4444', 'Rua B, 200');

INSERT INTO Consulta (data_consulta, horario, motivo, id_paciente, id_medico)
VALUES ('2025-02-10', '14:00', 'Dor no peito', 1, 1),
       ('2025-02-12', '09:30', 'Check-up infantil', 2, 2);

INSERT INTO Prontuario (descricao, diagnostico, conduta, id_consulta)
VALUES ('Paciente com dor torácica', 'Possível angina', 'Solicitar ECG', 1),
       ('Rotina pediátrica', 'Saudável', 'Acompanhamento anual', 2);

INSERT INTO ExameSolicitado (nome_exame, justificativa, id_consulta)
VALUES ('ECG', 'Dor no peito', 1),
       ('Hemograma', 'Check-up', 2);
