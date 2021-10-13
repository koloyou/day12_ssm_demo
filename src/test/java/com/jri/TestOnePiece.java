package com.jri;

import com.jri.dao.OnepieceDao;
import com.jri.entity.Onepiece;
import com.jri.service.OnePieceService;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.io.IOException;
import java.util.List;

/**
 * Demo class
 *
 * @author hijri
 * @version V9.10
 * @date 2021/10/11
 */

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:applicationContext.xml")

public class TestOnePiece {

    /**
     * 测试Mybatis
     * @throws IOException
     */
    @Test
    public void getOnePiece() throws IOException {
        SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(Resources.getResourceAsStream("mybatis-config.xml"));
        SqlSession sqlSession = sqlSessionFactory.openSession();
        OnepieceDao onepiecedao = sqlSession.getMapper(OnepieceDao.class);

        List<Onepiece> onepieces = onepiecedao.selectOnpieces();

        onepieces.forEach(System.out::println);


    }

    /**
     * 测试Spring+MyBatis
     */
    @Test
    public void getOnePiece02(){
        ClassPathXmlApplicationContext ioc = new ClassPathXmlApplicationContext("applicationContext.xml");
        OnePieceService onepieceService = ioc.getBean(OnePieceService.class);
        List<Onepiece> onepieces = onepieceService.queryOnepieces();
        onepieces.forEach(System.out::println);

    }

    /**
     * 测试Spring+MyBatis+Junit
     */
    @Autowired
    private OnePieceService onePieceService;
    @Test
    public void getOnePiece03(){
        List<Onepiece> onepieces = onePieceService.queryOnepieces();
        onepieces.forEach(System.out::println);
    }
}
