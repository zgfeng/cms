<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>main</title>
<link rel="stylesheet" type="text/css" href="../style/admin.css" />
<script type="text/javascript" src="../js/admin_link.js"></script>
</head>
<body id="main">

<div class="map">
	管理首页 &gt;&gt; 内容管理 &gt;&gt; <strong id="title"><?php echo $this->_vars['title'];?></strong>
</div>

<ol>
	<li><a href="link.php?action=show" class="selected">友情链接列表</a></li>
	<li><a href="link.php?action=add">新增友情链接</a></li>
	<?php if ($this->_vars['update']) {?>
	<li><a href="link.php?action=update&id=<?php echo $this->_vars['id'];?>">修改友情链接</a></li>
	<?php } ?>
</ol>

<?php if ($this->_vars['show']) {?>
<table cellspacing="0">
	<tr><th>编号</th><th>网站名称</th><th>网址地址</th><th>Logo地址</th><th>站长名</th><th>类型</th><th>状态</th><th>操作</th></tr>
	<?php if ($this->_vars['AllLink']) {?>
	<?php foreach ($this->_vars['AllLink'] as $key=>$value) { ?>
	<tr>
		<td><script type="text/javascript">document.write(<?php echo $key+1?>+<?php echo $this->_vars['num'];?>);</script></td>
		<td><?php echo $value->webname?></td>
		<td title="<?php echo $value->fullweburl?>"><?php echo $value->weburl?></td>
		<td title="<?php echo $value->fulllogourl?>"><?php echo $value->logourl?></td>
		<td><?php echo $value->user?></td>
		<td><?php echo $value->type?></td>
		<td><?php echo $value->state?></td>
		<td><a href="link.php?action=update&id=<?php echo $value->id?>">修改</a> | <a href="link.php?action=delete&id=<?php echo $value->id?>" onclick="return confirm('你真的要删除这个链接吗？') ? true : false">删除</a></td>
	</tr>
	<?php } ?>
	<?php } else { ?>
	<tr><td colspan="8">对不起，没有任何数据</td></tr>
	<?php } ?>
</table>
<div id="page"><?php echo $this->_vars['page'];?></div>
<?php } ?>


<?php if ($this->_vars['add']) {?>
<form method="post" name="friendlink">
	<input type="hidden" value="1" name="state" />
	<table cellspacing="0" class="left">
		<tr><td>网站类型：<input type="radio" name="type" onclick="link(1)" value="1" checked="checked" /> 文字链接
									<input type="radio" name="type" onclick="link(2)" value="2" /> Logo链接</td></tr>
		<tr><td>网站名称：<input type="text" class="text" name="webname" /> <span class="red">[必填]</span> ( * 网站名称不能为空，不大于20位 )</td></tr>
		<tr><td>网站地址：<input type="text" class="text" name="weburl" /> <span class="red">[必填]</span> ( *  网站地址不能为空，不大于100位 )</td></tr>
		<tr id="logo" style="display:none;"><td>Logo地址：<input type="text" class="text" name="logourl" /> <span class="red">[必填]</span> ( * Logo地址不能为空，不大于100位 )</td></tr>
		<tr><td>站 长 名：<input type="text" class="text" name="user" /></td></tr>
		<tr><td><input type="submit" name="send" value="新增友情链接" onclick="return checkLink();" class="submit level" /> [ <a href="<?php echo $this->_vars['prev_url'];?>">返回列表</a> ]</td></tr>
	</table>
</form>
<?php } ?>

<?php if ($this->_vars['update']) {?>
<form method="post" name="add">
	<input type="hidden" value="<?php echo $this->_vars['id'];?>" name="id" />
	<input type="hidden" value="<?php echo $this->_vars['prev_url'];?>" name="prev_url" />
	<input type="hidden" value="<?php echo $this->_vars['state'];?>" name="state" />
	<table cellspacing="0" class="left">
		<tr><td>网站类型：<input type="radio" name="type" <?php echo $this->_vars['text_type'];?> onclick="link(1)" value="1"  /> 文字链接
									<input type="radio" name="type" <?php echo $this->_vars['logo_type'];?> onclick="link(2)" value="2" /> Logo链接</td></tr>
		<tr><td>网站名称：<input type="text" value="<?php echo $this->_vars['webname'];?>" class="text" name="webname" /> <span class="red">[必填]</span> ( * 网站名称不能为空，不大于20位 )</td></tr>
		<tr><td>网站地址：<input type="text" value="<?php echo $this->_vars['weburl'];?>"  class="text" name="weburl" /> <span class="red">[必填]</span> ( *  网站地址不能为空，不大于100位 )</td></tr>
		<tr id="logo" style="<?php echo $this->_vars['logo'];?>"><td>Logo地址：<input type="text" value="<?php echo $this->_vars['logourl'];?>"  class="text" name="logourl" /> <span class="red">[必填]</span> ( * Logo地址不能为空，不大于100位 )</td></tr>
		<tr><td>站 长 名：<input type="text" class="text" name="user" value="<?php echo $this->_vars['user'];?>"  /></td></tr>
		<tr><td><input type="submit" name="send" value="修改友情链接" onclick="return checkLink();" class="submit level" /> [ <a href="<?php echo $this->_vars['prev_url'];?>">返回列表</a> ]</td></tr>
	</table>
</form>
<?php } ?>



</body>
</html>