<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- bootstrap start -->
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title></title>
<link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet">
<script src="<c:url value="/resources/js/jquery-3.3.1.js" />"></script>
<script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>
<!-- bootstrap end -->

<script type="text/javascript" src="<c:url value="/resources/js/jquery-3.3.1.js" />"></script>
<script type="text/javascript">
$(document).ready(function(){
	$('#myaudio').hide();
	
	$('#myaudio').on('loadeddata',function(){
		$('#myaudio').show();
	});
	
	$('#speak').click(function(){
		$('#myaudio').stop();
		$('#myaudio').attr('src','speak?&' + $('#myform').serialize());
		$('#myaudio').attr('autoplay','autoplay');
		return;
	});
});
</script>
</head>
<body>
<form id="myform" method="post">
<div class="container">
	<div class="jumbotron">
		<h2>메시지를 입력 후 음성을 선택하세요~!!!</h2>
		<p>텍스트의 내용은 선택한 보이스와 일치해야 합니다.
		혼합 언어(예:영어텍스트와 일본 여자음성)는 유효한 
		결과를 생성하지 않습니다. 한글은 조만간 지원됩니다</p>
	</div>
	<div class="row">
		<div class="col-lg-12 col-sm-12">
			<textarea class="form-control" rows="7" cols="50" name="statement"></textarea><br/>
		</div>
	</div>
	
	<div class="row">
		<div class="col-lg-10 col-sm-10">
			<select name="voice" class="form-control">
			<c:forEach items="${voiceLists}" var="currentVoice">
				<option value="${currentVoice[1]}">${currentVoice[0]}</option>
			</c:forEach>
			</select>
		</div>
		<div class="col-lg-2 col-sm-2">
			<input type="button"
			class="btn btn-default btn-success btn-block" id="speak" value="읽기" />
		</div>
	</div>
</div>
<br/><br/><br/>
<div class="row">
	<div class="col-lg-12 col-sm-12">
		<audio id="myaudio" style="width:100%;height:120%" 
		class="form-control" controls="controls" preload="auto" />
	</div>
</div>	
</form>
</body>
</html>