
<?php 

    session_start();
    require_once 'config2/db2.php';

?>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>RegistrationForm_v1 by Colorlib</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		
		<!-- MATERIAL DESIGN ICONIC FONT -->
		<link rel="stylesheet" href="fonts/material-design-iconic-font/css/material-design-iconic-font.min.css">

		<!-- STYLE CSS -->
		<link rel="stylesheet" href="style5.css">
	</head>

	<body>
	<header class="header" >
			<!-- Topbar -->
			<div class="topbar">
				<div class="container">
					<div class="row">
						<div class="col-lg-6 col-md-5 col-12">
							<!-- Contact -->
						
							<!-- End Contact -->
						</div>
						<div class="col-lg-6 col-md-7 col-12">
							<!-- Top Contact -->
							<ul class="top-contact">
								<li><i class="fa fa-phone"></i>+880 1234 56789</li>
								<li><i class="fa fa-envelope"></i><a href="mailto:FanD@gmail.com">FanD@gmail.com</a></li>
							</ul>
							<!-- End Top Contact -->
						</div>
					</div>
				</div>
			</div>
			<!-- End Topbar -->
			<!-- Header Inner -->
			<div class="header-inner">
				<div class="container">
					<div class="inner">
						<div class="row">
							<div class="col-lg-3 col-md-3 col-12">
								<!-- Start Logo -->
								<div class="logo">
									<a href="index2.php"><img src="img/Fun D Logo2.png" alt="#"></a>
								</div>
								<!-- End Logo -->
								<!-- Mobile Nav -->
								<div class="mobile-nav"></div>
								<!-- End Mobile Nav -->
							</div>
							<div class="col-lg-9 col-md-11 col-14">
								<!-- Main Menu -->
								<div class="main-menu">
									<nav class="navigation">
										<ul class="nav menu">
											<li class="active"><a href="#">หน้าเเรก</i></a>
												
											</li>
											
											<li><a href="#">เกี่ยวกับเรา<i class="icofont-rounded-down"></i></a>
												<ul class="dropdown">
											<li><a href="index.html" >ทีมทันตเเพทย์</a></li> <br>
											
										</ul>
										

											<li><a href="#">บริการ<i class="icofont-rounded-down"></i></a>
												<ul class="dropdown">
													<li><a href="index.html">การดัดฟัน</a></li> <br>
													<li><a href="index.html">การขูดหินปูน</a></li> <br>
													<li><a href="index.html">การรักษารากฟัน</a></li> <br>
													<li><a href="index.html">การถอนฟันรักษาช่องปาก</a></li> <br>
													<li><a href="index.html">ทันตกรรมรากเทียม</a></li> <br>
													<li><a href="index.html">ทันตกรรมสำหรับเด็ก</a></li> <br>
												
												</ul>


												<li><a href="#">รีวิวการทำฟัน<i class="icofont-rounded-down"></i></a>
													<ul class="dropdown">
														<li><a href="index.html">การดัดฟัน</a></li> <br>
														<li><a href="index.html">การขูดหินปูน</a></li> <br>
														<li><a href="index.html">การรักษารากฟัน</a></li> <br>
														<li><a href="index.html">การถอนฟันรักษาช่องปาก</a></li> <br>
														<li><a href="index.html">ทันตกรรมรากเทียม</a></li> <br>
														<li><a href="index.html">ทันตกรรมสำหรับเด็ก</a></li> <br>
													
													</ul>
													<li><a href="productsuser.php">สินค้าFund<i ></i></a>
													<ul class="dropdown">
													
													</ul>
											
											<li><a href="#">ติดต่อเรา<i class="icofont-rounded-down"></i></a>
												<ul class="dropdown">
													<li><a href="index.html">คลินิกพิษณุโลก</a></li> <br>
													<li><a href="index.html">คลินิกกำเเพงเพชร</a></li>
												</ul>
												<li><a href="#">เพิ่มเติม<i class="icofont-rounded-down"></i></a>
													<ul class="dropdown">
												<li>  <a href="user2.php">โปรไฟล์</a></li> 
												<li>  <a href=" receipt.php ">ใบเสร็จการนัดจอง</a></li> 
												<li><a href="logout2.php">ออกจากระบบ</a></li> 
										</ul>
									</nav>
								</div>
								<!--/ End Main Menu -->
							</div>
							<div class="col-lg-2 col-12">
								
							</div>
						</div>
					</div>
				</div>
			</div>
			<!--/ End Header Inner -->
		</header>

		<div class="wrapper" style="background-image: url('images/bg-registration-form-1.jpg');">
			<div class="inner">
				<div class="image-holder">
					<img src="images/registration-form-1.jpg" alt="">
				</div>
				<form action="">
					<h3>Registration Form</h3>
					<div class="form-group">
						<input type="text" placeholder="First Name" class="form-control">
						<input type="text" placeholder="Last Name" class="form-control">
					</div>
					<div class="form-wrapper">
						<input type="text" placeholder="Username" class="form-control">
						<i class="zmdi zmdi-account"></i>
					</div>
					<div class="form-wrapper">
						<input type="text" placeholder="Email Address" class="form-control">
						<i class="zmdi zmdi-email"></i>
					</div>
					<div class="form-wrapper">
						<select name="" id="" class="form-control">
							<option value="" disabled selected>Gender</option>
							<option value="male">Male</option>
							<option value="femal">Female</option>
							<option value="other">Other</option>
						</select>
						<i class="zmdi zmdi-caret-down" style="font-size: 17px"></i>
					</div>
					<div class="form-wrapper">
						<input type="password" placeholder="Password" class="form-control">
						<i class="zmdi zmdi-lock"></i>
					</div>
					<div class="form-wrapper">
						<input type="password" placeholder="Confirm Password" class="form-control">
						<i class="zmdi zmdi-lock"></i>
					</div>
					<button>Register
						<i class="zmdi zmdi-arrow-right"></i>
					</button>
				</form>
			</div>
		</div>
		
	</body><!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>