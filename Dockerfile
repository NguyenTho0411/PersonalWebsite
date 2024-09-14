# Sử dụng image Tomcat
FROM tomcat:10.0-jdk17

# Xóa các ứng dụng mặc định của Tomcat (tùy chọn)
RUN rm -rf /usr/local/tomcat/webapps/ROOT/*

# Sao chép thư mục chứa tệp HTML và các tệp tĩnh khác vào thư mục ROOT của Tomcat
COPY src/main/webapp/ /usr/local/tomcat/webapps/ROOT/

# Expose port
EXPOSE 8080

# Lệnh khởi động Tomcat
CMD ["catalina.sh", "run"]
