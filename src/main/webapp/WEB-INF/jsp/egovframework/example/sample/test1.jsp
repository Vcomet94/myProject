<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-latest.min.js"></script>
</head>
<body>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
	<h1>API연습</h1>
	<input id="searchIn" value="이효리" disabled="disabled">
	<button id="btnTest">버튼이요</button>
	<input type="text" id="searchout" disabled="disabled">
	<script>
		$('#btnTest').click(function(){
			fnClick();
		});
		
		function fnClick(){
			
			let sahIn = $('#searchIn').val();
			let reqData =  {query : sahIn};
			alert(sahIn);
			
			$.ajax({
				method : "GET",
			    url    : "https://dapi.kakao.com/v2/search/web",
			  	data   : reqData,
			  	headers: {Authorization : "KakaoAK 6d3fd59be0561689a896c5c81f23da14"} 		
			})
			.done(function(msg){
				console.log(msg);
				console.log(msg.documents[0].title);
				let reuslt = msg.documents[0].title;
				$('#searchout').attr('value',reuslt);
			});
		}
	
		
	</script>

</body>
</html>