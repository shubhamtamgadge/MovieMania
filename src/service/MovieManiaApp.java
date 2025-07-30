package service;


import config.DataBaseConfig;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Scanner;

public class MovieManiaApp {

    public static void main(String[] args) {

        MovieManiaSystem mbs = new MovieManiaSystem();

        Scanner sc = new Scanner(System.in);

//        mbs.resetBookings();

        mbs.showCities();

        System.out.println("Enter city:");
        String city = sc.next();

        // Display Theaters Available in the city
        mbs.displayTheaters(city);

        System.out.println("Select the Theater");
        int theaterId = sc.nextInt();

        System.out.println("Ongoing shows at this theater: ");
        mbs.displayRunningShowsInTheaters(theaterId);

        System.out.println("Enter the Movie Id:");

//        int theaterId = sc.nextInt();
        int movieId = sc.nextInt();

        // Display shows for the movie
        mbs.displayShows(movieId,theaterId);

        // Enter the show_id and Number of seats to book
        System.out.println("Enter show Id");
        int showId = sc.nextInt();

        System.out.println("Available seats: ");
        System.out.println("-----------------");

        System.out.println("Selects from available seats or enter x for payment");

        mbs.availableSeats(showId);

        List<String> selectedSeats= new ArrayList<>();

        while(true){

            String selectSeat = sc.next();

            if(selectSeat.equals("x")){
                break;
            }

            selectedSeats.add(selectSeat);

        }


        int userId= mbs.registerUser();
        mbs.bookTicket(userId,showId,selectedSeats);

//        mbs.resetBookings();

        System.out.println("Do you want to Cancel booking");
         String cancel = sc.next();
        if(cancel.equals("y")){
            mbs.cancelBooking(userId,showId,selectedSeats);
            System.out.println("Your booking has been canceled successfully");
            System.out.println("Refund initiated. The amount will be credited within 3–5 business days");
        }
        else{
            System.out.println("Enjoy your show");
        }


    }



}


