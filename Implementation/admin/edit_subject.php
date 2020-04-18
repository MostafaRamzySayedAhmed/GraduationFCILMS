<?php include('header.php'); ?>
<?php include('session.php'); ?>
<?php $get_id = $_GET['id']; ?>
    <body>
		<?php include('navbar.php'); ?>
        <div class="container-fluid">
            <div class="row-fluid">
				<?php include('subject_sidebar.php'); ?>
		
						<div class="span9" id="content">
		                    <div class="row-fluid">
									 <a href="add_subject.php" class="btn btn-info"><i class="icon-plus-sign icon-large"></i> Edit Subject</a>
		                        <!-- block -->
		                        <div id="" class="block">
		                            <div class="navbar navbar-inner block-header">
		                                <div class="muted pull-left">Edit Subject</div>
		                            </div>
		                            <div class="block-content collapse in">
									<a href="subjects.php"><i class="icon-arrow-left"></i> Back</a>
									
									<?php
									$query = mysql_query("select * from subject where subject_id = '$get_id'")or die(mysql_error());
									$row = mysql_fetch_array($query);
									?>
									
									    <form class="form-horizontal" method="post">
										<div class="control-group">
										<label class="control-label" for="inputEmail">Subject Code</label>
										<div class="controls">
										<input type="text" value="<?php echo $row['subject_code']; ?>" name="subject_code" id="inputEmail" placeholder="Subject Code" required>
										</div>
										</div>
										<div class="control-group">
											<label class="control-label" for="inputPassword">Subject Title</label>
											<div class="controls">
											<input type="text" value="<?php echo $row['subject_title']; ?>" class="span8" name="title" id="inputPassword" placeholder="Subject Title" required>
											</div>
										</div>
										<div class="control-group">
											<label class="control-label" for="inputPassword">Number of Units</label>
											<div class="controls">
											<input type="text" value="<?php echo $row['unit']; ?>" class="span1" name="unit" id="inputPassword"  required>
											</div>
										</div>
							
									    <div class="control-group">
											<label class="control-label" for="inputPassword">Level</label>
											<div class="controls">
											<input type="text" value="<?php echo $row['level']; ?>" class="span8" name="level" id="inputPassword" placeholder="Level" required>
											</div>
										</div>
									
									
									   <div class="control-group">
											<label class="control-label" for="inputPassword">Semester</label>
											<div class="controls">
											<input type="text" value="<?php echo $row['semester']; ?>" class="span8" name="semester" id="inputPassword" placeholder="Semester" required>
											</div>
										</div>
								
										
										<div class="control-group">
											<label class="control-label" for="inputPassword">Pre-Requistes</label>
											<div class="controls">
											<input type="text" value="<?php echo $row['pre_req']; ?>" class="span8" name="pre_req" id="inputPassword" placeholder="There Are No Pre-Requistes For This Subject"
											</div>
										</div>
											</br>
										
										<div class="control-group">
											<label class="control-label" for="inputPassword">The Subject Lecturer</label>
											<div class="controls">
											<input type="text" value="<?php echo $row['sub_lec']; ?>" class="span8" name="sub_lec" id="inputPassword">
											</div>
										</div>
										
										<div class="control-group">
											<label class="control-label" for="inputPassword">Quiz Grade</label>
											<div class="controls">
											<input type="text" value="<?php echo $row['quiz_grade']; ?>" class="span1" name="quiz_grade" id="inputPassword" required>
											</div>
										</div>
										
										<div class="control-group">
											<label class="control-label" for="inputPassword">Midterm Exam Grade</label>
											<div class="controls">
											<input type="text" class="span1" value="<?php echo $row['midterm_exam_grade']; ?>" name="midterm_exam_grade" id="inputPassword" required>
											</div>
										</div>
										
										<div class="control-group">
											<label class="control-label" for="inputPassword">Practical Exam Grade</label>
											<div class="controls">
											<input type="text" class="span1" value="<?php echo $row['practical_exam_grade']; ?>" name="practical_exam_grade" id="inputPassword">
											</div>
										</div>
										
										<div class="control-group">
											<label class="control-label" for="inputPassword">Final Exam Grade</label>
											<div class="controls">
											<input type="text" value="<?php echo $row['final_exam_grade']; ?>" class="span1" name="final_exam_grade" id="inputPassword" required>
											</div>
										</div>
										
										<div class="control-group">
											<label class="control-label" for="inputPassword">Description</label>
											<div class="controls">
													<textarea name="description" id="ckeditor_full">
													<?php echo $row['description']; ?>
													</textarea>
											</div>
										</div>
												
											
										<div class="control-group">
										<div class="controls">
										
										<button name="update" type="submit" class="btn btn-info"><i class="icon-save icon-large"></i> Update</button>
										</div>
										</div>
										</div>	
										</form>
										
										<?php
										if (isset($_POST['update'])){
										$subject_code = $_POST['subject_code'];
										$title = $_POST['title'];
										$unit = $_POST['unit'];
										$description = $_POST['description'];
										$level = $_POST['level'];
										$semester = $_POST['semester'];
										$pre_req = $_POST['pre_req'];
										$sub_lec = $_POST['sub_lec'];
										$quiz_grade = $_POST['quiz_grade'];
										$midterm_exam_grade = $_POST['midterm_exam_grade'];
										$practical_exam_grade = $_POST['practical_exam_grade'];
										$final_exam_grade = $_POST['final_exam_grade'];
										
									
										mysql_query("update subject set subject_code = '$subject_code' ,
																		subject_title = '$title',
																		unit  = '$unit',
																		level = '$level',
																		semester = '$semester',
																		quiz_grade = '$quiz_grade',
																		pre_req = '$pre_req',
																		sub_lec = '$sub_lec',
																		midterm_exam_grade = '$midterm_exam_grade',
																		practical_exam_grade = '$practical_exam_grade',
																		final_exam_grade = '$final_exam_grade',
																		description = '$description'
																		
																		where subject_id = '$get_id' ")or die(mysql_error());
																		
										mysql_query("insert into activity_log (date,username,action) values(NOW(),'$user_username','Edit Subject $subject_code')")or die(mysql_error());
										
										?>
										<script>
										window.location = "subjects.php";
										</script>
										<?php
										}
										
										
										?>
									
								
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