package com.cognizant.movie.dao;

import java.util.List;

import com.cognizant.movie.model.Movie;

public class FavoriteDaoCollectionImplTest {
    static FavoriteDao favoriteDao = new FavoriteDaoCollectionImpl();

    public static void main(String[] args) {

        testAddFavoritesById();
        testGetAllFavorites();
        testRemoveFavoritesById();
        testGetAllFavorites();

    }

    public static void testAddFavoritesById() {
        System.out.println("Movie added into favorites");
        favoriteDao.addFavoritesById(1, 2);
        favoriteDao.addFavoritesById(1, 3);

    }

    public static void testGetAllFavorites() {
        try {
            System.out.println("Retrieving all the items from favorites");
            List<Movie> list = favoriteDao.getAllFavorites(1).getFavoriteList(); // 1 is userId
            for (Movie movie : list) {
                System.out.println(movie);
            }
            System.out.println("No.of Favorites:" + favoriteDao.getAllFavorites(1).getTotal());
        } catch (FavoriteEmptyException e) {
            System.out.println(e);
        }

    }

    public static void testRemoveFavoritesById() {
        System.out.println("Remove Favorites");
        favoriteDao.removeFavoritesById(1, 3);
    }

}
