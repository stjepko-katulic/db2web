package hr.yossarian.db2web.objects;

import java.util.List;

public class Pitanje {

  private int id;
  private String pitanje;
  private List<Odgovor> odgovori;
  private int brojTocnihOdgovora;


  public Pitanje() {
  }

  public String getPitanje() {
    return pitanje;
  }

  public void setPitanje(String pitanje) {
    this.pitanje = pitanje;
  }


  public int getId() {
    return id;
  }

  public void setId(int id) {
    this.id = id;
  }

  public List<Odgovor> getOdgovori() {
    return odgovori;
  }

  public void setOdgovori(List<Odgovor> odgovori) {
    this.odgovori = odgovori;
  }

  public int getBrojTocnihOdgovora() {
    return brojTocnihOdgovora;
  }

  public void setBrojTocnihOdgovora(int brojTocnihOdgovora) {
    this.brojTocnihOdgovora = brojTocnihOdgovora;
  }

  @Override
  public String toString() {
    return "Pitanje{" +
            "id=" + id +
            ", pitanje='" + pitanje + '\'' +
            ", odgovori=" + odgovori +
            ", brojTocnihOdgovora=" + brojTocnihOdgovora +
            '}';
  }
}
