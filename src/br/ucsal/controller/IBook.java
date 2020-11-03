package br.ucsal.controller;

import java.util.List;

import br.ucsal.model.Book;

public interface IBook {

	public boolean insert(Book book, List<Book> listBooks);
	
	public List<Book> toList();
	
	public boolean update(String isbn, String title, String author, List<Book> listBooks);
	
	public boolean remove(String id, List<Book> listBooks);
	
	
}