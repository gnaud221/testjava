<html>
<body>

<table style="width:100%">
  <tr>
    <th>����ȸ��</th>
    <th>����</th> 
    <th>������¥</th>
    <th>��/����</th>
    
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