package com.example.crudprojectjsp;

import java.util.Date;

public class DramaVO {

    private Integer dramaId;
    private String dramaName;
    private String dramaPoster;
    private Date releaseDate;
    private String genre;
    private String summary;
    private Date regDate;
    private Date modDate;

    public Integer getDramaId() {
        return dramaId;
    }

    public void setDramaId(Integer dramaId) {
        this.dramaId = dramaId;
    }

    public String getDramaName() {
        return dramaName;
    }

    public void setDramaName(String dramaName) {
        this.dramaName = dramaName;
    }

    public String getDramaPoster() {
        return dramaPoster;
    }

    public void setDramaPoster(String dramaPoster) {
        this.dramaPoster = dramaPoster;
    }

    public Date getReleaseDate() {
        return releaseDate;
    }

    public void setReleaseDate(Date releaseDate) {
        this.releaseDate = releaseDate;
    }

    public String getGenre() {
        return genre;
    }

    public void setGenre(String genre) {
        this.genre = genre;
    }

    public String getSummary() {
        return summary;
    }

    public void setSummary(String summary) {
        this.summary = summary;
    }

    public Date getRegDate() {
        return regDate;
    }

    public void setRegDate(Date regDate) {
        this.regDate = regDate;
    }

    public Date getModDate() {
        return modDate;
    }

    public void setModDate(Date modDate) {
        this.modDate = modDate;
    }

    @Override
    public String toString() {
        return "DramaVO{" +
                "dramaId=" + dramaId +
                ", dramaName='" + dramaName + '\'' +
                ", dramaPoster='" + dramaPoster + '\'' +
                ", releaseDate=" + releaseDate +
                ", genre='" + genre + '\'' +
                ", summary='" + summary + '\'' +
                ", regDate=" + regDate +
                ", modDate=" + modDate +
                '}';
    }
}
