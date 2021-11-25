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
	
	@Select("SELECT CEIL(COUNT(*)/12.0) FROM project_movie")
	public int movieTotalPage();
}
