<div class="span3" id="sidebar">
		<img id="avatar" class="img-polaroid" src="admin/<?php echo $row['location']; ?>">
		<?php include('count.php'); ?>
		<ul class="nav nav-list bs-docs-sidenav nav-collapse collapse">
			<li class=""><a href="dashboard_student.php"><i class="icon-chevron-right"></i><i class="icon-group"></i>&nbsp;My Groups</a></li>
			<li class="active">
				<a href="student_notification.php"><i class="icon-chevron-right"></i><i class="icon-info-sign"></i>&nbsp;Notifications
				<?php if($not_read == '0'){
				}else{ ?>
					<span class="badge badge-important"><?php echo $not_read; ?></span>
				<?php } ?>
				</a>
			</li>
			<?php
			$message_query = mysql_query("select * from message where reciever_id = '$session_id' ")or die(mysql_error());
			$count_message = mysql_num_rows($message_query);
			?>
			<li class="">
			<a href="student_message.php"><i class="icon-chevron-right"></i><i class="icon-envelope-alt"></i>&nbsp;Messages
			</a>
			</li>
		</ul>	
</div>