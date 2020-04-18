<center>
		<footer>
			
		<p>FCI Learning Management System - &copy; Copyright <?php
											$mission_query = mysql_query("select * from content where title  = 'Footer' ")or die(mysql_error());
											$mission_row = mysql_fetch_array($mission_query);
											echo $mission_row['content'];
										?></p>
		</footer>
</center>

