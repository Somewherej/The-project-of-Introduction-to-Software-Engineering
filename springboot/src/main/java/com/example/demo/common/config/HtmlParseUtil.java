package com.example.demo.common.config;

import com.example.demo.entity.Book;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.springframework.stereotype.Component;

import java.io.IOException;
import java.math.BigDecimal;
import java.net.URL;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

//爬取网页数据
@Component
public class HtmlParseUtil {
    public static void main(String[] args) throws Exception {
        new HtmlParseUtil().parseJD("python").forEach(System.out::println);
    }
    public List<Book> parseJD(String keywords) throws IOException{

        ArrayList<Book> elasticSearchTestContents = new ArrayList<>();

//        获取请求 https://search.jd.com/Search?keyword = java
//        前提，需要联网，ajax 不能获取到！模拟浏览器
        String url = "https://search.jd.com/Search?keyword="+keywords;
//        解析网页(Jsoup 返回 Document 就是 Document 对象)
        Document document = Jsoup.parse(new URL(url),30000);
//        搜索你在js中使用到的方法都可以使用
        Element element = document.getElementById("J_goodsList");
//        System.out.println(element);
//        获取所有的li元素
        Elements lis = element.getElementsByTag("li");
        for (Element li : lis) {
//            String img = li.getElementsByTag("img").eq(0).attr("data-lazy-img").toString();
            try {
                String price = li.getElementsByClass("p-price").eq(0).text();
                price = price.substring(1);
                BigDecimal bg = new BigDecimal(price);
                String name = li.getElementsByClass("p-name").eq(0).text();
                String author = li.getElementsByClass("p-shop").eq(0).text();
                Date time = new Date();
                String cover = "http://localhost:9090/files/eb7942935c294ca1bc2a07d24b554d36";

                //            System.out.println("==============================================");
                //            System.out.println(img);
                //            System.out.println(price);
                //            System.out.println(title);
                elasticSearchTestContents.add(new Book(name, bg, author,time,cover));
            }catch(NumberFormatException e){
                e.printStackTrace();
            }
        }
        return elasticSearchTestContents;
    }
}
