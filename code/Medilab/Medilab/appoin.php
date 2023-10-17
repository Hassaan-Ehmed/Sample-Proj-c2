<?php
include "header.php";
session_start();
?>
<section id="contact" class="contact" style="margin-top:100px;">
      <div class="container">

        <div class="section-title">
          <h2>Appointment</h2>
          <p>Magnam dolores commodi suscipit. Necessitatibus eius consequatur ex aliquid fuga eum quidem. Sit sint consectetur velit. Quisquam quos quisquam cupiditate. Et nemo qui impedit suscipit alias ea. Quia fugiat sit in iste officiis commodi quidem hic quas.</p>
        </div>
      </div>
      <section id="main-content">
          <section class="wrapper">
          <div class="col-md-15 mt">
	                  	<div class="content-panel">
	                          <table class="table table-hover">
	                  	  	<!-- <h4>Category</h4>  <h4><i class="fa fa-angle-right"></i> Hover Table</h4> -->
	                  	  	  <hr>
	                              <thead>
	                              <tr>
    <th>id</th>
    <th>Doctor Name</th>
    <th>Patient Name</th>
    <th>Date</th>
    <th>Time</th>
    <th>Status</th>
    <th>Your Message</th>
</tr>
</thead>
<tbody>
    <?php
    $user=$_SESSION['Id'];
    $users=$_SESSION['Username'];
    $q="SELECT * from appoinment join doctor on appoinment.doc_id_FK=doctor.Id where appoinment.user_id_FK=$user";
    $result=mysqli_query($con,$q);
    while($data=mysqli_fetch_assoc($result)){
    ?>
<tr>
<td><?php echo $data['Id']?></td>
<td><?php echo $data['doc_name']?></td>
<td><?php echo $users?></td>
<td><?php echo $data['date']?></td>
<td><?php echo $data['time']?></td>
<td><?php echo $data['statuss']?></td>
<td><?php echo $data['message']?></td>
</tr>
<?php
    }
?>
    
    </tbody>
	                          </table>
	                  	  </div><!--/content-panel -->
	                  </div><!-- /col-md-12 -->
				</div><!-- row -->

		</section><!----/wrapper -->
      </section><!--/MAIN CONTENT -->

<?php
include "footer.php";
?>