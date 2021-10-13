package com.jri.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.jri.entity.Onepiece;
import com.jri.service.OnePieceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpSession;
import javax.xml.ws.RequestWrapper;
import java.util.List;

/**
 * Demo class
 *
 * @author hijri
 * @version V9.10
 * @date 2021/10/11
 */
@Controller
@RequestMapping("/piece")
public class OnePieceController {

    @Autowired
    private OnePieceService onePieceService;

    @RequestMapping("/pieces")
    @ResponseBody
    public List<Onepiece> getOnePieces(){
        List<Onepiece> onepieces = onePieceService.queryOnepieces();
        return onepieces;
    }

    @RequestMapping("/pieceList")
    public String getPieceList(HttpSession session){
        List<Onepiece> onepieces = onePieceService.queryOnepieces();
        session.setAttribute("onepieces",onepieces);
        return "piece";
    }

    @RequestMapping("/piecePage")
    public String getPieceByPage(HttpSession session,Integer pageNo){
        pageNo = pageNo ==null ? 1:pageNo;
        PageHelper.startPage(pageNo,5);
        List<Onepiece> onepieces = onePieceService.queryOnepieces();

        PageInfo pageInfo = new PageInfo(onepieces);

        session.setAttribute("pageInfo",pageInfo);
        return "piecePage";
    }


    @RequestMapping("/removepieceById")
    public String removepieceById(Integer id){

        Integer ret = onePieceService.removepieceById(id);
        return "redirect:piecePage";
    }


}
