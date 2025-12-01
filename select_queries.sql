SELECT p.nome AS paciente, c.data_consulta, c.motivo
FROM Paciente p
JOIN Consulta c ON p.id_paciente = c.id_paciente;

SELECT c.id_consulta, c.data_consulta, m.nome AS medico, e.nome_especialidade
FROM Consulta c
JOIN Medico m ON c.id_medico = m.id_medico
JOIN Especialidade e ON m.id_especialidade = e.id_especialidade;

SELECT c.id_consulta, e.nome_exame, e.justificativa
FROM ExameSolicitado e
JOIN Consulta c ON c.id_consulta = e.id_consulta;

SELECT * FROM Paciente
WHERE nome LIKE '%Maria%';

SELECT * FROM Medico ORDER BY nome ASC;
