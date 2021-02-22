package hr.yossarian.db2web.dao;


import hr.yossarian.db2web.objects.Odgovor;
import hr.yossarian.db2web.objects.Pitanje;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Collections;
import java.util.List;

@Repository
public class Repozitorij {

  @Autowired
  JdbcTemplate jdbcTemplate;

  String query1 = "select * from pitanja";

  public List<Pitanje> getPitanja() {
    List<Pitanje> pitanja = jdbcTemplate.query(query1, rowMapper1);
    Collections.shuffle(pitanja);
    return pitanja;
  }

  RowMapper<Pitanje> rowMapper1 = new RowMapper<Pitanje>() {
    @Override
    public Pitanje mapRow(ResultSet rs, int rowNum) throws SQLException {
      Pitanje pitanje = new Pitanje();
      pitanje.setId(rs.getInt("id"));
      pitanje.setPitanje(rs.getString("pitanje"));
      pitanje.setBrojTocnihOdgovora(rs.getInt("broj_tocnih_odgovora"));

      List<Odgovor> odgovori = jdbcTemplate.query("select * from odgovori where pitanje_id=" + rs.getInt("id"), rowMapper2);
      Collections.shuffle(odgovori);
      pitanje.setOdgovori(odgovori);
      return pitanje;
    }
  };


  RowMapper<Odgovor> rowMapper2 = new RowMapper<Odgovor>() {
    @Override
    public Odgovor mapRow(ResultSet rs, int rowNum) throws SQLException {
      Odgovor odgovor = new Odgovor();
      odgovor.setId(rs.getInt("id"));
      odgovor.setIsTocan(rs.getString("tocan"));
      odgovor.setOdgovor(rs.getString("odgovor"));
      return odgovor;
    }
  };


}
