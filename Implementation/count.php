					<?php
						$educational_year_query = mysql_query("select * from educational_year order by educational_year DESC")or die(mysql_error());
						$educational_year_query_row = mysql_fetch_array($educational_year_query);
						$educational_year = $educational_year_query_row['educational_year'];
						?>
				
	 				<?php $query_yes = mysql_query("select * from teacher_class_student
					LEFT JOIN teacher_class ON teacher_class.teacher_class_id = teacher_class_student.teacher_class_id 
					LEFT JOIN class ON class.class_id = teacher_class.class_id 
					LEFT JOIN subject ON subject.subject_id = teacher_class.subject_id
					LEFT JOIN teacher ON teacher.teacher_id = teacher_class_student.teacher_id 
					JOIN notification ON notification.teacher_class_id = teacher_class.teacher_class_id 
					where teacher_class_student.student_id = '$session_id' and educational_year = '$educational_year'   order by notification.date_of_notification DESC
					")or die(mysql_error());
					$count_no = mysql_num_rows($query_yes);

		
		            ?>
					<?php $query_no = mysql_query("select * from notification 
					LEFT JOIN notification_read ON notification_read.notification_id = notification.notification_id
					where notification_read.student_id  = '$session_id'
					")or die(mysql_error());
					$count_yes = mysql_num_rows($query_no);
					
		            ?>
					
					<?php $not_read = $count_no -  $count_yes; ?>