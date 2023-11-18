package com.example.crudprojectjsp;

import java.time.LocalDateTime;

public class DramaVO {

    private Integer DramaID;
    private String DramaName;
    private String DramaPoster;
    private LocalDateTime ReleaseDate;
    private String Genre;
    private String summary;
    private LocalDateTime Regdate;
    private LocalDateTime modDate;

    public Integer getDramaID() {
        return DramaID;
    }

    public void setDramaID(Integer dramaID) {
        DramaID = dramaID;
    }

    public String getDramaName() {
        return DramaName;
    }

    public void setDramaName(String dramaName) {
        DramaName = dramaName;
    }

    public String getDramaPoster() {
        return DramaPoster;
    }

    public void setDramaPoster(String dramaPoster) {
        DramaPoster = dramaPoster;
    }

    public LocalDateTime getReleaseDate() {
        return ReleaseDate;
    }

    public void setReleaseDate(LocalDateTime releaseDate) {
        ReleaseDate = releaseDate;
    }

    public String getGenre() {
        return Genre;
    }

    public void setGenre(String genre) {
        Genre = genre;
    }

    public String getSummary() {
        return summary;
    }

    public void setSummary(String summary) {
        this.summary = summary;
    }

    public LocalDateTime getRegdate() {
        return Regdate;
    }

    public void setRegdate(LocalDateTime regdate) {
        Regdate = regdate;
    }

    public LocalDateTime getModDate() {
        return modDate;
    }

    public void setModDate(LocalDateTime modDate) {
        this.modDate = modDate;
    }
}
