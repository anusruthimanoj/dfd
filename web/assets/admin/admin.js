// Chart.js Integration for Analytics
document.addEventListener('DOMContentLoaded', () => {
    const ctx = document.getElementById('wasteChart').getContext('2d');
    const wasteChart = new Chart(ctx, {
        type: 'bar',
        data: {
            labels: ['Plastic', 'Paper', 'Metal', 'Glass'],
            datasets: [{
                label: 'Tons of Waste Recycled',
                data: [2500, 1800, 1200, 900],
                backgroundColor: ['#00ff99', '#00b36b', '#00804d', '#004d29'],
                borderColor: ['#00ff99', '#00b36b', '#00804d', '#004d29'],
                borderWidth: 1
            }]
        },
        options: {
            scales: {
                y: {
                    beginAtZero: true
                }
            }
        }
    });
});