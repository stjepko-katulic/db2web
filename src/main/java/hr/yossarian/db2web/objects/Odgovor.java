package hr.yossarian.db2web.objects;

public class Odgovor {

  private int id;
  private String odgovor;
  private String isTocan;

  public Odgovor() {
  }

  public int getId() {
    return id;
  }

  public void setId(int id) {
    this.id = id;
  }

  public String getOdgovor() {
    return odgovor;
  }

  public void setOdgovor(String odgovor) {
    this.odgovor = odgovor;
  }

  public String getIsTocan() {
    return isTocan;
  }

  public void setIsTocan(String isTocan) {
    this.isTocan = isTocan;
  }

  @Override
  public String toString() {
    return "Odgovor{" +
            "id=" + id +
            ", odgovor='" + odgovor + '\'' +
            ", isTocan='" + isTocan + '\'' +
            '}';
  }
}
