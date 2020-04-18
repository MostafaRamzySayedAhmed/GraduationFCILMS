<?php include('header.php'); ?>
<?php include('session.php'); ?>
    <body>
		<?php include('navbar.php'); ?>
        <div class="container-fluid">
            <div class="row-fluid">
				<?php include('subject_sidebar.php'); ?>
		
						<div class="span9" id="content">
		                    <div class="row-fluid">
							
		                        <!-- block -->
		                        <div class="block">
		                            <div class="navbar navbar-inner block-header">
		                                <div class="muted pull-left">Add Subject</div>
		                            </div>
		                            <div class="block-content collapse in">
									<a href="subjects.php"><i class="icon-arrow-left"></i> Back</a>
									    <form class="form-horizontal" method="post">
										<div class="control-group">
											<label class="control-label" for="inputEmail">Subject Code</label>
											<div class="controls">
											<input type="text" name="subject_code" id="inputEmail" placeholder="Subject Code">
											</div>
										</div>
										<div class="control-group">
											<label class="control-label" for="inputPassword">Subject Title</label>
											<div class="controls">
											<input type="text" class="span8" name="title" id="inputPassword" placeholder="Subject Title" required>
											</div>
										</div>
										<div class="control-group">
											<label class="control-label" for="inputPassword">Number of Units</label>
											<div class="controls">
											<input type="text" class="span1" name="unit" id="inputPassword" required>
											</div>
											
										</div>
										<div class="control-group">
											<label class="control-label" for="inputPassword">Level</label>
											<div class="controls">
												<select name="level">
													<option></option>
													<option>FCI-1</option>
													<option>FCI-2</option>
													<option>FCI-3-CS</option>
													<option>FCI-3-IS</option>
													<option>FCI-3-IT</option>
													<option>FCI-4-CS</option>
													<option>FCI-4-IS</option>
													<option>FCI-4-IT</option>
												</select>
											</div>
										</div>
										
											<div class="control-group">
											<label class="control-label" for="inputPassword">Semester</label>
											<div class="controls">
												<select name="semester">
													<option></option>
													<option>1st</option>
													<option>2nd</option>
												</select>
											</div>
										</div>
										
										<div class="control-group">
											<label class="control-label" for="inputPassword">Pre-Requistes</label>
											<div class="controls">
											<input type="text" class="span8" name="pre_req" id="inputPassword" placeholder="Pre-Requistes" required>
											</div>
										</div>
										
										<div class="control-group">
											<label class="control-label" for="inputPassword">The Subject Lecturer</label>
											<div class="controls">
											<input type="text" class="span8" name="sub_lec" id="inputPassword" placeholder="The Subject Lecturer" required>
											</div>
										</div>
										
										<div class="control-group">
											<label class="control-label" for="inputPassword">Quiz Grade</label>
											<div class="controls">
											<input type="text" class="span1" name="quiz_grade" id="inputPassword" required>
											</div>
										</div>
										
										<div class="control-group">
											<label class="control-label" for="inputPassword">Midterm Exam Grade</label>
											<div class="controls">
											<input type="text" class="span1" name="midterm_exam_grade" id="inputPassword" required>
											</div>
										</div>
										
										<div class="control-group">
											<label class="control-label" for="inputPassword">Practical Exam Grade</label>
											<div class="controls">
											<input type="text" class="span1" name="practical_exam_grade" id="inputPassword">
											</div>
										</div>
										
										<div class="control-group">
											<label class="control-label" for="inputPassword">Final Exam Grade</label>
											<div class="controls">
											<input type="text" class="span1" name="final_exam_grade" id="inputPassword" required>
											</div>
										</div>
								
										<div class="control-group">
											<label class="control-label" for="inputPassword">Description</label>
											<div class="controls">
													<textarea name="description" id="ckeditor_full"></textarea>
											</div>
										</div>
												
																		
											
										<div class="control-group">
										<div class="controls">
										
										<button name="save" type="submit" class="btn btn-info"><i class="icon-save"></i> Save</button>
										</div>
										</div>
										</form>
										
										<?php
										if (isset($_POST['save'])){
										$subject_code = $_POST['subject_code'];
										$title = $_POST['title'];
										$unit = $_POST['unit'];
										$description = $_POST['description'];
										$semester = $_POST['semester'];
										$level = $_POST['level'];
										$pre_req = $_POST['pre_req'];
										$sub_lec = $_POST['sub_lec'];
										$quiz_grade = $_POST['quiz_grade'];
										$midterm_exam_grade = $_POST['midterm_exam_grade'];
										$practical_exam_grade = $_POST['practical_exam_grade'];
										$final_exam_grade = $_POST['final_exam_grade'];
										
										
										$query = mysql_query("select * from subject where subject_code = '$subject_code' ")or die(mysql_error());
										$count = mysql_num_rows($query);

										if ($count > 0){ ?>
										<script>
										alert('Subject Already Exists');
										</script>
										<?php
										}else{
										mysql_query("insert into subject (subject_code,subject_title,description,unit,
										semester,level,pre_req,sub_lec,quiz_grade,midterm_exam_grade,
									    practical_exam_grade,final_exam_grade) values('$subject_code','$title','$description','$unit',
										'$semester','$level','$pre_req','$sub_lec',$quiz_grade',
										'$midterm_exam_grade','$practical_exam_grade',
										'$final_exam_grade')")or die(mysql_error());
										
										mysql_query("insert into activity_log (date,username,action) values(NOW(),'$user_username','Add Subject $subject_code')")or die(mysql_error());
										
										
										?>
										<script>
										window.location = "subjects.php";
										</script>
										<?php
										}
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