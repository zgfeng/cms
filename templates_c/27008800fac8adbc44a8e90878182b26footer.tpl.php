<div id="link">
	<h2><span><a href="friendlink.php?action=frontshow" target="_blank">所有链接</a> | <a href="friendlink.php?action=frontadd" target="_blank">申请加入</a></span>友情链接</h2>
	<ul>
		<?php if ($this->_vars['text']) {?>
		<?php foreach ($this->_vars['text'] as $key=>$value) { ?>
		<li><a href="<?php echo $value->weburl?>" target="_blank"><?php echo $value->webname?></a></li>
		<?php } ?>
		<?php } ?>
	</ul>
	<dl>
		<?php if ($this->_vars['logo']) {?>
		<?php foreach ($this->_vars['logo'] as $key=>$value) { ?>
		<dd><a href="<?php echo $value->weburl?>" target="_blank"><img src="<?php echo $value->logourl?>" alt="<?php echo $value->webname?>" /></a></dd>
		<?php } ?>
		<?php } ?>
	</dl>
</div>
<div id="footer">
	<p>Powered by <span>YC60.COM</span> (C) 2004-2011 DesDev Inc.</p>
	<p>Copyright (C) 2004-2011 YC60CMS. <span>瓢城Web俱乐部</span> 版权所有 <script type="text/javascript">var cnzz_protocol = (("https:" == document.location.protocol) ? " https://" : " http://");document.write(unescape("%3Cspan id='cnzz_stat_icon_5439317'%3E%3C/span%3E%3Cscript src='" + cnzz_protocol + "s19.cnzz.com/stat.php%3Fid%3D5439317%26show%3Dpic1' type='text/javascript'%3E%3C/script%3E"));</script></p>
</div>