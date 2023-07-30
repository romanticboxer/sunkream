<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@include file="top.jsp"%>
<script>
function is_check(){
   var c1 = document.getElementById('check1').checked;
   var c2 = document.getElementById('check2').checked;
   var c3 = document.getElementById('check3').checked;
   if(c1 && c2 && c3){
      document.getElementById('confirm').disabled = false;
   }
   if(!c1 || !c2 || !c3){
      document.getElementById('confirm').disabled = true;
   }
}
</script>
<html>
<head>
<meta charset="UTF-8">
<title>판매 및 구매정보 동의</title>
</head>
<body>
   <div align="center" class="basicFont">
      <font size="10" color="Red">구매</font><font size="10" color="Black">하시기
         전에 꼭 확인하세요.</font> <input type="hidden" value="${dto.prod_num }"
         name="prod_num">
      <table>
         <tr align="center">
            <td colspan="2">구매상품 상세 정보</td>
         </tr>
         <tr>
            <td rowspan="4"><img src="${upPath }/${dto.prod_img1 }" width="100px" height="100px"></td>
         </tr>
         <tr>
            <th>${dto.prod_subject}</th>
         </tr>
         <tr>
            <td>${dto.prod_kr_subject}</td>
         </tr>
         <tr>
            <th><fmt:formatNumber value="${dto.prod_price}"></fmt:formatNumber>원</th>
         </tr>
      </table>
      <br>
      <hr color="Black" width="700">
      <font size="4" color="Black">구매하려는 상품이 맞습니다.</font><br> 
      <font size="3" color="Gray">상품 이미지, 모델번호, 출시일, 상품명, 사이즈를 한 번 더 확인했습니다.</font><br> 
      <font size="3" color="Gray"> 단, 상품의 이미지는 촬영 환경에 따라 실제와 다를 수 있습니다.&nbsp;</font>
       <input type="checkbox" id="check1" onclick = "is_check()"><br>
      <br> <font size="4" color="Black">국내/해외에서 발매한 정품 · 새상품입니다.</font><br>
      <font size="3" color="Gray">모든 구성품이 그대로이며, 한 번도 착용하지 않은 정품・새상품입니다.<br> 
      국내 발매 상품 여부는 확인드리지 않습니다.&nbsp;
      </font>
      <input type="checkbox" id="check2" onclick = "is_check()"><br>
      <br> <font size="4" color="Black">제조사에서 불량으로 인정하지 않는 기준은 하자로 판단하지 않습니다.</font><br> 
      <font size="3" color="Gray">박스/패키지와 상품 컨디션에 민감하시다면 검수 기준을 반드시 확인하시기 바랍니다.&nbsp;</font>
      <input type="checkbox" id="check3" onclick = "is_check()"><br>
      <br>
      <button type="button" id="confirm" class="btn btn-outline-dark" onclick="location.href = 'buySellInfo.user?prod_num=${dto.prod_num}&mode=${mode }'" disabled width="400">동의후 계속하기</button>
   </div>
</body>
</html>
<%@include file="../../bottom.jsp"%>