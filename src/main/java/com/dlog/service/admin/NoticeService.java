package com.dlog.service.admin;


import com.dlog.domain.vo.admin.NoticeVO;
import com.dlog.domain.vo.admin.NoticeViewVO;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

public interface NoticeService {

    public List<NoticeViewVO> getNoticeList() throws Exception;

    // 작성자명이 아닌 작성자 번호로 나오는 형태
    public List<NoticeVO> getNoticeListNum() throws Exception;

    public NoticeViewVO getNoticeInfo(int noticeNo, HttpServletRequest request, HttpServletResponse response) throws Exception;

    public void insertNotice(NoticeVO noticeVO) throws Exception;

    public void updateNotice(NoticeVO noticeVO) throws Exception;

    public void deleteNotice(int noticeNo) throws Exception;

}