UPDATE Paciente
SET telefone = '8399000-0000'
WHERE id_paciente = 1;

UPDATE Prontuario
SET diagnostico = 'Angina estável'
WHERE id_prontuario = 1;

UPDATE Medico
SET id_especialidade = 3
WHERE id_medico = 2;
