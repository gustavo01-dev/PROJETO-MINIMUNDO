----------------------------------------------------------
-- FIGHTLAB - SCRIPT DE INSERÇÃO DE DADOS (INSERT)
----------------------------------------------------------

-- TREINADORES
INSERT INTO treinador (nome, especialidade, certificacoes, telefone, email, created_at)
VALUES
('Carlos Medeiros', 'Boxe', 'Nível Internacional A', '85988880001', 'carlos.medeiros@fightlab.com', NOW()),
('Rafael Tavares', 'Jiu-Jitsu', 'Faixa Preta 3º Grau', '85988880002', 'rafael.tavares@fightlab.com', NOW()),
('Marina Albuquerque', 'Muay Thai', 'Instrutora Avançada', '85988880003', 'marina.albuquerque@fightlab.com', NOW());

----------------------------------------------------------

-- ATLETAS
INSERT INTO atleta (nome, data_nascimento, sexo, peso_kg, altura_cm, categoria_peso, telefone, email, created_at)
VALUES
('Gustavo Silva', '2002-09-10', 'M', 67.0, 169.0, 'Leve', '85999980101', 'gustavo.silva@fightlab.com', NOW()),
('João Oliveira', '1999-03-21', 'M', 72.5, 178.0, 'Meio-Médio', '85999980102', 'joao.oliveira@fightlab.com', NOW()),
('Luana Torres', '2000-11-02', 'F', 58.0, 162.0, 'Pena', '85999980103', 'luana.torres@fightlab.com', NOW());

----------------------------------------------------------

-- AULAS/TURMAS
INSERT INTO aula_turma (modalidade, descricao, horario_inicio, horario_fim, dia_semana, limite_vagas, treinador_id, local, created_at)
VALUES
('Boxe', 'Treino técnico de boxe avançado', '18:00', '19:00', 'Segunda', 15, 1, 'Sala 1', NOW()),
('Jiu-Jitsu', 'Fundamentos e rola livre', '19:00', '20:30', 'Quarta', 20, 2, 'Tatame 2', NOW()),
('Muay Thai', 'Clinchs e chutes avançados', '20:00', '21:00', 'Sexta', 18, 3, 'Sala 3', NOW());

----------------------------------------------------------

-- PRESENÇAS EM AULA
INSERT INTO presenca_aula (aula_id, atleta_id, reservado_em, status_reserva, created_at)
VALUES
(1, 1, NOW(), 'confirmado', NOW()),
(1, 2, NOW(), 'confirmado', NOW()),
(2, 3, NOW(), 'reservado', NOW());

----------------------------------------------------------

-- SESSÕES DE TREINO
INSERT INTO sessao_treino (data, hora_inicio, hora_fim, descricao, treinador_id, local, is_privada, created_at)
VALUES
('2025-01-12', '17:00', '18:00', 'Treino de força e explosão', 1, 'Sala 1', FALSE, NOW()),
('2025-01-13', '18:00', '19:30', 'Sparring controlado', 1, 'Ringue', TRUE, NOW());

----------------------------------------------------------

-- PARTICIPANTES DA SESSÃO
INSERT INTO sessao_participante (sessao_id, atleta_id, duracao_participacao_min, exercicios_realizados, repeticoes_total, carga_max_kg, observacoes_tecnicas, nota_avaliacao, created_at)
VALUES
(1, 1, 60, 'Agachamento, supino, corda naval', 120, 110, 'Boa estabilidade e controle', 9, NOW()),
(1, 2, 60, 'Agachamento, supino, corda naval', 100, 90, 'Precisa melhorar a postura', 7, NOW());

----------------------------------------------------------

-- VÍDEOS DE TREINO
INSERT INTO video_treino (atleta_id, sessao_id, nome_arquivo, caminho_arquivo, duracao_segundos, formato, tamanho_bytes, descricao, data_upload, visibilidade)
VALUES
(1, 1, 'sparring_gustavo.mp4', '/videos/2025/sparring_gustavo.mp4', 140, 'mp4', 120340000, 'Sparring técnico de boxe', NOW(), 'privado'),
(2, 1, 'treino_joao_bag.mp4', '/videos/2025/treino_joao_bag.mp4', 95, 'mp4', 93480000, 'Trabalho de potência no saco pesado', NOW(), 'publico');

----------------------------------------------------------

-- FEEDBACKS DE VÍDEO
INSERT INTO feedback_video (video_id, treinador_id, comentario, timestamp_segundos, data_feedback)
VALUES
(1, 1, 'Bom uso da mão da frente para controlar distância.', 35, NOW()),
(1, 1, 'Melhorar defesa do overhand.', 82, NOW());

----------------------------------------------------------

-- TÉCNICAS
INSERT INTO tecnica (nome_tecnica, descricao)
VALUES
('Jab', 'Golpe rápido com a mão da frente'),
('Direto', 'Golpe potente com a mão de trás'),
('Low Kick', 'Chute baixo direcionado à perna');

----------------------------------------------------------

-- ASSOCIAÇÕES VÍDEO → TÉCNICA
INSERT INTO video_tecnica (video_id, tecnica_id, observacao)
VALUES
(1, 1, 'Execução limpa e precisa'),
(1, 2, 'Boa potência, mas queda de ombro perceptível');

----------------------------------------------------------

-- EXAMES
INSERT INTO exame (atleta_id, tipo_exame, resultado_texto, valor_numerico, unidade, data_exame, observacoes)
VALUES
(1, 'Avaliação Cardíaca', 'Normal', NULL, NULL, '2025-01-05', 'Sem restrições'),
(2, 'Hemograma', 'Dentro dos parâmetros', NULL, NULL, '2025-01-08', 'Liberado para treinos intensos');
