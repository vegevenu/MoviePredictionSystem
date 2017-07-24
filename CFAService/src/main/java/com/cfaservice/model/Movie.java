package com.cfaservice.model;

import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement
public class Movie {

	private int id;
	private String title;
	private String description;
	private String releaseYear;
	private String language;
	private int length;
	private String rating;
	
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getReleaseYear() {
		return releaseYear;
	}
	public void setReleaseYear(String releaseYear) {
		this.releaseYear = releaseYear;
	}
	public String getLanguage() {
		return language;
	}
	public void setLanguage(String language) {
		this.language = language;
	}
	public int getLength() {
		return length;
	}
	public void setLength(int length) {
		this.length = length;
	}
	public String getRating() {
		return rating;
	}
	public void setRating(String rating) {
		this.rating = rating;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
}
