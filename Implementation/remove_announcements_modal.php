		<!-- Modal -->
<div id="<?php echo $id; ?>" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-header">
		<button type="button" class="close" data-dismiss="modal" aria-hidden="true">x</button>
		<h3 id="myModalLabel">Remove Posts</h3>
	</div>
		<div class="modal-body">
		<div class="alert alert-danger">
			Are You Sure You Want To Remove This Post On Your Group ?
		</div>
		</div>
	<div class="modal-footer">
	
		<button class="btn" data-dismiss="modal" aria-hidden="true"><i class="icon-remove icon-large"></i> Close</button>
		
		<button   id="<?php echo $id; ?>" class="btn btn-danger remove" data-dismiss="modal" aria-hidden="true"><i class="icon-check icon-large"></i> Yes</button>

	</div>
</div>			