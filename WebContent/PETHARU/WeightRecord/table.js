window.addEventListener("load",function(){

    tbody = document.querySelector(".tbody");

    //입력데이터 받아오기
    var date = localStorage.getItem("date");
    var time = localStorage.getItem("time");
    var weight = localStorage.getItem("weight");

    //엘리먼트 생성
    var tr = document.createElement("tr");
    var tdDate = document.createElement("td");
    var tdTime= document.createElement("td");
    var tdWeight = document.createElement("td");

    var hour = parseInt(time.substring(0,3));
    var minute = time.substring(3,5); 
    //td에 값넣기
    tdDate.append(date);
    if(hour>12){
        tdTime.append(hour-12+":"+minute+" PM");
        tdTime.className = "pm";
    }
    else{
        hour = time.substring(1,2)
        minute = time.substring(3,5); 
        tdTime.append(hour+":"+minute+" AM")
        tdTime.className = "am";
    }

    tdWeight.append(weight+" KG");
    //tr에 td넣기
    tr.append(tdDate);
    tr.append(tdTime);
    tr.append(tdWeight);
    //표에 추가
    tbody.append(tr);
});


window.addEventListener("load",function(){

    var tr = tbody.querySelectorAll("tr");
    for(let i=0; i<tr.length; i++){
        var td = tr[i].querySelectorAll("td");
        td[0].onclick = function(){
            selDate = tr[i].querySelector("td");
            selTime = tr[i].querySelector("td:nth-child(2)");
            selWeight = tr[i].querySelector("td:nth-child(3)");

            date = selDate.innerText;
            time = selTime.innerText;
            weight = selWeight.innerText;
            
            console.log(tr[i]);
            console.log(date);
            console.log(time);
            console.log(weight);

            //localStorage에 저장
            localStorage.setItem("reDate",date);
            localStorage.setItem("reTime",time);
            localStorage.setItem("reWeight",weight);
        }
        
    }
    
});