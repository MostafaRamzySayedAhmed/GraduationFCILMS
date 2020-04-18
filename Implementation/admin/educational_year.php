<?php include('header.php'); ?>
<?php include('session.php'); ?>
    <body>
		<?php include('navbar.php'); ?>
        <div class="container-fluid">
            <div class="row-fluid">
				<?php include('educational_year_sidebar.php'); ?>
				<div class="span3" id="adduser">
				<?php include('add_educational_year.php'); ?>		   			
				</div>
                <div class="span6" id="">
                     <div class="row-fluid">
                        <!-- block -->
                        <div id="block_bg" class="block">
                            <div class="navbar navbar-inner block-header">
                                <div class="muted pull-left">Educational Years List</div>
                            </div>
                            <div class="block-content collapse in">
                                <div class="span12">
								<form action="delete_sy.php" method="post">
  									<table cellpadding="0" cellspacing="0" border="0" class="table" id="example">
									<a data-toggle="modal" href="#user_delete" id="delete"  class="btn btn-danger" name=""><i class="icon-trash icon-large"></i></a>
									<?php include('modal_delete.php'); ?>
										
										  <tr>
												<th></th>
												<th>Educational Year</th>
												<th></th>
										   </tr>
										
										<tbody>
													<?php
													$user_query = mysql_query("select * from educational_year")or die(mysql_error());
													while($row = mysql_fetch_array($user_query)){
													$id = $row['educational_year_id'];
													?>
									
												<tr>
												<td width="30">
												<input id="optionsCheckbox" class="uniform_on" name="selector[]" type="checkbox" value="<?php echo $id; ?>">
												</td>
												<td><?php echo $row['educational_year']; ?></td>
	
									
												</tr>
												<?php } ?>
										</tbody>
									</table>
									</form>
                                </div>
                            </div>
                        </div>
                        <!-- /block -->
                    </div>


                </div>
            </div>
		<?php include('footer.php'); ?>
        </div>
		<?php include('script.php'); ?>
    </body>

</html>