<%-- 
    Document   : agencyHome1
    Created on : 26 Mar 2025, 6:44:02 am
    Author     : Obscurion One
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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
body{
	
	background: linear-gradient(to bottom, #2e8b57, #3cb371, #228b22);
}
  </style>
    </head>
    <body>
        <h1>Hello World!</h1>
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
                      Send Message
                  </button>
              </form>
            </div>
          </div>
    </body>
</html>
