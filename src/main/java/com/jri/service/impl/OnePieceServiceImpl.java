package com.jri.service.impl;

import com.jri.dao.OnepieceDao;
import com.jri.entity.Onepiece;
import com.jri.service.OnePieceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Demo class
 *
 * @author hijri
 * @version V9.10
 * @date 2021/10/11
 */

@Service
public class OnePieceServiceImpl implements OnePieceService {

    @Autowired
    private OnepieceDao onepieceDao;

    @Override
    public List<Onepiece> queryOnepieces() {
        List<Onepiece> onepieces = onepieceDao.selectOnpieces();
        return onepieces;
    }

    /**
     * 删除
     * @param id
     * @return
     */
    @Override
    public Integer removepieceById(Integer id) {
        int ret = onepieceDao.deleteByPrimaryKey(id);

        return ret;
    }


}
