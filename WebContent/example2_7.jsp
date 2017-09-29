<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>注册</title>
<script type="text/javascript" src="jquery/jquery-3.2.1.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$(".left").css("box-shadow","inset");
		$("input").css("border","dash 1px #000000");
		$("#message").css("border","dotted 1px #0cff00");
		$("*").css("font-size","12px");
		$("span,legnd").css("color","#F33");
		$("input[name='hobby']").attr("checked",true);
	});

</script>
<script type="text/javascript">
	$(document).ready(function(){
		$("#submit").click(function(){
			var num1=$("input:checkbox").length;
			var num2=$("#myform input:checked").length;
			
			var val="";
			$("input:[name='checkbox']:checked").each(function(index,element){
				val=val+$(this).val()+",";
			});
			if(val.length>1){
				val=val.substring(0,val.length-1);
			}
			val="复选框项目总数："+num1+"<br>选中的个数："+num2+"<br>选中的项目："+val;
			var selected=$("select:selected").text();
			var item=$("select:selected").val();
			val=val+"<br>下拉列表框选择项的文本："+selected;
			val=val+"<br>下拉列表框选择项的值："+item;
			$("#data").html(val);
			});
	});
</script>
</head>
<body>
	<form  method="post" id="myform">
		<legend>个人基本信息</legend>
		<div>
			<label for="username" class="left">名称：</label>
			<input type="text" name="username" id="username"/>
			<span id="tips_user">*</span>
		</div>
		<div>
			<label for="password" class="left">密码：</label>
			<input type="text" name="password" id="password"/>
			<span id="tips_pass">*</span>
		</div>
		<div>
			<label for="requiredpass" class="left">确认密码：</label>
			<input type="text" name="requiredpass" id="password"/>
			<span id="tips_requiredpass">*</span>
		</div>
		<div>
			<label for="usertype" class="left">用户类型：</label>
			<select name="usertype" id="usertype">
			<option value="1">管理员</option>
			<option value="2">普通用户</option>
			</select>
		</div>
		<div>
			<label for="gender" class="left">性别</label>
			<input type="radio" name="gender" id="gender" value="男">男
			<input type="radio" name="gender" id="gender" value="女">女
			<span id="tips_gender">*</span>
		</div>
		<div>
			<label for="hobby" class="left">爱好：</label>
			<input type="checkbox" name="hobby" id="hobby" value="reading"/>阅读
			<input type="checkbox" name="hobby" id="hobby" value="music"/>音乐
			<input type="checkbox" name="hobby" id="hobby" value="sports"/>运动
			<input type="checkbox" name="hobby" id="hobby" value="travell"/>旅行
			<span id="tips_hobby">*</span>
		</div>
		<div>
			<label for="email" class="left">电子邮件：</label>
			<input type="text" name="email" id="email"/>
			<span id="tips_email">*</span>
		</div>
		<div>
			<label for="message" class="left">自我介绍：</label>
			<br>
			<textarea name="message" id="message"></textarea>
		</div>
		<div><br>
			<button type="submit" id="submit">提交</button>
			<button type="reset" id="reset">重置</button>
		</div>
		<span id="data"></span>
	</form>
</body>
</html>