<?php
include "header.php";
session_start();
if(isset($_POST['sub'])){
    $doc=$_POST['doc'];
    $user=$_POST['user'];
    $date=$_POST['date'];
    $time=$_POST['time'];
    $msg=$_POST['msg'];
    $q="INSERT INTO `appoinment`(`doc_id_FK`, `user_id_FK`, `date`, `time`, `statuss`, `message`) 
    VALUES ('$doc','$user','$date','$time','pending','$msg')";
    $result=mysqli_query($con,$q);
    if($result){
        echo "<script>alert('Appoinment booked, keep checkinh its status');</script>";
        echo "<script>window.location.href='appoin.php';</script>";
    }
    else{
      echo mysqli_error($con);
    }
}
?>
   <!-- ======= Contact Section ======= -->
   <section id="contact" class="contact" style="margin-top:100px;">
      <div class="container">

        <div class="section-title">
          <h2>Appointment</h2>
          <h3>There are several departments are found in Care</h3>
        </div>
      </div>

      <div>
        <iframe style="border:0; width: 100%; height: 350px;" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3618.137712000802!2d67.0304584753516!3d24.927378142576625!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3eb33f90157042d3%3A0x93d609e8bec9a880!2sAptech%20Computer%20Education%20North%20Nazimabad%20Center!5e0!3m2!1sen!2s!4v1696422987870!5m2!1sen!2s" frameborder="0" allowfullscreen></iframe>
      </div>
     

      <div class="container">
        <div class="row mt-5">

          <div class="col-lg-4">
            <div class="info">
              <div class="address">
                <i class="bi bi-geo-alt"></i>
                <h4>Location:</h4>
                <p>Aptech, north Nazimabad center.</p>
              </div>

              <div class="email">
                <i class="bi bi-envelope"></i>
                <h4>Email:</h4>
                <p>Care@healthcare.com</p>
              </div>

              <div class="phone">
                <i class="bi bi-phone"></i>
                <h4>Call:</h4>
                <p>+1 5589 55488 55s</p>
              </div>

            </div>

          </div>

          <div class="col-lg-8 mt-5 mt-lg-0">

            <form action="" method="post" >
              <div class="row">
              <div class="col-md-6 form-group">
              <div class="form-control" >
                   
    
                   
                   <?php 
 
 $q = "SELECT * FROM doctor where status=0";

 $rows=mysqli_query($con ,$q);

 echo  "<select class='dropdown' name='doc'>";
 echo "<option value='' disabled selected> Select Doctor Name </option>";
 while($data =$rows->fetch_assoc()){
    echo "<option class='col-sm-2 col-sm-2 control-label' value='$data[Id] '>$data[doc_name] </option>\n";
 }
?>
   
</select>

                            </div></div>
                            <div class="col-md-6 form-group">
                            <input type="number" name="user" class="form-control" id="name" value="<?php echo $_SESSION['Id']?>" placeholder="User Name" readonly required>
           </div>
                <div class="col-md-6 form-group">
                  <input type="date" name="date" class="form-control" id="name"  placeholder="Appointment Date" required>
                </div>
                <div class="col-md-6 form-group mt-3 mt-md-0">
                  <input type="time" class="form-control" name="time" id="email" placeholder="Appointment time" required>
                </div>
              </div>
              <div class="form-group mt-3">
                <textarea type="text" class="form-control" name="msg" id="subject" placeholder="Message" required></textarea>
              </div>
              
              
              <div class="text-center"><button type="submit" name="sub">Book</button>
</div>
            </form>

          </div>

        </div>

      </div>
    </section><!-- End Contact Section -->
    <?php
include "footer.php";
?>