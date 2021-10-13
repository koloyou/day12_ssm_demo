package com.jri.service;

import com.jri.entity.Onepiece;
import org.apache.ibatis.annotations.Insert;

import java.util.List;

/**
 * Demo class
 *
 * @author hijri
 * @version V9.10
 * @date 2021/10/11
 */
public interface OnePieceService {

    List<Onepiece> queryOnepieces();

    Integer removepieceById(Integer id);


}
