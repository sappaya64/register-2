<?php
    session_start();
    require_once 'config2/db2.php';
?>
<!DOCTYPE html>
<html lang="th">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ระบบลงทะเบียน PDO</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
   		<!-- Bootstrap CSS -->
		<link rel="stylesheet" href="css/bootstrap.min.css">
		<!-- Nice Select CSS -->
		<link rel="stylesheet" href="css/nice-select.css">
		<!-- Font Awesome CSS -->
        <link rel="stylesheet" href="css/font-awesome.min.css">
		<!-- icofont CSS -->
        <link rel="stylesheet" href="css/icofont.css">
		<!-- Slicknav -->
		<link rel="stylesheet" href="css/slicknav.min.css">
		<!-- Owl Carousel CSS -->
        <link rel="stylesheet" href="css/owl-carousel.css">
		<!-- Datepicker CSS -->
		<link rel="stylesheet" href="css/datepicker.css">
		<!-- Animate CSS -->
        <link rel="stylesheet" href="css/animate.min.css">
		<!-- Magnific Popup CSS -->
        <link rel="stylesheet" href="css/magnific-popup.css">
		
		<!-- Medipro CSS -->
        <link rel="stylesheet" href="css/normalize.css">
        <link rel="stylesheet" href="style.css">
        <link rel="stylesheet" href="css/responsive.css">
		
   <style>
        body {
           
            color: #ffffff;
            font-family: 'Arial', sans-serif;
        }

        .container {
            background-color: rgba(255, 255, 255, 0.8);
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            padding: 20px;
           
        }

        .form-label {
            color: #2c3e50;
        }

        .btn-primary {
            background-color: #3498db;
            border-color: #3498db;
        }

        .btn-primary:hover {
            background-color: #2980b9;
            border-color: #2980b9;
        }
    </style>
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
									<a href="index3.php"><img src="img/Fun D Logo2.png" alt="#"></a>
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
    <div class="container mt-5">
        <form action="signup_db2.php" method="post">
            <?php if (isset($_SESSION['error'])) { ?>
                <div class="alert alert-danger" role="alert">
                    <?php
                        echo $_SESSION['error'];
                        unset($_SESSION['error']);
                    ?>
                </div>
            <?php } ?>
            <?php if (isset($_SESSION['success'])) { ?>
                <div class="alert alert-success" role="alert">
                    <?php
                        echo $_SESSION['success'];
                        unset($_SESSION['success']);
                    ?>
                </div>
            <?php } ?>
            <?php if (isset($_SESSION['warning'])) { ?>
                <div class="alert alert-warning" role="alert">
                    <?php
                        echo $_SESSION['warning'];
                        unset($_SESSION['warning']);
                    ?>
                </div>
            <?php } ?>

            <div class="mb-3">
                <label for="firstname" class="form-label">First name</label>
                <input type="text" class="form-control" name="firstname" aria-describedby="firstname">
            </div>
            <div class="mb-3">
                <label for="lastname" class="form-label">Last name</label>
                <input type="text" class="form-control" name="lastname" aria-describedby="lastname">
            </div>
            <div class="mb-3">
                <label for="age" class="form-label">Age</label>
                <input type="text" class="form-control" name="age" aria-describedby="age">
            </div>

            <label for="gender" class="form-label">Gender:</label>
            <select id="gender" name="gender" class="form-select" required>
                <option value="ชาย">ชาย</option>
                <option value="หญิง">หญิง</option>
                <option value="อื่นๆ">อื่นๆ</option>
            </select><br>

            <div class="mb-3">
                <label for="nationality" class="form-label">Nationality</label>
                <input type="text" class="form-control" name="nationality" aria-describedby="nationality">
            </div>
            <div class="mb-3">
                <label for="phone_number" class="form-label">Phone Number</label>
                <input type="text" class="form-control" name="phone_number" aria-describedby="phone_number">
            </div>
            <div class="mb-3">
                <label for="address" class="form-label">Address</label>
                <input type="text" class="form-control" name="address" aria-describedby="address">
            </div>
            <div class="mb-3">
                <label for="email" class="form-label">Email</label>
                <input type="email" class="form-control" name="email" aria-describedby="email">
            </div>
            <div class="mb-3">
                <label for="password" class="form-label">Password</label>
                <input type="password" class="form-control" name="password">
            </div>
            <div class="mb-3">
                <label for="c_password" class="form-label">Confirm Password</label>
                <input type="password" class="form-control" name="c_password">
            </div>
            <button type="submit" name="signup" class="btn btn-primary">Sign Up</button>
        </form>
        <hr>
        <p style="color: black;">เป็นสมาชิก สามารถกดตรงนี้ได้ <a href="signin2.php" class="btn btn-primary" >เข้าสู่ระบบ</a></p>

    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Mcdz8ibcO3FEv6+JskETyp1F3U7S25fGc4F5b1eQ2aQ==" crossorigin="anonymous"></script>
</body>

</html>
