package hr.yossarian.db2web.controllers;

import hr.yossarian.db2web.dao.Repozitorij;
import hr.yossarian.db2web.objects.Counter;
import hr.yossarian.db2web.objects.Pitanje;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

@RestController
public class MainController {

  @Autowired
  Repozitorij repozitorij;

  List<Pitanje> pitanja = new ArrayList<>();

  @GetMapping("/")
  public ModelAndView index() {
    pitanja = repozitorij.getPitanja();
    Counter counter = new Counter();
    counter.setUkupnoPitanja(pitanja.size());
    ModelAndView modelAndView = new ModelAndView();
    modelAndView.addObject("pitanja", pitanja);
    modelAndView.addObject("counter", counter);
    modelAndView.setViewName("index");
    return modelAndView;
  }


  @GetMapping("/shuffle")
  public ModelAndView shuffle() {
    Collections.shuffle(pitanja);
    ModelAndView modelAndView = new ModelAndView();
    Counter counter = new Counter();
    counter.setUkupnoPitanja(pitanja.size());
    modelAndView.addObject("pitanja", pitanja);
    modelAndView.addObject("counter", counter);
    modelAndView.setViewName("index");
    return modelAndView;
  }




}
