package shop.mtcoding.bankapp.model.history;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import shop.mtcoding.bankapp.dto.history.HistoryRespDto;
import shop.mtcoding.bankapp.dto.search.DetailSearchRespDto;

@Mapper
public interface HistoryRepository {

        public List<DetailSearchRespDto> findBysender(@Param("gubun") String gubun,
                        @Param("accountId") int accountId, @Param("pageStart") int pageStart,
                        @Param("perPageNum") int perPageNum,
                        DetailSearchRespDto detailSearchRespDto);

        public List<HistoryRespDto> findByGubun(@Param("gubun") String gubun,
                        @Param("accountId") int accountId, @Param("pageStart") int pageStart,
                        @Param("perPageNum") int perPageNum);

        public int historyListCnt(@Param("gubun") String gubun, @Param("accountId") int accountId);

        public int gubun(History history);

        public int insert(History history);

        public int updateById(History history);

        public int deleteById(int id);

        public List<History> findAll();

        public History findById(int id);

}
