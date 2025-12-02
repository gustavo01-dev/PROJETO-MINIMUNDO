----------------------------------------------------------
-- COMANDOS DELETE
----------------------------------------------------------

-- 1. Remover presença incorreta
DELETE FROM presenca_aula
WHERE presenca_id = 3;

----------------------------------------------------------

-- 2. Excluir feedback específico
DELETE FROM feedback_video
WHERE feedback_id = 2;

----------------------------------------------------------

-- 3. Remover técnica não utilizada
DELETE FROM tecnica
WHERE tecnica_id = 3
AND tecnica_id NOT IN (SELECT tecnica_id FROM video_tecnica);
