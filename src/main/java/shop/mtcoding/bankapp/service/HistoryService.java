package shop.mtcoding.bankapp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import shop.mtcoding.bankapp.dto.search.DetailSearchRespDto;
import shop.mtcoding.bankapp.model.history.HistoryRepository;

@Service
public class HistoryService {

    @Autowired
    HistoryRepository historyRepository;

    public List<DetailSearchRespDto> 거래내역검색(String gubun, int id, int PageStart,
            int PerPageNum, DetailSearchRespDto detailSearchRespDto) {
        List<DetailSearchRespDto> detailList = historyRepository.findBysender(gubun, id, PageStart, PerPageNum,
                detailSearchRespDto);
        return detailList;
    }

}
