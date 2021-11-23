<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>개인프로젝트</title>
  <link rel="icon" href="../aroma-master/img/Fevicon.png" type="image/png">
  <link rel="stylesheet" href="../aroma-master/vendors/bootstrap/bootstrap.min.css">
  <link rel="stylesheet" href="../aroma-master/vendors/fontawesome/css/all.min.css">
  <link rel="stylesheet" href="../aroma-master/vendors/themify-icons/themify-icons.css">
  <link rel="stylesheet" href="../aroma-master/vendors/nice-select/nice-select.css">
  <link rel="stylesheet" href="../aroma-master/vendors/owl-carousel/owl.theme.default.min.css">
  <link rel="stylesheet" href="../aroma-master/vendors/owl-carousel/owl.carousel.min.css">
  <link rel="stylesheet" href="../aroma-master/css/style.css">
  <script src="../aroma-master/vendors/jquery/jquery-3.2.1.min.js"></script>
  <script src="../aroma-master/vendors/bootstrap/bootstrap.bundle.min.js"></script>
  <script src="../aroma-master/vendors/skrollr.min.js"></script>
  <script src="../aroma-master/vendors/owl-carousel/owl.carousel.min.js"></script>
  <script src="../aroma-master/vendors/nice-select/jquery.nice-select.min.js"></script>
  <script src="../aroma-master/vendors/jquery.ajaxchimp.min.js"></script>
  <script src="../aroma-master/vendors/mail-script.js"></script>
  <script src="../aroma-master/js/main.js"></script>
  
</head>
<body>
  <%-- 메뉴  --%>
  <jsp:include page="header.jsp"></jsp:include>
  <%-- 페이지변경(변수명) --%>
  <jsp:include page="${main_jsp }"></jsp:include>
  <%-- Footer --%>
  <jsp:include page="footer.jsp"></jsp:include>


</body>
</html>