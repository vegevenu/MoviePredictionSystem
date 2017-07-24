package com.cfaservice.common.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cfaservice.dao.MovieDao;
import com.cfaservice.model.Movie;


@Controller
@RequestMapping("/movies")
public class MovieController {

	@Autowired
	MovieDao movieDao;
 
	
	@RequestMapping(value="/user/{id}",method=RequestMethod.GET)
	public @ResponseBody List<Movie> getMovies(@PathVariable("id") String userId){
		return movieDao.getMovies(userId);
	}
	
	@RequestMapping(value="/movie/{id}",method=RequestMethod.GET)
	public @ResponseBody String getRating(@PathVariable("id") String movieId){
		Float rating = movieDao.getRating(movieId);
		return "Average Rating : "+rating;
		
	}
	
	@RequestMapping(value="/type/{type}/user/{id}",method=RequestMethod.GET)
	public @ResponseBody List<String> getMovies(@PathVariable("type") String movieType, @PathVariable("id") String userId){
		return movieDao.getMovies(movieType, userId);
		
	}
}