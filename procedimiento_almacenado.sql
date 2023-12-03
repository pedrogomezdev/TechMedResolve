CREATE PROCEDURE sp_ModificarEstaActivo
AS
BEGIN
    UPDATE TMRA_Maquina
    SET esta_activo = 'false'
    WHERE estado = 'Baja';
END;
