$(document).ready(function(){
	$("#scrolling-arrow-left").click(function(event){
		var imageArray = [];
		var classNameOnImages = "trending-image-container";
		imageArray= $("."+ classNameOnImages);
		
		if(imageArray !=null){
			scrollToLeftImage(event, imageArray, classNameOnImages);	
		}else{
			console.log("imageArray is null in homepage.js");
		}
	});	

	$("#scrolling-arrow-right").click(function(event){
		var imageArray = [];
		var classNameOnImages = "trending-image-container";
		imageArray= $("."+ classNameOnImages);
		
		if(imageArray !=null){
			scrollToRightImage(event, imageArray, classNameOnImages);	
		}else{
			console.log("imageArray is null in homepage.js");
		}
	});
	
	$("li.menu-bar-list").mouseenter(function(){
		var childMenu= this.getElementsByClassName("l2-menu");
		var faAngleDownElement= this.getElementsByClassName("fa-angle-down");
		var faAngleUpElement= this.getElementsByClassName("fa-angle-up");
		
		$(faAngleDownElement).addClass("hide"); 
		$(faAngleUpElement).removeClass("hide");
		$(childMenu).removeClass("hide");
	});
	
	$("li.menu-bar-list").mouseleave(function(){
		var childMenu= this.getElementsByClassName("l2-menu");
		var faAngleDownElement= this.getElementsByClassName("fa-angle-down");
		var faAngleUpElement= this.getElementsByClassName("fa-angle-up");
		
		$(faAngleDownElement).removeClass("hide"); 
		$(faAngleUpElement).addClass("hide");
		$(childMenu).addClass("hide");
	});
});

function scrollToLeftImage(event, imageArray, classNameOnImages){
	var position= getPositionOfImage(imageArray);

	if(position == 0){
		position = imageArray.length -1;
	}else if(position == imageArray.length -1){
		position = 0;
	}else{
		position = position - 1;
	}
	
	addHideOnAllClass(classNameOnImages);
	imageArray[position].classList.remove("hide");
}

function scrollToRightImage(event, imageArray, classNameOnImages){
	var position= getPositionOfImage(imageArray);

	if(position == (imageArray.length -1) ){
		position = 0;
	}else{
		position = position + 1;
	}
	
	addHideOnAllClass(classNameOnImages);
	imageArray[position].classList.remove("hide");
}

function addHideOnAllClass(className){
	var imagesList = $("."+ className).addClass("hide");
}

function getPositionOfImage(imageArray){
	
	for(i=0; i<imageArray.length; i++){
		if(imageArray[i].classList.contains("hide") == false){
			return i;
		}
	}
}