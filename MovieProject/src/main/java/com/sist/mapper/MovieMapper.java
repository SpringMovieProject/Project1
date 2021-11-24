package com.sist.mapper;

import java.util.*;
import org.apache.ibatis.annotations.Select;
import com.sist.vo.*;

public interface MovieMapper {
	@Select("SELECT mno,title,poster,num "
			+"FROM (SELECT mno,title,poster,rownum as num "
			+"FROM (SELECT mno,title,poster "
			+"FROM project_movie ORDER BY mno ASC)) "
			+"WHERE num BETWEEN #{start} AND #{end}")
	public List<MovieVO> movieListData(Map map);
	
	/*
	@Select("SELECT mno,title,poster,num "
			+"FROM (SELECT mno,title,poster,rownum as num "
			+"FROM (SELECT mno,title,poster "
			+"FROM project_movie ORDER BY mno ASC)) "
			+"WHERE rownum BETWEEN 1 AND 8")
	public List<MovieVO> movieMainListData();
	*/
	
	@Select("SELECT grade,score,mno,title,poster,num "
			+"FROM (SELECT grade,score,mno,title,poster,rownum as num "
			+"FROM (SELECT grade,score,mno,title,poster "
			+"FROM project_movie WHERE SCORE>7 ORDER BY score DESC)) "
			+"WHERE rownum BETWEEN 1 AND 8")
	public List<MovieVO> movieMainListData();
	
	@Select("SELECT CEIL(COUNT(*)/12.0) FROM project_movie")
	public int movieTotalPage();
}
