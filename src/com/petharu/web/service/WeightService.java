package com.petharu.web.service;

import java.util.List;

import com.petharu.web.entity.Weight;

public interface WeightService {
	List<Weight> getList();
	Weight get(int id); //id로 해당 데이터 가져옴
	int insert(Weight weight);
	int update(Weight weight);
	int delete(int id);
}
