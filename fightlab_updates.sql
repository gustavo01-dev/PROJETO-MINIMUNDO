----------------------------------------------------------
-- COMANDOS UPDATE
----------------------------------------------------------

-- 1. Atualizar peso e categoria de um atleta
UPDATE atleta
SET peso_kg = 69.5, categoria_peso = 'Leve'
WHERE atleta_id = 1;

----------------------------------------------------------

-- 2. Alterar status de reserva e registrar check-in
UPDATE presenca_aula
SET status_reserva = 'presente', checkin_time = NOW()
WHERE presenca_id = 1;

----------------------------------------------------------

-- 3. Ajustar descrição de uma técnica
UPDATE tecnica
SET descricao = 'Golpe básico de entrada'
WHERE tecnica_id = 1;
