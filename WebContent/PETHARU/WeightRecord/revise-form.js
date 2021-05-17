window.addEventListener("load",function(){
    
    inputDate = document.querySelector(".input-date");
    inputTime = document.querySelector(".input-Time");
    inputWeight = document.querySelector(".input-weight");

    //수정할 데이터 받아오기
    var date = localStorage.getItem("reDate");
    var time = localStorage.getItem("reTime");
    var weight = localStorage.getItem("reWeight");

    console.log(date);
    console.log(time);
    console.log(weight);

    //날짜 넣기
    inputDate.value = date;

    //체중 넣기
    var realWeight = weight.slice(0,-3);
    inputWeight.value = realWeight;
    
    //시간 넣기(미완)
    var to = time.substring(1,2);
    var ampm = time.substring(5,7);
    if(ampm =="PM"){
        if(to==":"){
            var hour = parseInt(time.substring(0,1))+12;
            var minute = time.substring(2,4);
        }
        else{
            var hour = time.substring(0,2)+12;
            var minute = time.substring(4,6);
        }
        console.log(hour+":"+minute)
    }
    else{
        if(to==":"){
            var hour = time.substring(0,1);
            var minute = time.substring(2,4);
        }
        else{
            var hour = time.substring(0,2);
            var minute = time.substring(4,6);
        }
        console.log(hour+":"+minute)
    }
    
});

window.addEventListener("load",function(){
    var revise = document.querySelector(".re");

    InputDate = document.querySelector(".input-date");
    InputTime = document.querySelector(".input-time");
    InputWeight = document.querySelector(".input-weight");

    revise.onclick = function(){
        var date = InputDate.value;
        var time = InputTime.value;
        var weight = InputWeight.value;

        console.log(date);
        console.log(time);
        console.log(weight);

        var con =confirm("정말 수정하시겠습니까?");
        if(con == true){//localStorage에 저장
            localStorage.setItem("reDate",date);
            localStorage.setItem("reTime",time);
            localStorage.setItem("reWeight",weight);
            location.href = "table.html";
        }
    }

});