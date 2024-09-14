# Sử dụng image Tomcat
FROM tomcat:10.0-jdk17

# Xóa các ứng dụng mặc định của Tomcat (tùy chọn)
RUN rm -rf /usr/local/tomcat/webapps/ROOT/*

# Sao chép file index.html từ src\main\webapp\WEB-INF vào thư mục ROOT của Tomcat
COPY src/main/webapp/index.html /usr/local/tomcat/webapps/ROOT/

# Expose port
EXPOSE 8080

# Lệnh khởi động Tomcat
CMD ["catalina.sh", "run"]
