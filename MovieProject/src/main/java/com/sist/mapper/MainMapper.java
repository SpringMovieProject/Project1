package com.sist.mapper;
import java.util.*;

import org.apache.ibatis.annotations.Select;

import com.sist.vo.*;

public interface MainMapper {
	@Select("SELECT grade,score,mno,title,poster,num "
			+"FROM (SELECT grade,score,mno,title,poster,rownum as num "
			+"FROM (SELECT grade,score,mno,title,poster "
			+"FROM project_movie WHERE score>7 ORDER BY score DESC)) "
			+"WHERE rownum BETWEEN 1 AND 8")
	public List<MovieVO> movieMainListData();
	
	@Select("SELECT grade,director,score,mno,title,poster,num "
			+"FROM (SELECT grade,director,score,mno,title,poster,rownum as num "
			+"FROM (SELECT grade,director,score,mno,title,poster "
			+"FROM project_movie WHERE director LIKE '%'||'신카이 마코토'||'%' ORDER BY score DESC)) "
			+"WHERE rownum BETWEEN 1 AND 8")
	public List<MovieVO> movieMainListData2();
}
