package hr.yossarian.db2web.objects;

public class Counter {

  private int counterOdgovori=64;
  private int counterPitanja=0;
  private int ukupnoPitanja;

  private String slovoTrenutnogOdgovora;

  public String getCounterOdgovori() {
    ++counterOdgovori;
    String slovoZaVratiti = String.valueOf((char)counterOdgovori);
    return slovoZaVratiti + ")";
  }

  private void setCounterOdgovori(int counterOdgovori) {
    this.counterOdgovori = counterOdgovori;
  }

  public void resetCounterOdgovori() {
    setCounterOdgovori(64);
  }




  public int getCounterPitanja() {
    counterPitanja++;
    return counterPitanja;
  }

  public void resetCounterPitanja() {
    setCounterPitanja(0);
  }

  public void setCounterPitanja(int counterPitanja) {
    this.counterPitanja=counterPitanja;
  }

  public int getTrenutnoPitanje() {
    return counterPitanja;
  }

  public String getSlovoTrenutnogOdgovora() {
    return String.valueOf((char)(counterOdgovori+1));
  }


  public void setUkupnoPitanja(int ukPitanja) {
    this.ukupnoPitanja=ukPitanja;
  }

  public int getUkupnoPitanja() {
    return this.ukupnoPitanja;
  }
}
