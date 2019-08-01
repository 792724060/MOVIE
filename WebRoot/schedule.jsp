<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'text2.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" href="css/tasp.css" />
    <link href="css/orderconfirm.css" rel="stylesheet" />
    <script src="//cdn.staticfile.org/jquery/1.12.3/jquery.min.js"></script>
    <script src="js/layer-v3.1.1/layer/layer.js"></script>

<style>
#page{width:auto;}
#comm-header-inner,#content{width:950px;margin:auto;}
#logo{padding-top:26px;padding-bottom:12px;}
#header .wrap-box{margin-top:-67px;}
#logo .logo{position:relative;overflow:hidden;display:inline-block;width:140px;height:35px;font-size:35px;line-height:35px;color:#f40;}
#logo .logo .i{position:absolute;width:140px;height:35px;top:0;left:0;background:url(http://a.tbcdn.cn/tbsp/img/header/logo.png);}
input[type="submit"]{width:60px; height:40px;  background-color:#3366FF; color:#FFFFFF;} 
</style>
</head>
<script>
function check(mid){
layer.confirm('是否下映', {
         btn: ['下映','取消'] //按钮
      }, function (){
           window.location.href="schedulestate?mid="+mid;
      }, function(){
           layer.close();
      });
}
</script>
<body data-spm="1">


<div id="page">

</div>
 <table  class="order-table" id="J_OrderTable" >
 <caption style="display: none">统一下单订单信息区域</caption>
 <thead>
 <tr>
 <th class="s-title">电影名<hr/></th>
 <th class="s-amount">价格<hr/></th>
 <th class="s-agio">上映时间<hr/></th>
 <th class="s-total">下架<hr/></th>
 </tr>
 </thead>
     



<c:forEach var="list" items="${list}">
<tbody data-spm="3" class="J_Shop" data-tbcbid="0" data-outorderid="47285539868"  data-isb2c="false" data-postMode="2" data-sellerid="1704508670">
<tr class="shop blue-line">  
</tr>
 <tr class="item" data-lineid="19614514619:31175333266:35612993875" data-pointRate="0">
 <td class="s-title"> ${list.movie.name} </td>
   
 <td class="s-price">
         ${list.price}元
</td>


 <td class="s-amount" data-point-url="">
          <fmt:formatDate value="${list.begindatetime}" pattern="YYYY-MM-dd"/> 
 </td>
 

 <td class="s-price">
         <c:if test="${list.state == 1}">
             <input type="submit" onclick="check('${list.movie.mid}')" value="下映" > 
         </c:if>
         <c:if test="${list.state == 0}">
            已下映
         </c:if>
</td>



</tr></tbody>
</c:forEach>







<tr class="item-service">
 <td colspan="5" class="servicearea" style="display: none"></td>
</tr>

<tr class="blue-line" style="height: 2px;"><td colspan="5"></td></tr>
<tr class="other other-line">
 <td colspan="5">
 
 </td>
</tr>

<tr class="shop-total blue-line">
   
</tr>
</tbody>
  <tfoot>
 <tr>
 <td colspan="5">

<div class="order-go" data-spm="4">
<div class="J_AddressConfirm address-confirm">
 
 </div>

 <div class="J_confirmError confirm-error">
 </div>


 <div class="msg" style="clear: both;">
 
 </div>
 </div>
 </td>
 </tr>
 </tfoot>
 </table>

  


<div id="footer"></div>

<div style="text-align:center;">
</div>
</body>
</html>

