<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta http-equiv="x-ua-compatible" content="ie=edge">
  <title>GREEN HORIZON- Empowering Responsible Waste Management, Let's Make a Difference</title>
  <meta name="keywords" content="GREEN HORIZON - Empowering Responsible Waste Management, Let's Make a Difference">
  <meta name="robots" content="INDEX,FOLLOW">
  <!-- Mobile Specific Metas -->
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <!-- Favicons  -->
  <link rel="icon" type="image/png" sizes="32x32" href=../assets/images/logo.svg">
  <!-- framework of css -->
  <link rel="stylesheet" href="../assets/css/bootstrap-lib/bootstrap.min.css">
  <!-- style sheet of css -->
  <link rel="stylesheet" href="../assets/css/styles.css">
  <!-- responsive sheet of css -->
  <link rel="stylesheet" href="../assets/css/responsive.css">
  <!-- font awesome icon link  -->
  <link rel="stylesheet" href="../assets/font-awesonw-lib/icon/all.min.css">
  <!-- slick-slider link css -->
  <link rel="stylesheet" href="../assets/css/slick.min.css">
  <!-- animation of css -->
  <link rel="stylesheet" href="../assets/css/aos.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <script src="../resources/posts.js"></script>
    <style>
      @import url('https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&display=swap');
  * {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
  }
  .formbold-main-wrapper {
    display: flex;
    align-items: center;
    justify-content: center;
    padding: 48px;
  }

  .formbold-form-wrapper {
    margin: 0 auto;
    max-width: 550px;
    width: 100%;
    background: white;
  }

  .formbold-input-flex {
    display: flex;
    gap: 20px;
    margin-bottom: 22px;
  }
  .formbold-input-flex > div {
    width: 50%;
    display: flex;
    flex-direction: column-reverse;
  }
  .formbold-textarea {
    display: flex;
    flex-direction: column-reverse;
  }

  .formbold-form-input {
    width: 100%;
    padding-bottom: 10px;
    border: none;
    border-bottom: 1px solid #DDE3EC;
    background: #FFFFFF;
    font-weight: 500;
    font-size: 16px;
    color: #07074D;
    outline: none;
    resize: none;
  }
  .formbold-form-input::placeholder {
    color: #536387;
  }
  .formbold-form-input:focus {
    border-color: #6A64F1;
  }
  .formbold-form-label {
    color: #07074D;
    font-weight: 500;
    font-size: 14px;
    line-height: 24px;
    display: block;
    margin-bottom: 18px;
  }
  .formbold-form-input:focus + .formbold-form-label {
    color: #6A64F1;
  }

  .formbold-input-file {
    margin-top: 30px;
  }
  .formbold-input-file input[type='file'] {
    position: absolute;
    top: 6px;
    left: 0;
    z-index: -1;
  }
  .formbold-input-file .formbold-input-label {
    display: flex;
    align-items: center;
    gap: 10px;
    position: relative;
  }

  .formbold-filename-wrapper {
    display: flex;
    flex-direction: column;
    gap: 6px;
    margin-bottom: 22px;
  }
  .formbold-filename {
    display: flex;
    align-items: center;
    justify-content: space-between;
    font-size: 14px;
    line-height: 24px;
    color: #536387;
  }
  .formbold-filename svg {
    cursor: pointer;
  }

  .formbold-btn {
    font-size: 16px;
    border-radius: 5px;
    padding: 12px 25px;
    border: none;
    font-weight: 500;
    background-color: #6A64F1;
    color: white;
    cursor: pointer;
    margin-top: 25px;
  }
  .formbold-btn:hover {
    box-shadow: 0px 3px 8px rgba(0, 0, 0, 0.05);
  }

  </style>
</head>

<body>
  <div class="site-wrapper">
    <!-- two section background -->
    <div class="twosection_bg">
      <!-- 1.1. header section -->
      <header>
        <nav class="navbar">
          <div class="logo">GREEN HORIZON</div>
          <ul class="nav-links">
              <li><a href="#">Home</a></li>
              <li><a href="#" id="nav-dashboard">Dashboard</a></li>
              <li><a href="About.html">About</a></li>
              <li><a href="Service.html">Our Services</a></li>
              <li><a href="Contact.html">Contact</a></li>
          </ul>
          <div class="menu-toggle" id="mobile-menu">
              <i class="fas fa-bars"></i>
          </div>
      </nav>
      <!-- Mini Popup Modal for Dashboard -->
<div class="mini-popup" id="mini-popup">
  <div class="mini-popup-content">
      <span class="close-btn">&times;</span>
      <h3>User Dashboard</h3>
      <div class="user-info">
          <p><strong>Name:</strong> Michael Johnson</p>
          <p><strong>Phone:</strong>  +91 4876239647</p>
          <p><strong>Email:</strong>michael.johnson@email.com</p>
          <p><strong>Address:</strong> 321 Birch Street, Unit 302,
            Lakeside, FL 33401, CALTAX</p>
      </div>
       <!-- Pickup History Section -->
  <div class="pickup-history">
      <h4>Pickup History</h4>
      <div class="history-container">
          <!-- Pickup history items will be dynamically added here -->
      </div>
  </div>
      <button class="logout-btn">Logout</button>
  </div>
</div>
        
      </header>
      <!-- End of 1.1. header section  -->
      <!-- 1.2 Hero section -->
      <div class="Hero">
        <div class="container">
          <div class="d-flex flex-column">
            <h1 class="glow-text">Protect Earth. Save the Future.</h1>
            <p>Your eco-friendly companion in waste management</p>
            <div class="d-flex gap-4">
              <a href="index.html" class="hover2">Get Started</a>
              <a href="About.html" class="hover1">Learn more</a>
            </div>
          </div>
          
        </div>
      </div>
      <!--End of 1.2 Hero section -->
    </div>
   
    <section class="Waste">
      <div class="Waste_Slider  d-flex align-items-center justify-content-between gap-5">
        <div class="d-flex align-items-center">
          <h3>Hazardous Waste Disposal</h3>
          <i class="fa-solid fa-circle"></i>
        </div>
        <div class="d-flex align-items-center">
          <h3>Curbsite Collection</h3>
          <i class="fa-solid fa-circle"></i>
        </div>
        <div class="d-flex align-items-center">
          <h3>Dumpster Rental</h3>
          <i class="fa-solid fa-circle"></i>
        </div>
        <div class="d-flex align-items-center">
          <h3>Composting</h3>
          <i class="fa-solid fa-circle"></i>
        </div>
        <div class="d-flex align-items-center">
          <h3>E-Waste Recycling</h3>
          <i class="fa-solid fa-circle"></i>
        </div>
        <div class="d-flex align-items-center">
          <h3>Waste Reduction</h3>
          <i class="fa-solid fa-circle"></i>
        </div>
        <div class="d-flex align-items-center">
          <h3>Waste Stream Analysis</h3>
          <i class="fa-solid fa-circle"></i>
        </div>
      </div>
    </section>
    <!--End of  1.3 Waste Recycling section  -->
    <!-- 1.4 Shedule section  -->
    <section class="Shedule">
      <div class="container">
        <div class="d-flex align-items-center">
          <div class="d-flex justify-content-center">
            <figure>
              <img src=../assets/images/icons/shedule1.svg" alt="scheduleicon1">
            </figure>
            <div class="d-flex flex-column">
              <h3>Safe Disposal</h3>
              <p>Environmentally responsible and secure removal of waste, adhering to all safety regulations and promoting sustainability.</p>
            </div>
          </div>
          <hr>
          <div class="d-flex justify-content-center  ">
            <figure>
              <img src=../assets/images/icons/shedule2.svg" alt="scheduleicon2">
            </figure>
            <div class="d-flex flex-column">
              <h3>Scheduled Pickup</h3>
              <p>To easily arrange a convenient pickup time, ensuring timely and efficient waste collection tailored to your needs.</p>
            </div>
          </div>
          <hr>
          <div class="d-flex justify-content-between  ">
            <figure>
              <img src=../assets/images/icons/shedule3.svg" alt="scheduleicon3">
            </figure>
            <div class="d-flex flex-column">
              <h3>Extensive Recycling</h3>
              <p>Covers a wide range of materials, ensuring that all recyclable items are properly sorted and processed to reduce waste and promote sustainability.</p>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!--End of  1.4 Shedule section  -->
    <!-- 1.5 About_us section  -->
    <section class="functionality">
        <div class="container">
<!--START-->
            <div class="formbold-main-wrapper">
            <!-- Author: FormBold Team -->
            <!-- Learn More: https://formbold.com -->
            <div class="formbold-form-wrapper">
              <form id="pickupJobSave">
                  <h3>Pick- up Details<br/><br/></h3>
                  <div class="formbold-input-flex">
                    <div>
                        <input type="text"  name="name" id="name" placeholder="Name"class="formbold-form-input"/>
                        <label for="firstname" class="formbold-form-label">Name</label>
                    </div>
                    <div>
                        <input type="text" name="location"  id="location"  placeholder="Location" class="formbold-form-input" />
                        <label for="location" class="formbold-form-label"> Location </label>
                    </div>
                  </div>

                  <div class="formbold-input-flex">
                    <div>
                         <select name="timeslot"  id="timeslot"  class="formbold-form-input">
                            <option value="">Select Slot</option>
                            <option value="06AM-07AM">06AM-07AM</option>
                            <option value="07AM-08AM">07AM-08AM</option>
                            <option value="08AM-09AM">08AM-09AM</option>
                            <option value="09AM-10AM">09AM-10AM</option>
                            <option value="10AM-11AM">10AM-11AM</option>
                            <option value="11AM-12PM">11AM-12PM</option>
                            <option value="12PM-01PM">12PM-01PM</option>
                            <option value="01PM-02PM">01PM-02PM</option>
                            <option value="02PM-03PM">02PM-03PM</option>
                            <option value="03PM-04PM">03PM-04PM</option>
                            <option value="04PM-05PM">04PM-05PM</option>
                            <option value="05PM-06PM">05PM-06PM</option>
                        </select>
                        <label for="timeslot" class="formbold-form-label"> Time Slot </label>
                    </div>
                    <div>
                        <input type="date" name="pickupdate"  id="pickupdate" placeholder="Pickup Date" class="formbold-form-input"/>
                        <label for="pickupdate" class="formbold-form-label"> Pickup Date </label>
                    </div>
                  </div>

                  <div class="formbold-textarea">
                      <textarea rows="6" name="description" id="description" placeholder="Description" class="formbold-form-input"></textarea>
                      <label for="description" class="formbold-form-label"> Description </label>
                  </div>
                  <div class="formbold-input-flex">  
                       <input type="text" name="phone" id="phone" placeholder="+91 1234 567 890" class="formbold-form-input" />
                        <label for="phone" class="formbold-form-label"> Phone </label>                       
                  </div>
                  <button id="pickupJobSaveBtn" class="formbold-btn">
                      Send Pickup request
                  </button>
              </form>
            </div>
          </div>
        </div>
    </section>
    <section class="About_us">
      <div class="container">
        <div class="row">
          <div class="col-lg-6 col-md-6">
            <div class="d-flex flex-column gap-2">
              <div class="d-flex gap-3">
                <h4>About Us</h4>
                <span>
                  <hr>
                </span>
              </div>
              <h2>Trusted Experts in Waste Management and Recycling</h2>
              <p>Dedicate to provide sustainable solutions that protect the environment. With years of experience in the industry, our team is committed to offering efficient, reliable services that help communities and businesses manage their waste responsibly. We specialize in waste disposal, recycling, and environmentally conscious practices, ensuring that recyclable materials are processed properly to reduce landfill impact. Our goal is to create a cleaner, greener future by promoting waste reduction and recycling initiatives, all while delivering top-notch customer service and fostering long-term partnerships.
              </p>
              <div class="d-flex flex-column gap-3">
                <div class="d-flex align-items-center gap-3 ">
                  <i class="fa-solid fa-arrow-right-long"></i>
                  <p>Prioritize customer satisfaction by offering personalized services, timely pickups, and clear communication to ensure a seamless experience.</p>
                </div>
                <div class="d-flex align-items-center gap-3 ">
                  <i class="fa-solid fa-arrow-right-long"></i>
                  <p>With years of industry experience, our team delivers efficient, dependable waste disposal and recycling solutions tailored to meet your needs.</p>
                </div>
                <div class="d-flex align-items-center gap-3 ">
                  <i class="fa-solid fa-arrow-right-long"></i>
                  <p>Services designed to reduce environmental impact and promote sustainability.</p>
                </div>
              </div>
              <div class="d-flex pt-5">
                <div class="d-flex flex-column gap-1">
                  <figure><img src=../assets/images/index/about_icon2.png" alt=""></figure>
                  <h3>Waste Services</h3>
                  <p>Environmentally responsible solutions for the collection, disposal, and recycling of waste, tailored to meet your specific needs.</p>
                </div>
                <div class="d-flex flex-column gap-1">
                  <figure><img src=../assets/images/index/about_icon1.png" alt=""></figure>
                  <h3>Recycling</h3>
                  <p>Processing of materials, promoting sustainability and reducing environmental impact.</p>
                </div>
              </div>
              <a href="About.html" class="hover2">Learn more</a>
            </div>
          </div>
          <div class="col-lg-6 col-md-6">
            <div class="position-relative">
              <figure class="">
                  <img class="" src=../assets/images/index/about_worker.png" alt="about-image">
              </figure>
              
            </div>
          </div>
        </div>
      </div>
    </section>
    <!--End of 1.5 About_us section  -->
    
    <!-- 1.7 Service Section  -->
    <section class="Service">
      <div class="container">
        <div>
          <div class="d-flex gap-3">
            <h4>Our Services</h4>
            <span>
              <hr>
            </span>
          </div>
          <div class="d-flex justify-content-between ">
            <h2>Waste Management Solutions Tailored to You</h2>
            <div>
              <a href="SingleService.html" class="hover1">View All</a>
            </div>
          </div>
          <div class="row">
            <div class="col-lg-4 col-md-4">
              <div>
                <figure>
                  <img src=../assets/images/index/service1.png" alt="">
                </figure>
                <div class="d-flex flex-column gap-1">
                  <h3>Garbage Pickup</h3>
                  <p>Service ensures timely and efficient waste collection, promoting a cleaner and more organized environment for both residential and commercial properties.
                  </p>
                  <div class="d-flex gap-2 align-items-end">
                    <a href="SingleService.html">Read more</a>
                    <i class="fa-solid fa-arrow-right"></i>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-lg-4 col-md-4">
              <div>
                <div class="d-flex flex-column gap-1">
                  <h3>Residential Recycling</h3>
                  <p>Provides a convenient and sustainable solution for sorting and disposing of recyclable materials, helping homeowners contribute to environmental preservation.
                  </p>
                  <div class="d-flex gap-2 align-items-end">
                    <a href="SingleService.html">Read more</a>
                    <i class="fa-solid fa-arrow-right"></i>
                  </div>
                </div>
                <figure>
                  <img src=../assets/images/index/service2.png" alt="">
                </figure>
              </div>
            </div>
            <div class="col-lg-4 col-md-4">
              <div>
                <figure>
                  <img src=../assets/images/index/service3.png" alt="">
                </figure>
                <div class="d-flex flex-column gap-1">
                  <h3>Dumpster Rental</h3>
                  <p>Offers reliable and flexible waste disposal solutions, providing a range of sizes to accommodate both residential and commercial needs for efficient cleanups and construction projects.
                  </p>
                  <div class="d-flex gap-2 align-items-end">
                    <a href="SingleService.html">Read more</a>
                    <i class="fa-solid fa-arrow-right"></i>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-lg-4 col-md-4">
              <div>
                <figure>
                  <img src=../assets/images/index/service4.png" alt="">
                </figure>
                <div class="d-flex flex-column gap-1">
                  <h3>Junk Removal</h3>
                  <p>Ensures fast, efficient, and eco-friendly disposal of unwanted items, helping you declutter your space while promoting sustainable practices.
                  </p>
                  <div class="d-flex gap-2 align-items-end">
                    <a href="SingleService.html">Read more</a>
                    <i class="fa-solid fa-arrow-right"></i>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-lg-4 col-md-4">
              <div>
                <div class="d-flex flex-column gap-1">
                  <h3>Secure Destruction</h3>
                  <p>Guarantees the safe and confidential disposal of sensitive materials, ensuring compliance with privacy regulations and protecting your information from unauthorized access.
                  </p>
                  <div class="d-flex gap-2 align-items-end">
                    <a href="SingleService.html">Read more</a>
                    <i class="fa-solid fa-arrow-right"></i>
                  </div>
                </div>
                <figure>
                  <img src=../assets/images/index/service5.png" alt="">
                </figure>
              </div>
            </div>
            <div class="col-lg-4 col-md-4">
              <div>
                <figure>
                  <img src=../assets/images/index/service6.png" alt="">
                </figure>
                <div class="d-flex flex-column gap-1">
                  <h3>Electronic Waste Recycling</h3>
                  <p>Responsible and eco-friendly solution for the disposal of outdated or non-functional electronics, ensuring proper recycling and minimizing environmental impact.
                  </p>
                  <div class="d-flex gap-2 align-items-end">
                    <a href="SingleService.html">Read more</a>
                    <i class="fa-solid fa-arrow-right"></i>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!--End of 1.7 Service Section  -->
    <!-- 1.8 Choose_us Section  -->
    <section class="Choose_us">
      <div class="container">
        <div class="row position-relative">
          <div class="col-lg-6 col-md-6">
            <div class="position-relative h-100">
              <figure class="h-100">
                <img class="h-100" src=../assets/images/index/choose_img.png" alt="choose_image">
              </figure>
              
            </div>
          </div>
          <div class="col-lg-6 col-md-6">
            <div class="d-flex flex-column gap-3 pb-5">
              <div class="d-flex gap-3">
                <h4>Choose Us</h4>
                <span>
                  <hr>
                </span>
              </div>
              <h2>Your Sustainable Choice for Waste Management.</h2>
              <p>We blend reliability, efficiency, and sustainability to provide eco-friendly services that contribute to a cleaner, healthier environment. With a strong focus on responsible disposal, recycling, and waste reduction, we ensure that every step of our process helps reduce environmental impact. Our team is dedicated to delivering top-notch customer service while fostering long-term sustainable practices, giving you peace of mind that you are making a positive contribution to the planet's future. Trust us to manage your waste with the utmost care and commitment to sustainability.




              </p>
              <a href="About.html" class="hover2">Learn more</a>
            </div>
          </div>
          <div class="d-flex text-center position-absolute">
            <div class="d-flex flex-column align-items-center">
              <figure>
                <img src=../assets/images/icons/choose_icon1.svg" alt="choose_icon1">
              </figure>
              <h4>Large volume Pickup</h4>
              <p>Solutions for the removal of bulk waste, ensuring quick and responsible disposal for both residential and commercial needs.</p>
            </div>
            <div class="d-flex flex-column align-items-center">
              <figure>
                <img src=../assets/images/icons/choose_icon4.svg" alt="choose_icon1">
              </figure>
              <h4>Easy Online Scheduling</h4>
              <p>Effortlessly schedule waste collection online for a smooth experience.</p>
            </div>
           
          </div>
        </div>
      </div>
    </section>
    <!--End of 1.8 Choose_us Section  -->
    
    <!-- 1.13 Contact_us section -->
    <section class="Contact_us">
      <div class="container">
        <div class="row">
          <div class="col-lg-6 col-md-6">
            <div class="d-flex align-items-center">
              <div class="d-flex flex-column gap-3 ">
                <h2>Contact Us</h2>
                <p>For more information or to schedule our services, please don't hesitate to contact us.</p>
              </div>
              <div class="d-flex flex-column gap-4">
                <div class="d-flex gap-3">
                  <figure>
                    <img src=../assets/images/icons/contact_icon1.svg" alt="contact_icon1">
                  </figure>
                  <p>1234 Maple Street, Suite 567
                    Springfield, IL 62701
                    KANNUR</p>
                </div>
                <div class="d-flex gap-3">
                  <figure>
                    <img src=../assets/images/icons/contact_icon2.svg" alt="contact_icon2">
                  </figure>
                  <p>greenhorizon@gmail.com </p>
                </div>
                <div class="d-flex gap-3">
                  <figure>
                    <img src=../assets/images/icons/contact_icon3.svg" alt="contact_icon3">
                  </figure>
                  <p>+91 8765438725</p>
                </div>
              </div>
            </div>
          </div>
          <div class="col-lg-6 col-md-6">
            <div class="d-flex flex-column align-items-end">
              <div class="d-flex flex-column gap-1 ">
                <h2>Send A Message</h2>
                <p>Please feel free to send us a message with any questions or inquiries, and our team will respond promptly to assist you with the information you need.
                </p>
              </div>
              <form  class="d-flex flex-column Subscribe-massage ">
                <div class="d-flex ">
                  <div>
                    <h4>Full name</h4>
                    <input autocomplete="on" required type="text" name="name" placeholder="Enter Your Name">
                  </div>
                  <div>
                    <h4>Email</h4>
                    <input autocomplete="on" required type="email" name="email" placeholder="Enter Email">
                  </div>
                </div>
                <div class="w-100">
                  <h4>Message</h4>
                  <textarea required rows="1" name="textarea" placeholder="Write here"></textarea>
                </div>
                <button class="hover2">Book now</button>
              </form>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!--End of 1.13 Contact_us section -->
    <!-- Footer -->
    <footer class="footer fade-in">
      <p>&copy; 2025 Green Horizon. All rights reserved.</p>
  </footer>
  </div>

  <!-- bootstrap min javascript -->
  <script src="../assets/js/javascript-lib/bootstrap.min.js"></script>
  <!-- j Query -->
  <script src="../assets/js/jquery.js"></script>
  <!-- slick slider js -->
  <script src="../assets/js/slick.min.js"></script>
  <!-- main javascript -->
  <script src="../assets/js/custom.js"></script>
  <!-- animation from javascript -->
  <script src="../assets/js/aos.js"></script>
  <script>
//      AOS.init({
//          once: true,
//          duration: 1500,
//      });
//
//    
    $(document).ready(function(){
            $("#pickupJobSaveBtn").on("click", function(event){
                event.preventDefault();
                var formData = $("#pickupJobSave").serializeArray(); //Form Data serialised
                pickupJobSaveAction(formData); //Calling the function to post data
                $('#pickupJobSave')[0].reset(); 
            });
        });
</script>
</body>
</html>