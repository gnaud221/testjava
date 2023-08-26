<html>
<body>

<table style="width:100%">
  <tr>
    <th>제공회사</th>
    <th>제목</th> 
    <th>수정날짜</th>
    <th>긍/부정</th>
    
 </tr>
 
 <#list message as i>
     <tr>
	   <td>${i.company}</td>
	   <td>${i.title}</td>
	   <td>${i.rv_dt}</td>
	   <td>${i.id}</td>
	   
	 </tr>
 </#list>

</body>
</html>