<?php include("view/top.php"); ?>

<br><br>
<div class="container">  
  <div class="row"> <!-- Tất cả mặt hàng - Xử lý phân trang -->
     <a name="sptatca"></a>
	 <td>
	 <li class="nav-item n2"  type="none">
		<marquee onmouseover="this.stop();" onmouseout="this.start();"
		behavior="scroll" direction="left" scrollamount=4>
				<h1><b>CHÀO MỪNG ĐẾN VỚI CỬA HÀNG BUÔN BÁN HỌA CỤ DREAM </b></h1>			
		</marquee>
	</li>
</td>
     <h3>Tất cả sản phẩm </h3>
    <?php
    foreach($mathang as $mh):
    ?>
    <div class="col-sm-3">
      <div class="panel panel-primary text-center">
        <div class="panel-heading">
          <a href="?action=xemchitiet&mahang=<?php echo $mh["id"]; ?>" style="color:white;font-weight:bold;" >
		  <?php echo $mh["tenmathang"]; ?></a>
        </div>
        <div class="panel-body">
			<a href="?action=xemchitiet&mahang=<?php echo $mh["id"]; ?>">
      <img src="<?php echo $mh["hinhanh"]; ?>" class="img-responsive" style="width:100%" alt="<?php echo $mh["tenmathang"]; ?>"></a>
      <strong>Giá bán: <span  class="text-danger">
            <?php echo number_format($mh["giaban"]); ?>đ</span> </strong>   
    </div>
        <div class="panel-footer">
         
            <a class="btn btn-success" href="?action=xemchitiet&mahang=<?php echo $mh["id"]; ?>">Chi tiết</a>
          <a class="btn btn-danger" href="?action=chovaogio&id=<?php echo $mh["id"]; ?>&soluong=1">Chọn mua</a>
        </div>
      </div>
    </div>    
    <?php endforeach; ?>
  </div>

 <div class="row"> 
 <ul class='pagination'>
	<p><?php echo $tongsotrang . $tranghh . $search?></p>
	<li><a href="?trang=1">
	<span class="glyphicon glyphicon-step-backward"></span></a></li>
	<?php
	if ($tranghh>1&&$tongsotrang>1)
	?>
	<li><a href='?trang=<?php echo $tranghh-1; ?>'>
	<span class="glyphicon glyphicon-chevron-left"></span></a></li>
	
	<?php
	for($i=1; $i<=$tongsotrang; $i++){
		if($i==$tranghh){
	?>
		<li class="active"><span><?php echo $i;?></span></li>
	<?php
		}
	else{
	?>
		<li><a href="?trang=<?php echo $i;?>"><?php echo $i; ?></a></li>
	<?php	
		}
	}
	if($tranghh<$tongsotrang&&$tongsotrang>1)
		?>
	<li><a href='?trang=<?php echo $tranghh+1; ?>'>
		<span class="glyphicon glyphicon-chevron-right"></span></a></li>
	<li><a href='?trang=<?php echo $tongsotrang; ?>'>
		<span class="glyphicon glyphicon-step-forward"></span></a></li>
	
</ul>
</div>
  
  <?php include("topview.php"); ?>
  

</div>

<?php include("view/carousel.php"); ?>
<?php include("view/bottom.php"); ?>