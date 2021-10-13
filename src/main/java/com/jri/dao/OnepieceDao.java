package com.jri.dao;

import com.jri.entity.Onepiece;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface OnepieceDao {
    int deleteByPrimaryKey(Integer id);

    int insert(Onepiece record);

    int insertSelective(Onepiece record);

    Onepiece selectByPrimaryKey(Integer id);

    List<Onepiece> selectOnpieces();

    int updateByPrimaryKeySelective(Onepiece record);

    int updateByPrimaryKey(Onepiece record);
}