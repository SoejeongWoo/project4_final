package com.example.crudprojectjsp;

import com.example.crudprojectjsp.util.MariaDBConection;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

public class DramaDAO {

    Connection conn = null;
    PreparedStatement stmt = null;
    ResultSet rs = null;

    SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");


    private final String DRAMA_INSERT = "insert into DramaInfo (DramaName, DramaPoster, ReleaseDate, Genre, Summary, Regdate, Moddate) values (?,?,?,?,?,?,?)";
    private final String DRAMA_UPDATE = "update DramaInfo set DramaName=?, DramaPoster=?, ReleaseDate=?, Genre=?, Summary=?, Moddate=? where DramaId=?";
    private final String DRAMA_DELETE = "delete from DramaInfo where DramaId=?";
    private final String DRAMA_GET = "select * from DramaInfo where DramaId=?";
    private final String DRAMA_LIST = "select * from DramaInfo order by DramaId desc";

    public int insertDrama(DramaVO vo) {
        System.out.println("===> JDBC로 insertDrama() 기능 처리");
        try {
            conn = MariaDBConection.getConnection(); // DB에 먼저 연결한다
            stmt = conn.prepareStatement(DRAMA_INSERT);
            stmt.setString(1, vo.getDramaName());
            stmt.setString(2, vo.getDramaPoster());
            stmt.setDate(3, Date.valueOf(dateFormat.format(vo.getReleaseDate())));
            stmt.setString(4, vo.getGenre());
            stmt.setString(5, vo.getSummary());
            stmt.setDate(6, Date.valueOf(LocalDate.now()));
            stmt.setDate(7, Date.valueOf(LocalDate.now()));
            stmt.executeUpdate();
            return 1;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return 0;
    }

    // 글 삭제
    public void deleteDrama(Integer dramaId) {
        System.out.println("===> JDBC로 deleteDrama() 기능 처리");
        try {
            conn = MariaDBConection.getConnection();
            stmt = conn.prepareStatement(DRAMA_DELETE);
            stmt.setInt(1, dramaId);
            stmt.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    public int updateDramaInfo(DramaVO vo) {
        System.out.println("===> JDBC로 updateDramaInfo() 기능 처리");
        try {
            conn = MariaDBConection.getConnection();
            stmt = conn.prepareStatement(DRAMA_UPDATE);
            stmt.setString(1, vo.getDramaName());
            stmt.setString(2, vo.getDramaPoster());
            stmt.setDate(3, Date.valueOf(dateFormat.format(vo.getReleaseDate())));
            stmt.setString(4, vo.getGenre());
            stmt.setString(5, vo.getSummary());
            stmt.setDate(6, Date.valueOf(LocalDate.now()));
            stmt.setInt(7, vo.getDramaId());

            System.out.println(vo);
            stmt.executeUpdate();
            return 1;

        } catch (Exception e) {
            e.printStackTrace();
        }
        return 0;
    }

    public DramaVO getDramaInfo(Integer dramaId) {
        DramaVO one = new DramaVO();
        System.out.println("===> JDBC로 getDramaInfo() 기능 처리");
        try {
            conn = MariaDBConection.getConnection();
            stmt = conn.prepareStatement(DRAMA_GET);
            stmt.setInt(1, dramaId);
            rs = stmt.executeQuery();
            if(rs.next()) {
                one.setDramaId(rs.getInt("DramaId"));
                one.setDramaName(rs.getString("DramaName"));
                one.setDramaPoster(rs.getString("DramaPoster"));
                one.setReleaseDate(rs.getDate("releaseDate"));
                one.setGenre(rs.getString("Genre"));
                one.setSummary(rs.getString("Summary"));
                one.setRegDate(rs.getDate("Regdate"));
                one.setModDate(rs.getDate("Moddate"));
            }
            rs.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return one;
    }

    public List<DramaVO> getDramaInfoList(){
        List<DramaVO> list = new ArrayList<DramaVO>();
        System.out.println("===> JDBC로 getDramaInfoList() 기능 처리");
        try {
            conn = MariaDBConection.getConnection();
            stmt = conn.prepareStatement(DRAMA_LIST);
            rs = stmt.executeQuery();
            while(rs.next()) {
                DramaVO one = new DramaVO();
                one.setDramaId(rs.getInt("DramaId"));
                one.setDramaName(rs.getString("DramaName"));
                one.setDramaPoster(rs.getString("DramaPoster"));
                one.setReleaseDate(rs.getDate("releaseDate"));
                one.setGenre(rs.getString("Genre"));
                one.setSummary(rs.getString("Summary"));
                one.setRegDate(rs.getDate("Regdate"));
                one.setModDate(rs.getDate("Moddate"));
                list.add(one);
            }
            rs.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }
}
