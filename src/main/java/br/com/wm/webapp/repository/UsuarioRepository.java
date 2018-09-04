package br.com.wm.webapp.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import br.com.wm.webapp.entity.UsuarioEntity;

public interface UsuarioRepository extends JpaRepository<UsuarioEntity, Long> {

	UsuarioEntity findByLogin(String login);
	
}
