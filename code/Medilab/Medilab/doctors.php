<?php
include "header.php";
if(isset($_POST['sea'])){
    $id=$_POST['search'];
    $q="select * from doctor join category on doctor.cat_id_FK=category.Id where doctor.status=0 and category.cat_name='$id'";   
}
else{
$q="select * from doctor join category on doctor.cat_id_FK=category.Id where doctor.status=0";}
?>
    <!-- ======= Doctors Section ======= -->
    <section id="doctors" class="doctors" style="margin-top:100px;">
      <div class="container">

        <div class="section-title">
          <h2>Doctors</h2>
          <p>Magnam dolores commodi suscipit. Necessitatibus eius consequatur ex aliquid fuga eum quidem. Sit sint consectetur velit. Quisquam quos quisquam cupiditate. Et nemo qui impedit suscipit alias ea. Quia fugiat sit in iste officiis commodi quidem hic quas.</p>
        </div>
<div class="row">
<form action="" method="post">
<input type="text" name="search" placeholder="Search by speciality" value="">

<button type="submit" name="sea">Search</button>
</form>

</div>
        <div class="row">
<?php

$result=mysqli_query($con,$q);
while($data=mysqli_fetch_assoc($result)){
?>

          <div class="col-lg-6">
            <div class="member d-flex align-items-start">
              <div class="pic"><img src="../../Admin/<?php echo $data['doc_img']?>" class="img-fluid" alt=""></div>
              <div class="member-info">
                <h4><?php echo $data['doc_name']?></h4>
                <span><?php echo $data['experience']?></span>
                <span><?php echo $data['cat_name']?></span>
                <p><?php echo $data['contact']?></p>
               
              </div>
            </div>
          </div>

         
<?php
}
?>
    

        </div>

      </div>
    </section><!-- End Doctors Section -->
    <?php
include "footer.php";
?>