----------------------------------------------------------
-- CONSULTAS SQL (SELECT)
----------------------------------------------------------

-- 1. Lista de atletas por ordem alfabética
SELECT nome, categoria_peso, peso_kg, altura_cm
FROM atleta
ORDER BY nome ASC;

----------------------------------------------------------

-- 2. Aulas e os respectivos treinadores responsáveis
SELECT a.aula_id, a.modalidade, t.nome AS treinador
FROM aula_turma a
JOIN treinador t ON t.treinador_id = a.treinador_id;

----------------------------------------------------------

-- 3. Ranking de desempenho com carga máxima e repetições
SELECT at.nome AS atleta, sp.repeticoes_total, sp.carga_max_kg, sp.nota_avaliacao
FROM sessao_participante sp
JOIN atleta at ON at.atleta_id = sp.atleta_id
ORDER BY sp.carga_max_kg DESC
LIMIT 10;

----------------------------------------------------------

-- 4. Vídeos e feedbacks associados
SELECT v.nome_arquivo, f.comentario, f.timestamp_segundos, t.nome AS treinador
FROM feedback_video f
JOIN video_treino v ON v.video_id = f.video_id
JOIN treinador t ON t.treinador_id = f.treinador_id
ORDER BY f.timestamp_segundos ASC;

----------------------------------------------------------

-- 5. Histórico de exames por atleta
SELECT a.nome AS atleta, e.tipo_exame, e.data_exame, e.resultado_texto
FROM exame e
JOIN atleta a ON a.atleta_id = e.atleta_id
ORDER BY e.data_exame DESC;
