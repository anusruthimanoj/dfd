
// 1.1 header section right-sidebar 
if (document.getElementById("mySidenav")) {

    function open_aside() {
      "use strict";
      const sidepanel = document.getElementById("mySidenav");
      if (sidepanel) {
        sidepanel.style.left = "0";
      } else {
        console.error("Error: Side panel element not found!");
      }
    }
    function close_aside() {
      "use strict";
      const sidepanel = document.getElementById("mySidenav");
      if (sidepanel) {
        sidepanel.style.left = "-355px";
      } else {
        console.error("Error: Side panel element not found!");
      }
    }
  
    let slid = document.getElementById("slid-btn");
    slid.onclick = () => {
      let dropdwon = document.getElementById("slid-drop");
      dropdwon.classList.toggle("aside-dropdwon");
    };
  }
  
  // 1.3 Waste_slider 
  $(".Waste_Slider").slick({
    arrows: false,
    dots: false,
    infinite: true,
    speed: 4000,
    slidesToShow: 6,
    slidesToScroll: 1,
    autoplay: true,
    autoplaySpeed: 0,
    cssEase: "linear",
    responsive: [
  
      {
        breakpoint: 1500,
        settings: {
          slidesToShow: 5,
          slidesToScroll: 1,
        },
      },
      {
        breakpoint: 1201,
        settings: {
          slidesToShow: 4,
          slidesToScroll: 1,
        },
      },
      {
        breakpoint: 992,
        settings: {
          slidesToShow: 3,
          slidesToScroll: 1,
        },
      },
      {
        breakpoint: 768,
        settings: {
          slidesToShow: 2,
          slidesToScroll: 1,
        },
      },
      {
        breakpoint:480,
        settings: {
          slidesToShow: 1,
          slidesToScroll: 1,
        },
      },
    ],
  });


// scroll to top

window.onscroll = function () {
  var scrollTopBtn = document.getElementById("scrollTopBtn");
  if (document.body.scrollTop > 400 || document.documentElement.scrollTop > 400) {
    scrollTopBtn.style.display = "block";
  } else {
    scrollTopBtn.style.display = "none";
  }
};

// Function to scroll the page to the top
function scrollToTop() {
  window.scrollTo({
    top: 0,
    behavior: 'smooth' // Smooth scroll
  });
}

document.addEventListener('DOMContentLoaded', () => {
  // Elements
  const dashboardToggle = document.getElementById('nav-dashboard'); // Dashboard Link
  const miniPopup = document.getElementById('mini-popup');
  const closeBtn = miniPopup.querySelector('.close-btn');
  const navbar = document.querySelector('.navbar');
  const historyContainer = document.querySelector('.history-container');

  // Function to toggle the mini popup and navbar shift
  const toggleMiniPopup = () => {
      if (miniPopup.style.display === 'block') {
          miniPopup.style.display = 'none'; // Hide the popup
          
      } else {
          miniPopup.style.display = 'block'; // Show the popup
         
          loadPickupHistory(); // Load pickup history when the popup is opened
      }
  };

  // Open Mini Popup via Dashboard Link
  dashboardToggle.addEventListener('click', (e) => {
      e.preventDefault(); // Prevent default anchor behavior
      toggleMiniPopup();
  });

  // Close Mini Popup via Close Button
  closeBtn.addEventListener('click', () => {
      miniPopup.style.display = 'none'; // Hide the popup
      navbar.classList.remove('nav-shifted'); // Reset navbar position
  });

  // Close Mini Popup on Outside Click
  miniPopup.addEventListener('click', (e) => {
      if (e.target === miniPopup) {
          miniPopup.style.display = 'none'; // Hide the popup
          navbar.classList.remove('nav-shifted'); // Reset navbar position
      }
  });

  // Function to load pickup history
  const loadPickupHistory = () => {
      historyContainer.innerHTML = ''; // Clear existing content

      // Retrieve pickup requests from localStorage
      const pickupRequests = JSON.parse(localStorage.getItem('pickupRequests')) || [];

      // Display each pickup request
      pickupRequests.forEach((request, index) => {
          const historyItem = document.createElement('div');
          historyItem.classList.add('history-item');
          historyItem.innerHTML = `
              <strong>Request #${index + 1}:</strong> 
              <span>${request.location} (${request.quantity} kg)</span>
          `;
          historyContainer.appendChild(historyItem);
      });
  };

  // Save a new pickup request to localStorage
  const savePickupRequest = (location, quantity) => {
      // Retrieve existing pickup requests
      let pickupRequests = JSON.parse(localStorage.getItem('pickupRequests')) || [];

      // Add the new request
      pickupRequests.push({ location, quantity });

      // Save updated requests back to localStorage
      localStorage.setItem('pickupRequests', JSON.stringify(pickupRequests));
  };

  // Example: Simulate saving a pickup request (for testing purposes)
  const simulatePickupRequest = () => {
      savePickupRequest("Eco Park", 5); // Example location and quantity
      savePickupRequest("Green Street", 10);
      savePickupRequest("Recycling Center", 3);
  };

  // Simulate adding some pickup requests
  simulatePickupRequest();
});



document.addEventListener('DOMContentLoaded', () => {
  // Popup Handling
  const popupTriggers = document.querySelectorAll('.popup-trigger');
  const closeButtons = document.querySelectorAll('.close-btn');

  // Open Popup
  popupTriggers.forEach(trigger => {
      trigger.addEventListener('click', () => {
          const popupId = trigger.getAttribute('data-popup');
          if (popupId) {
              const popup = document.getElementById(popupId);
              if (popup) {
                  popup.style.display = 'flex'; // Show the popup
              } else {
                  console.error(`Popup with ID "${popupId}" not found.`);
              }
          } else {
              console.error('No "data-popup" attribute found on the trigger element.');
          }
      });
  });

  // Close Popup
  closeButtons.forEach(button => {
      button.addEventListener('click', () => {
          const popup = button.closest('.popup');
          if (popup) {
              popup.style.display = 'none';
          } else {
              console.error('Close button is not inside a valid popup.');
          }
      });
  });

  // Close Popup on Outside Click
  document.querySelectorAll('.popup').forEach(popup => {
      popup.addEventListener('click', (e) => {
          if (e.target === popup) {
              popup.style.display = 'none';
          }
      });
  });

  // Initialize Flatpickr with custom configuration
  flatpickr("#pickup-date", {
      enable: [
          function(date) {
              // Allow only Tuesdays (2) and Saturdays (6)
              return date.getDay() === 2 || date.getDay() === 6;
          }
      ],
      minDate: "today", // Disable past dates
      dateFormat: "d-m-Y", // Format the date as DD-MM-YYYY
      placeholder: "Select a date", // Placeholder text
      onChange: function(selectedDates, dateStr, instance) {
          console.log("Selected Date:", dateStr);
      }
  });

  // Dynamic Waste Items and Total Quantity Validation
  const wasteItemsContainer = document.getElementById('waste-items-container');
  const addWasteItemButton = document.getElementById('add-waste-item');
  let wasteItemCount = 1; // Start counting from 1 (since one item is already present)

  // Function to calculate the total quantity
  const calculateTotalQuantity = () => {
      const quantityInputs = document.querySelectorAll('#waste-items-container input[name="quantity[]"]');
      let totalQuantity = 0;

      quantityInputs.forEach(input => {
          const value = parseFloat(input.value) || 0; // Parse as float, default to 0 if empty or invalid
          totalQuantity += value;
      });

      return totalQuantity;
  };

  // Function to validate the total quantity
  const validateTotalQuantity = () => {
      const totalQuantity = calculateTotalQuantity();
      const errorMessage = document.getElementById('quantity-error');

      if (totalQuantity < 3) {
          errorMessage.textContent = 'The total quantity must be at least 3 kg.';
          return false; // Validation failed
      } else {
          errorMessage.textContent = ''; // Clear error message
          return true; // Validation passed
      }
  };

  // Add More Waste Items
  addWasteItemButton.addEventListener('click', () => {
      const newItem = document.createElement('div');
      newItem.classList.add('waste-item');

      newItem.innerHTML = `
          <label for="waste-type-${wasteItemCount}">Type of Waste:</label>
          <select id="waste-type-${wasteItemCount}" name="waste-type[]">
              <option value="plastic">Plastic</option>
              <option value="paper">Paper</option>
              <option value="metal">Metal</option>
              <option value="glass">Glass</option>
          </select>

          <label for="quantity-${wasteItemCount}">Quantity (in kg):</label>
          <input type="number" id="quantity-${wasteItemCount}" name="quantity[]" min="1" required>

          <button type="button" class="remove-waste-item">Remove</button>
      `;

      wasteItemsContainer.appendChild(newItem);
      wasteItemCount++;

      // Add event listener to remove the newly added item
      newItem.querySelector('.remove-waste-item').addEventListener('click', () => {
          wasteItemsContainer.removeChild(newItem);
          validateTotalQuantity(); // Revalidate after removing an item
      });
  });

  // Validate total quantity on input change
  wasteItemsContainer.addEventListener('input', () => {
      validateTotalQuantity();
  });

  // Handle Form Submission for Pickup
  const pickupForm = document.getElementById('pickup-form-content');
  const quantityError = document.createElement('p');
  quantityError.id = 'quantity-error';
  quantityError.style.color = 'red';
  pickupForm.appendChild(quantityError); // Add error message container

  pickupForm.addEventListener('submit', (e) => {
      e.preventDefault(); // Prevent default form submission

      if (!validateTotalQuantity()) {
          return; // Stop submission if validation fails
      }

      // Get form values
      const name = document.getElementById('name').value;
      const phone = document.getElementById('phone').value;
      const address = document.getElementById('address').value;
      const pickupDate = document.getElementById('pickup-date').value;

      // Collect waste items
      const wasteItems = [];
      document.querySelectorAll('#waste-items-container .waste-item').forEach(item => {
          const wasteType = item.querySelector('select').value;
          const quantity = parseFloat(item.querySelector('input').value) || 0;
          wasteItems.push({ wasteType, quantity });
      });

      // Log the form data (or send it to a server)
      console.log({
          name,
          phone,
          address,
          pickupDate,
          wasteItems
      });

      // Show custom alert
      showAlert('Pickup scheduled successfully!\nWait for our team to arrive.\nThank you for your cooperation.');

      document.getElementById('pickup-form').style.display = 'none'; // Close the popup
      pickupForm.reset(); // Reset the form
  });

  // Handle Form Submission for Waste Reporting
  const reportForm = document.getElementById('report-form-content');
  reportForm.addEventListener('submit', (e) => {
      e.preventDefault(); // Prevent default form submission

      // Get form values
      const location = document.getElementById('location').value;
      const description = document.getElementById('description').value;
      const severity = document.getElementById('severity').value;
      const photoUpload = document.getElementById('photo-upload').files[0]; // Get the uploaded file

      // Validate photo upload
      if (!photoUpload) {
          alert('Please upload a photo.');
          return;
      }

      // Log the form data (or send it to a server)
      console.log({
          location,
          description,
          severity,
          photoUpload: photoUpload.name // Log the file name
      });

      // Show custom alert
      showAlert('Waste reported successfully! Thank you for your cooperation.');

      document.getElementById('report-form').style.display = 'none'; // Close the popup
      reportForm.reset(); // Reset the form
  });

  // Handle Form Submission for Rental Booking
  const rentalForm = document.getElementById('rental-form-content');
  rentalForm.addEventListener('submit', (e) => {
      e.preventDefault(); // Prevent default form submission

      // Get form values
      const location = document.getElementById('location').value;
      const description = document.getElementById('description').value;
      

      

      // Log the form data (or send it to a server)
      console.log({
          location,
          description
       
      });

      // Show custom alert
      showAlert('Rental Booking  successfull! Our team will contact you soon.');

      document.getElementById('rental-form').style.display = 'none'; // Close the popup
      rentalForm.reset(); // Reset the form
  });

  // Alert Functionality
  const showAlert = (message) => {
      // Create alert container
      const alertBox = document.createElement('div');
      alertBox.classList.add('alert');
      alertBox.textContent = message;

      // Append to body
      document.body.appendChild(alertBox);

      // Automatically close after 5 seconds
      setTimeout(() => {
          alertBox.remove();
      }, 5000);
  };
});