package controllers;

import dao.Ads;
import dao.ListAdsDao;
import dao.DaoFactory;
import models.Ad;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;


@WebServlet(name = "ShowAdsServlet", urlPatterns = "/ads")
public class ShowAds extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        Ads listAdsDao = DaoFactory.getAdsDao();

        List<Ad> listToView = listAdsDao.all();

        System.out.println(listToView);
        request.setAttribute("viewAds", listToView);
        request.getRequestDispatcher("ads/index.jsp").forward(request, response);
    }

}
