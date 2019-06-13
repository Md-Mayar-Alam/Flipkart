<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="header" tagdir="/WEB-INF/tags/header" %>
<%@ taglib prefix="footer" tagdir="/WEB-INF/tags/footer" %>
<html>

<!-- <head>
    <meta http-equiv="Content-Type" content="text/html; charset=us-ascii">
    <link rel="stylesheet" href="file:///C:/Users/1500182/Desktop/Flipkart/homepage.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="file:///C:/Users/1500182/Desktop/Flipkart/homepage.js"></script>
</head> -->

	<c:set var="pageType" value="home" scope="application" />
	<head>
		<header:headHelper />

		<header:headResourceIncluder />
	</head>

<body>
    <div class="main-container">
        
        <header:headerContent />
        
		<div class="body-container">
			<div class="trending-container">
				<div class="trending-image-container hide">
					<a href="https://www.flipkart.com/super-value-week-store?otracker=hp_bannerads_5_deskt-homep-2499f_04-02-2019-Slot-3_UTVFH0BPUSSE">
						<img class="trending-image" src="https://rukminim1.flixcart.com/flap/3376/560/image/0b4407c7161ca540.jpg?q=50" 
						alt="First Time Bumper Exchange Offfer">
					</a>
				</div>
				
				<div class="trending-image-container hide">
					<a href="https://www.flipkart.com/asus-omg-deals-6dh7-8s83-store?otracker=hp_bannerads_3_deskt-homep-3bcff_08-02-2019-slot-3-12AM%2Bto%2BEOS%2Brealme%2Bc1_R3IPN1J1HHGB">
						<img class="trending-image" src="https://rukminim1.flixcart.com/flap/3376/560/image/bb77644e53e953a5.jpg?q=50" 
						alt="Max Pro M2">
					</a>
				</div>		
				
				<div class="trending-image-container">
					<a href="https://www.flipkart.com/musical-monday-deals-store?otracker=hp_bannerads_4_deskt-homep-2499f_Musical%2BMonday%2B11th%2BFeb_2SC6DBGKW43I">
						<img class="trending-image" src="https://rukminim1.flixcart.com/flap/3376/560/image/ae5b0a0800b29c88.jpg?q=50" 
						alt="Valentine Offer">
					</a>
				</div>

				<div id="scrolling-arrow-left" class="scrolling-arrow-left">
					<i class="fa fa-angle-left left-arrow"></i>
				</div>
				
				<div id="scrolling-arrow-right" class="scrolling-arrow-right">
					<i class="fa fa-angle-right right-arrow"></i>				
				</div>
			</div>

			<div class="deals-of-the-day-container">
				<div class="deals-of-the-day-semi-container">
					<div class="dod-inner-container">
						<div class="deal-of-the-day-caption">
							Deals of the Day
						</div>
						<div> 
							<a href="/viewAllDealOfTheDay" class="view-all-dod">
								VIEW ALL
							</a>
						</div>
					</div>
					
				</div>
				
				<div class="pocket-friendly-deals-container">
					<div>Hello</div>
				</div>
			</div>
		</div>
		
		<footer:footerContent />
	</div>
</body>

</html>