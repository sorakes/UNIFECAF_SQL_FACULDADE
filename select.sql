SELECT * FROM registros;

SELECT * FROM telefone;








SELECT alunos.id_aluno, alunos.ra, registros.nome AS nome_registro
FROM alunos
JOIN registros ON alunos.id_aluno = registros.id_registro;


SELECT professores.id_professor, professores.materias, registros.nome AS nome_registro
FROM professores
JOIN registros ON professores.id_professor = registros.id_registro;


SELECT 
    a.id_aluno,
    r.nome AS nome_aluno,
    n.id_nota,
    n.materia,
    n.valor_nota
FROM 
    alunos a
JOIN 
    recebem_alunos ra ON a.id_aluno = ra.fk_alunos_id_aluno
JOIN 
    notas n ON ra.fk_notas_id_nota = n.id_nota
JOIN 
    registros r ON a.id_aluno = r.id_registro;


