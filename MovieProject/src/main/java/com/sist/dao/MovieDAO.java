package com.sist.dao;
import java.util.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.sist.mapper.*;
import com.sist.vo.*;

@Repository
public class MovieDAO {
	@Autowired
	private MovieMapper mapper;
	
	public List<MovieVO> movieListData(Map map)
	{
		return mapper.movieListData(map);
	}
	
	public List<MovieVO> movieMainListData()
	{
		return mapper.movieMainListData();
	}
	
	public int movieTotalPage()
	{
		return mapper.movieTotalPage();
	}

}
