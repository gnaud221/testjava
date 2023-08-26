<!doctype html>
<html lang="ko">
  <head>
    <meta charset="utf-8">
    <title>CSS</title>
<style>
  table {
    width: 100%;
    border: 1px solid #444444;
    border-collapse: collapse;
  }
  th, td {
    border: 1px solid #444444;
    padding: 10px;
  }
</style>
  </head>
  <body>
  <#list message as ii>
  ${ii.city}
    <table>
   
      <thead>
     
        <tr>
          <th>시간</th><th>날씨</th><th>최저</th><th>최고</th>
        </tr>
      </thead>
      <tbody>
     
     
     

<#list ii.we as iii>
        <tr>
       
       
<#list iii as iiii>
          <td>${iiii}</td>
</#list>
         
         
         
         
         
        </tr>
        </#list>

       
       
      </tbody>
     
    </table>
    </#list>
  </body>
</html>
