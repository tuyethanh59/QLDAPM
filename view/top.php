<!DOCTYPE html>
<html lang="en">
<head>
  <title>It Dream - Cửa hàng buôn bán họa cụ </title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
  h3{
    text-shadow: 2px 2px 2px silver;
  }
  .carousel-inner img {  
      width: 100%; /* Set width to 100% */
      margin: auto;
  }
  .carousel-caption h3 {
      color: #fff !important;
  }
  @media (max-width: 600px) {
    .carousel-caption {
      display: none; /* Hide the carousel text when the screen is less than 600 pixels wide */
    }
  }
  footer {
      background-color: black;
      color: #f5f5f5;
      padding: 32px;
  }
  footer a:hover {
      color: #777;
      text-decoration: none;
  }  
  </style>
</head>
<body id="abc" data-spy="scroll" data-target=".navbar" data-offset="50">


<nav class="navbar navbar-inverse navbar-fixed-top">
  <div class="container">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
     
      <a class="navbar-brand" href="index.php"><span class="glyphicon glyphicon-home"></span> Dream Shop</a>
    </div>
    
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
     
        <li class="nav-item dropdown">
          <a class="nav-link" href="#" data-toggle="dropdown">
          <span class="glyphicon glyphicon-th"></span> Danh mục sản phẩm</a>
          </a>
          
          <ul class="dropdown-menu">
            <?php            
            foreach($danhmuc as $dm):
            ?>
            <li><a href="?action=xemnhom&madm=<?php echo $dm["id"]; ?>"><?php echo $dm["tendanhmuc"]; ?></a></li>
            <?php endforeach; ?>
          </ul>
        </li>
    
        <li><a href="#"><span class="glyphicon glyphicon-phone-alt"></span> Liên hệ</a></li>

        <li><a href="#" data-toggle="modal" data-target="#modalTimKiem">
          <span class="glyphicon glyphicon-search"></span> Tìm kiếm</a></li>  
      </ul>
      <ul class="nav navbar-nav navbar-right">
      <li><a href="admin/ktnguoidung/index.php"><span class="glyphicon glyphicon-user"></span> Đăng nhập</a></li>
        <li><a href="admin/ktnguoidung/SignUp.php"><span class="glyphicon glyphicon-user"></span> Đăng ký</a></li>
        <li><a href="#" class="text-warning">
          <span class="glyphicon glyphicon-shopping-cart"></span> Giỏ hàng
          <span class="badge"><?php echo demhangtronggio(); ?></span>
           </a>
        </li>             
      </ul>
    </div>
  </div>
</nav>

  <!-- Hộp tìm kiếm -->
  <div class="modal fade" id="modalTimKiem" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">×</button>x
          <h4><span class="glyphicon glyphicon-search"></span> Bạn cần tìm gì ?</h4>
        </div>
        <div class="modal-body">
          <form role="form">
            <div class="form-group">
              <label for="txttukhoa"><span class="glyphicon glyphicon-question"></span> Từ khóa: </label>
              <input type="text" class="form-control" id="txttukhoa" placeholder="Nhập từ khóa">
            </div>
            <div class="form-group">
              <label for="optbang"> Trong: </label>
              <select name="optbang" class="form-control" id="optbang">
                <option value="mathang">Sản phẩm</option>
                <option value="baiviet">Tin tức</option>
              </select>
            </div>
              <button type="submit" class="btn btn-info">Tìm kiếm  
                <span class="glyphicon glyphicon-ok"></span>
              </button>
          </form>
        </div>
        
      </div>
    </div>
  </div>

<br>
