package com.spring.springajaxintegration.business.service;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.spring.springajaxintegration.persistence.model.StateEntity;
import com.spring.springajaxintegration.persistence.repository.StateRepository;

@Service
public class StateService {

	@PersistenceContext(unitName = "hibernatePersistenceUnit")
	private EntityManager entityManager;
	
	@Autowired
	private StateRepository stateRepository;
	
	@Transactional(readOnly = true, rollbackFor = Exception.class)
	public List<StateEntity> getAllStates() {
		return stateRepository.getAllStates();
	}
}