package com.cfaservice.dao;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.cfaservice.exception.CFAException;
import com.cfaservice.model.Movie;



@Repository
public class MovieDao {
	public static Connection con  =null;
	
	private static final String ALL_MOVIES_QUERY = "select m.movie_id,m.title,m.release_year,m.language,m.length , m.description,um.rating from cfa.movie m , cfa.user u, cfa.user_movie um where um.movie_id=m.movie_id and um.user_id=u.id and u.id=?;";
	private static final String AVG_RATING_QUERY = "select avg(um.rating) avg_rating from cfa.movie m , cfa.user u, cfa.user_movie um where um.movie_id=m.movie_id and um.user_id=u.id and m.movie_id=?;";
	private static final String TOP_MOVIES = "select m.title from cfa.movie m , cfa.user u, cfa.user_movie um where um.movie_id=m.movie_id and um.user_id=u.id and contains(m.description,?) and u.age<? and u.age>?;";

	public static Connection getConnection() throws CFAException {
		try{
		if(con==null||con.isClosed()){
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cfa", "root", "root1234");
			return con;
		}else{
			return con;
		}
		}catch(Exception ex){
			throw new CFAException(ex.getMessage());
		}
	}
	public List<Movie> getMovies(String userId){
		Connection connection = null;
		PreparedStatement prepareStatement = null;
		ResultSet rs = null;
		try {
			connection = getConnection();
			prepareStatement = connection.prepareStatement(ALL_MOVIES_QUERY);
			prepareStatement.setString(1, userId);
			rs = prepareStatement.executeQuery();
			List<Movie> list = new ArrayList<Movie>();
			while(rs.next()){
				Movie movie = new Movie();
				movie.setId(rs.getInt("movie_id"));
				movie.setTitle(rs.getString("title"));
				movie.setDescription(rs.getString("description"));
				movie.setReleaseYear(rs.getString("release_year"));
				movie.setLanguage(rs.getString("language"));
				movie.setLength(rs.getInt("length"));
				list.add(movie);
			}
			return list;
		} 
		 catch (SQLException e) {
			e.printStackTrace();
		}finally{
			if(prepareStatement!=null){
				try {
					prepareStatement.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			if(connection != null){
				try {
					connection.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			if(rs!=null){
				try {
					rs.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		
		return null;
	}
	
	public Float getRating(String movieId){

		Connection connection = null;
		PreparedStatement prepareStatement = null;
		ResultSet rs = null;
		try {
			connection = getConnection();
			prepareStatement = connection.prepareStatement(AVG_RATING_QUERY);
			prepareStatement.setString(1, movieId);
			rs = prepareStatement.executeQuery();
			float avg_rating = 0;
			while(rs.next()){
				avg_rating = rs.getFloat("avg_rating");
			}
			return avg_rating;
		}  catch (SQLException e) {
			e.printStackTrace();
		}finally{
			if(prepareStatement!=null){
				try {
					prepareStatement.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			if(connection != null){
				try {
					connection.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			if(rs!=null){
				try {
					rs.close();
				}
			}
		}
		
		return null;
	
	}
 
	public List<String> getMovies(String movieType, String userId){
		Connection connection = null;
		PreparedStatement prepareStatement = null;
		ResultSet resultSet = null;
		ResultSet rs = null;
		try {
			connection = getConnection();
			Statement stmt = connection.createStatement();
			rs = stmt.executeQuery("select age from user where id = "+userId);
			int age = 0;
			while(rs.next()){
				age = rs.getInt("age");
			}
			int upperAge = age+5;
			int lowerAge = age-5;
			prepareStatement = connection.prepareStatement(TOP_MOVIES);
			prepareStatement.setString(1, movieType);
			prepareStatement.setInt(2, lowerAge);
			prepareStatement.setInt(3, upperAge);
			resultSet = prepareStatement.executeQuery();
			List<String> titleList = new ArrayList<String>();
			while(resultSet.next()){
				titleList.add(resultSet.getString("title"));
			}
			return titleList;
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			if(prepareStatement!=null){
				try {
					prepareStatement.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			if(connection != null){
				try {
					connection.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			if(rs!=null){
					try {
						rs.close();
					} catch (SQLException e) {
						e.printStackTrace();
					}
			}
			if(resultSet!=null){
				try {
					resultSet.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
		}
			
		}
		
		return null;
	
	
	}
	
}
