INSERT INTO webapp.tb_grupo(id_grupo,
                             ds_nome,
                             ds_descricao) 
                      VALUES(1,
                              'ADMINISTRADORES', 
                              'Adminitrador');

INSERT INTO webapp.tb_grupo(id_grupo,
                             ds_nome,
                             ds_descricao) 
                      VALUES(2,
                              'USUARIOS', 
                              'Usuários Comum');

INSERT INTO webapp.tb_grupo(id_grupo,
                             ds_nome,
                             ds_descricao) 
                      VALUES(3,
                              'BACKOFFICE', 
                              'Backoffice - Cadastros');


                              
INSERT INTO webapp.tb_usuario (id_usuario,
                                ds_nome,
                                ds_login,
                                ds_senha,
                                fl_ativo)
                        VALUES(1,
                                'Cícero Ednilson',
                                'cicero',
                                '$2a$10$YYe9VtFGZoWvrNSZNV/AeuVSTOMQLxcGia4IQEl/yVaxrfAnPDcuO',
                                 1);
                                 
                                 

INSERT INTO webapp.tb_permissao(id_permissao,
                                  ds_permissao,
                                  ds_descricao)
                           VALUES(1,
                                   'ROLE_CADASTROUSUARIO',
                                   'CADASTRO DE NOVOS USUÁRIOS');
                                   
INSERT INTO webapp.tb_permissao(id_permissao,
                                  ds_permissao,
                                  ds_descricao)
                           VALUES(2,
                                   'ROLE_CONSULTAUSUARIO',
                                   'CONSULTA DE USUÁRIOS');                                   

INSERT INTO webapp.tb_permissao(id_permissao,
                                  ds_permissao,
                                  ds_descricao)
                           VALUES(3,
                                   'ROLE_ADMIN',
                                   'ADMINISTRAÇÂO COMPLETA');                                   


INSERT INTO webapp.tb_usuario_x_grupo(id_usuario,id_grupo)VALUES(1,1);



/*ROLE_CADASTROUSUARIO x BACKOFFICE*/
INSERT INTO webapp.tb_permissao_x_grupo(id_permissao,id_grupo)VALUES(1,3); 

/*ROLE_CONSULTAUSUARIO x USUARIOS*/
INSERT INTO webapp.tb_permissao_x_grupo(id_permissao,id_grupo)VALUES(2,2);

/*ROLE_ADMIN x ADMINISTRADORES*/
INSERT INTO webapp.tb_permissao_x_grupo(id_permissao,id_grupo)VALUES(3,1);




SELECT
  TB_PERMISSAO_X_GRUPO.ID_PERMISSAO,
  TB_PERMISSAO.DS_PERMISSAO,
  TB_PERMISSAO.DS_DESCRICAO,
  TB_PERMISSAO_X_GRUPO.ID_GRUPO,
  TB_GRUPO.DS_NOME
FROM
  TB_PERMISSAO_X_GRUPO TB_PERMISSAO_X_GRUPO
INNER JOIN  TB_GRUPO TB_GRUPO ON  TB_GRUPO.ID_GRUPO = TB_PERMISSAO_X_GRUPO.ID_GRUPO 
INNER JOIN  TB_PERMISSAO TB_PERMISSAO ON TB_PERMISSAO.ID_PERMISSAO  = TB_PERMISSAO_X_GRUPO.ID_PERMISSAO;