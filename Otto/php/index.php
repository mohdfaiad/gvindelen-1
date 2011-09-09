<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
 <?php 
  require "Head.html"; 
 ?>

<body class="colorscheme_none">
 <?php 
  require "Header.html"; 
  require "Navigation.html";
  ?>

<div class="navigation_spacer">&nbsp;</div><div id="loginmenu">
  <div class="dotspacer_top">&nbsp;</div>
  <div class="loginmenu_text">
    Добро пожаловать в <strong>ОТТО</strong>!</div>
  <div class="dotspacer_bottom">&nbsp;</div>
</div>
<style type="text/css">
#pagenavigation.homenav a {
  color:#8D2853;
}
#pagenavigation.homenav #square {
  background-color:#8D2853 !important;
}
#pagenavigation.homenav .block .headline {
  color:#8D2853;
}
</style>
<div id="pagenavigation" class="homenav">
  <h1 id="square"><span class="text">Зима с ОТТО</span></h1><div id="order" class="block dotline">
    <div class="headline">
      Просто введите коды артикулов из каталога</div>
    <div class="buttons">
      <a href="directorder"><img src="index_files/direct_order.gif" alt="онлайн-заказа" border="0"></a><br>
      <a href="javascript:showLayer('layer_with_id_21028')"><img src="index_files/browsable_catalog.gif" alt="" border="0"></a><br>
    </div>
  </div>

  <div id="meinotto" class="block dotline">
    <div class="headline">
      Мой OTTO</div>
    <div class="buttons">
      <a href="myotto/customer"><img src="index_files/enter.gif" alt="Cервис-Центр" border="0"></a><br>
      <a href="register"><img src="index_files/registration.gif" alt="Ваши данные" border="0"></a><br>
      <a href="myotto/newsletter/subscribe"><img src="index_files/subscribe.gif" alt="" border="0"></a><br>
    </div>
  </div>

  <div id="catalog" class="block dotline">
    <div class="headline">
      <a href="catalogorder">Наши каталоги</a>
    </div>
    <div id="content">
      <div class="picture" style="border: 1px solid rgb(153, 153, 153);"><a href="catalogorder"><img src="index_files/katalog_highlights.jpg" alt="" border="0">


</a></div>
      <div class="text">
        <a href="catalogorder"><b>Заказать каталог бесплатно</b></a><br>
      </div>
    </div>
  </div>

  <div id="partner" class="block">
  <div class="headline">Партнеры ОТТО</div>
  <div id="content">
  </div>
</div></div><div id="startcontent" class="maincontent">
  
  
  
  
  
  
  
  </div></div> 
<div class="clear_both"></div>
<?php
  require "footer.html";
?>
</body></html>