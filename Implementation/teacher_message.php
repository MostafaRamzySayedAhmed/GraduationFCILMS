<?php include('header_dashboard.php'); ?>
<?php include('session.php'); ?>
<body>
		<?php include('navbar_teacher.php'); ?>
        <div class="container-fluid">
            <div class="row-fluid">
				<?php include('teacher_message_sidebar.php'); ?>
               <div class="span6" id="content">
                     <div class="row-fluid">
					    <!-- breadcrumb -->	
					     <ul class="breadcrumb">
								<?php
								$educational_year_query = mysql_query("select * from educational_year order by educational_year DESC")or die(mysql_error());
								$educational_year_query_row = mysql_fetch_array($educational_year_query);
								$educational_year = $educational_year_query_row['educational_year'];
								?>
								<li><a href="#">Messages</a><span class="divider">/</span></li>
								<li><a href="#"><b>Inbox</b></a><span class="divider">/</span></li>
								<li><a href="#">Educational Year: <?php echo $educational_year_query_row['educational_year']; ?></a></li>
						</ul>
						 <!-- end breadcrumb -->
					 
                        <!-- block -->
                        <div id="block_bg" class="block">
                            <div class="navbar navbar-inner block-header">
                                <div id="" class="muted pull-left"></div>
                            </div>
                            <div class="block-content collapse in">
                                <div class="span12">
								<form action="read_message.php" method="post">
										
										
										<ul class="nav nav-pills">
										<li class="active"><a href="teacher_message.php"><i class="icon-envelope-alt"></i>Inbox</a></li>
										<li class=""><a href="sent_message.php"><i class="icon-envelope-alt"></i>Sent Messages</a></li>
										</ul>
										
										
									<?php
								 $query_announcement = mysql_query("select * from message
																	LEFT JOIN student ON student.student_id = message.sender_id
																	where  message.reciever_id = '$session_id' order by date_sended DESC
																	")or die(mysql_error());
								 $count_my_message = mysql_num_rows($query_announcement);	
								 if ($count_my_message != '0'){
								 while($row = mysql_fetch_array($query_announcement)){	
								 $id = $row['message_id'];
								 $id_2 = $row['message_id'];
								 $sender_id = $row['sender_id'];
								 $sender_name = $row['sender_name'];
								 $reciever_name = $row['reciever_name'];
								 ?>
											<div class="post"  id="del<?php echo $id; ?>">
											<div class="message_content">
											<?php echo $row['content']; ?>
											</div>
											<div class="pull-right">
											
											</div>
													<hr>
											Sent by: <strong><?php echo $row['sender_name']; ?></strong>
											<i class="icon-calendar"></i> <?php echo $row['date_sended']; ?>
														
														
														
													<div class="pull-right">
													<a class="btn btn-link"  href="#<?php echo $id; ?>" data-toggle="modal" ><i class="icon-remove"></i> Remove </a>
													<?php include("remove_inbox_message_modal.php"); ?>
											
													</div>
											</div>
											
								<?php }}else{ ?>
								<div class="alert alert-info"><i class="icon-info-sign"></i> No Message Inbox</div>
								<?php } ?>		
								</form>		
                                </div>
                            </div>
                        </div>
                        <!-- /block -->
                    </div>
					
<script type="text/javascript">
	$(document).ready( function() {
		$('.remove').click( function() {
		var id = $(this).attr("id");
			$.ajax({
			type: "POST",
			url: "remove_inbox_message.php",
			data: ({id: id}),
			cache: false,
			success: function(html){
			$("#del"+id).fadeOut('slow', function(){ $(this).remove();}); 
			$('#'+id).modal('hide');
			$.jGrowl("Your Received Message Is Successfully Deleted", { header: 'Message Delete' });	
			}
			}); 		
			return false;
		});				
	});
</script>

                </div>
				<?php include('create_message.php') ?>
            </div>
		<?php include('footer.php'); ?>
        </div>
		<?php include('script.php'); ?>
    </body>
</html>