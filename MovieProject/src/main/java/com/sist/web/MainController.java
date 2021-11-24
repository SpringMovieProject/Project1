package com.sist.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import com.sist.dao.*;
import java.util.*;
import com.sist.vo.*;

@Controller
public class MainController {

   @Autowired
   private MovieDAO dao;
   
   @RequestMapping("main/main.do")
   public String main_main(Model model)
   {
	   List<MovieVO> list=dao.movieMainListData();
	   model.addAttribute("list",list);
	   model.addAttribute("main_jsp", "../main/home.jsp");
	   return "main/main";
   }

}
