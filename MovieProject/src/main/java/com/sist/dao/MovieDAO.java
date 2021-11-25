package com.sist.dao;
import java.util.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.sist.mapper.*;
import com.sist.vo.*;

@Repository
public class MovieDAO {
	@Autowired
	private MainMapper mainmapper;
	private MovieMapper mapper;
	
	public List<MovieVO> movieListData(Map map)
	{
		return mapper.movieListData(map);
	}
	
	public List<MovieVO> movieMainListData()
	{
		return mainmapper.movieMainListData();
	}
	
	public List<MovieVO> movieMainListData2()
	{
		return mainmapper.movieMainListData2();
	}
	
	public int movieTotalPage()
	{
		return mapper.movieTotalPage();
	}

}
