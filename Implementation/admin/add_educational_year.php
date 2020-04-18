   <div class="row-fluid">
                        <!-- block -->
                        <div class="block">
                            <div class="navbar navbar-inner block-header">
                                <div class="muted pull-left">Add Educational Year</div>
                            </div>
                            <div class="block-content collapse in">
                                <div class="span12">
								<form method="post">
										<div class="control-group">
                                          <div class="controls">
                                            <input class="input focused" name="educational_year" id="focusedInput" type="text" placeholder = "Educational Year" required>
                                          </div>
                                        </div>
										
										
											<div class="control-group">
                                          <div class="controls">
												<button name="save" class="btn btn-info"><i class="icon-plus-sign icon-large"></i></button>

                                          </div>
                                        </div>
                                </form>
								</div>
                            </div>
                        </div>
                        <!-- /block -->
                    </div>
					
					<?php
if (isset($_POST['save'])){
$educational_year = $_POST['educational_year'];


$query = mysql_query("select * from educational_year where educational_year = '$educational_year'")or die(mysql_error());
$count = mysql_num_rows($query);

if ($count > 0){ ?>
<script>
alert('Data Already Exist');
</script>
<?php
}else{
mysql_query("insert into educational_year (educational_year) values('$educational_year')")or die(mysql_error());

mysql_query("insert into activity_log (date,username,action) values(NOW(),'$user_username','Add Educational Year $educational_year')")or die(mysql_error());
?>
<script>
window.location = "educational_year.php";
</script>
<?php
}
}
?>