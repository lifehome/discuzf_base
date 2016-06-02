JGPmoney = false;
JGPmonth = false;
CompanyType = false;
dgdsMoney= false;
BusinessTime= false;
ApplyOne_yon = false;
UserName = false;
Tel = false;
Email = true;
applyArea = true;
$(document).ready(function() {
	HomeIconW();
});
function HomeiptFoc(){
	$('.ipt_ts').text('');
}
function HomeSearchYZ(){
	var moneyVal = $('#dkMoney').val();
	if(moneyVal.length == 0){
		$('#money_ts').text('金額別忘了填哦');
	}else{
	  if(!isNaN(moneyVal)){
		if (moneyVal < 0 || moneyVal > 6000) {
		  $('#money_ts').text('只限0~6000萬');
		  JGPmoney = false;
		} else {JGPmoney = true;}
	  } else {
		  $('#money_ts').text('只填純數字喲');
		  JGPmoney = false;
	  }
	}
	var monthVal = $('#dkMonth').val();
	if(monthVal.length == 0){
		$('#month_ts').text('期限別忘了填哦');
	}else{
		if(!isNaN(monthVal)){
		    if (monthVal <= 0 || monthVal > 840) {
			    $('#month_ts').text('只限0~840個月');
			    JGPmonth = false;
		    } else {
			    JGPmonth = true;
		    }
		}else{
		   $('#month_ts').text('只填純數字喲');
		   JGPmoney = false;
		}
    }
}
function SearchFun(){
	HomeSearchYZ();
    if (JGPmoney == true && JGPmonth == true) {
        var type_id = 1;
        var money = $('#dkMoney').val();
        var time_dw = $('#time_dw').hasClass('geyue');
		var month = $('#dkMonth').val();
        var interest = 0;
        var give_time = 0;
        var bank_type = 9999;
        fixed_url = '/money/' + money + '/month/' + month;
        var site_url = window.location.host;
        var url = "http://" + site_url + '/qitongbao/xindai'+ fixed_url;
        window.open(url, "_self");
        return false;
    }
}
function ProviewTab(obj){
	var obj = $(obj);
	var td = $('#Proview_tab_tit td');
	td.removeClass('show_td');
	obj.addClass('show_td');
	var num = obj.index();
	var con = $('#Proview_tab_con .Proview_tab_c1');
	var objcon = con.eq(num);
	con.hide();
	objcon.show();
	var zongHe = $('body').height();
	$("html, body").animate({
	  scrollTop: zongHe
	}, 1000);
}
function ApplyOne_yonCK(obj){
	var obj = $(obj);
	var span = $('.changeOp span');
	var objspan = obj.find('span');
	span.removeClass('changeYes');
	objspan.addClass('changeYes');
	$('#ApplyOne_yonTS').text('');
}
function hotkey(){
var hotkeyArr = new Array('','私營企業','個體工商戶','公務員/事業單位','大型壟斷國企','世界500強企業','上市企業','普通企業','無固定職業');
var hotkey = document.getElementById('CompanySelect').value;
var text = hotkeyArr[hotkey];
document.getElementById('CompanyType').innerHTML = text;
$('#CompanyType').attr('value',hotkey);
}
function HSearchType(){
var SelecteArr = new Array('','私營企業','個體工商戶','公務員/事業單位','大型壟斷國企','世界500強企業','上市企業','普通企業','無固定職業');
var hotkey = document.getElementById('HSearchTypeLi').value;
var text = SelecteArr[hotkey];
document.getElementById('HSearchType').innerHTML = text;
$('#HSearchType').attr('value',hotkey);
  $('#HSearchType').css('color','#333');
}
function BusinessTimeCK(){
  $('#BusinessTime').css('color','#333');
  var hotkeyArr = new Array('','不足半年','半年','1年','2年','3年','4年','5年以上（含5年）');
  var hotkey = document.getElementById('BusinessTimeSelect').value;
  var text = hotkeyArr[hotkey];
  document.getElementById('BusinessTime').innerHTML = text;
$('#BusinessTime').attr('value',hotkey);
}
function applyOneYZ(){
	var c1val = $('#CompanyType').attr('value');
	if(c1val == ''){
		$('#companyTS').text('請您選擇一個');
	}else {
		CompanyType = true;
	}
	var c2val = $.trim($('#dgdsMoney').val());
	if(c2val == '請輸入數字' || c2val == ''){
		$('#dgdsTS').text('請輸入數字');
		dgdsMoney = false;
	}else {
		dgdsMoney = true;
	}
	var c3val = $('#BusinessTime').attr('value');
	if(c3val == ''){
		$('#BusinessTimeTS').text('請您選擇一個');
	}else {
		BusinessTime = true;
	}
	var c4yon = $('.ApplyOne_yon .changeOp span').hasClass('changeYes');
	if(c4yon == false){
		$('#ApplyOne_yonTS').text('請您選擇一個');
		ApplyOne_yon = false;
	}else {
		ApplyOne_yon = true;
	}
}
function applyTwoYZ(){
	var UserNameval = $.trim($('#UserName').val());
	if(UserNameval == '如：李先生'){
		$('#UserNameTS').text('請輸入您的姓名');
		UserName = false;
	}else {
		var reg = /[^\u4E00-\u9FA5]+$/;
		var boolean = !reg.test(UserNameval);
		if (UserNameval.length > 0 && !reg.test(UserNameval)) {
		  UserName = true;
		}else {
		  UserName = false;
		  $('#UserNameTS').text('請輸入中文');
		}
	}
	var Telval = $.trim($('#UserTel').val());
	if(Telval == '用於接收信貸員聯繫方式'){
		Tel = false;
		$('#UserTelTS').text('請輸入手機號碼');
	}else {
	  if(checkMobile(Telval)){
		Tel = true;
	  }else{
		Tel = false;
		$('#UserTelTS').text('手機號格式不對哦');
	  }
	}
	var Emailval = $.trim($('#UserEmail').val());
	if(Emailval == '用於獲取申請貸款所需材料(可選填)'){
	}else {
	  if(checkEmail(Emailval)){
		Email = true;
	  }else{
		Email = false;
		$('#UserEmailTS').text('郵件格式不對哦');
	  }
	}
}
function applyThreeYZ(){
	var val = $.trim($('#applyArea').val());
    var num = val.length;
    var count = 140;
    if (num > count) {
        var yewnum = $(obj).val().substr(0, count)
        $('#applyAreaTS').text('不超過140字哦');
		applyArea = false;
    }else if(num < 5){
        $('#applyAreaTS').text('至少五個字，繼續加油！');
		applyArea = false;
	}else {
		applyArea = true;
	}
}
function ApplyCK(nextName){
	if(nextName == 'Applyone'){
		applyOneYZ();
		if(CompanyType == true && dgdsMoney == true && BusinessTime == true && ApplyOne_yon == true){
          window.open('ApplyTwo.html');
		}
	}else if(nextName == 'Applytwo'){
		applyTwoYZ();
		if(UserName == true && Tel == true && Email == true){
          window.open('ApplyThree.html');
		}
	}else if(nextName == 'ApplyThree'){
		var val = $.trim($('#applyArea').val());
		var num = val.length;
		if(num > 0){
		  applyThreeYZ();
		  if(applyArea == true){
			window.open('ApplyFour.html');
		  }
		}else {
			window.open('ApplyFour.html');
		}
	}
}
function hideTS(obj){
  $('.ApplyOne_li_ts').text('');
}
function dgdsFoc(obj){
  var obj = $(obj);
  var vall = obj.val();
  var val = $.trim(obj.val());
  if(val == '請輸入數字'){
    obj.css('color','#999');
    obj.val('');
  }
    obj.css('color','#333');
}
function dgdsBlu(obj){
  var obj = $(obj);
  var vall = obj.val();
  var val = $.trim(obj.val());
  if(val == ''){
	obj.val('請輸入數字');
    obj.css('color','#999');
  }
}
function usernameFoc(obj){
  var obj = $(obj);
  var vall = obj.val();
  var val = $.trim(obj.val());
  if(val == '如：李先生'){
    obj.css('color','#999');
    obj.val('');
  }
    obj.css('color','#333');
}
function usernameBlu(obj){
  var obj = $(obj);
  var vall = obj.val();
  var val = $.trim(obj.val());
  if(val == ''){
	obj.val('如：李先生');
    obj.css('color','#999');
  }
}
function telFoc(obj){
  var obj = $(obj);
  var vall = obj.val();
  var val = $.trim(obj.val());
  if(val == '用於接收信貸員聯繫方式'){
    obj.css('color','#999');
    obj.val('');
  }
    obj.css('color','#333');
}
function telBlu(obj){
  var obj = $(obj);
  var vall = obj.val();
  var val = $.trim(obj.val());
  if(val == ''){
	obj.val('用於接收信貸員聯繫方式');
    obj.css('color','#999');
  }
}
function emailFoc(obj){
  var obj = $(obj);
  var vall = obj.val();
  var val = $.trim(obj.val());
  if(val == '用於獲取申請貸款所需材料(可選填)'){
    obj.css('color','#999');
    obj.val('');
  }
    obj.css('color','#333');
}
function emailBlu(obj){
  var obj = $(obj);
  var vall = obj.val();
  var val = $.trim(obj.val());
  if(val == ''){
	obj.val('用於獲取申請貸款所需材料(可選填)');
    obj.css('color','#999');
  }
}
function applyAreaFoc(obj){
  var obj = $(obj);
  var applyArea = obj.parents('.applyArea');
  obj.text('');
  obj.css('color','#333');
  applyArea.css('border','1px solid #2babef');
}
function applyAreaBlu(obj){
  var obj = $(obj);
  var val = $.trim(obj.val());
  var length = val.length;
  if(length > 0){
    obj.css('color','#999');
  }else {
    obj.css('color','#666');
  }
  var applyArea = obj.parents('.applyArea');
  applyArea.css('border','1px solid #ccc');
}

function checkMobile(s) {
	var regu = /^(13[0-9]|14[0-9]|15[0-9]|18[0-9])\d{8}$/;
	var re = new RegExp(regu);
	if (re.test(s)) {
		return true;
	}
	else {
		return false;
	}
}
function checkEmail(yx){
	var reyx=/^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9_\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
	return(reyx.test(yx));
}
function ChangeCity(){
  	$('#CityChange').toggle();
};
function ChangeCityLi(obj){
  	var obj = $(obj);
	var bojhtml = obj.html();
	var Shtml = $('#City').html(bojhtml);
	document.getElementById('CityChange').style.display = "none";
}
function ChangeCityTab(obj){
	var obj = $(obj);
	var alltd = $('#CityChange table td');
	alltd.removeClass('SCityTab');
	obj.addClass('SCityTab');
	var num = obj.index();
	var citycon = $('.CityChangeTC_con');
	var Tcitycon = $('#CityChangeTC div.CityChangeTC_con').eq(num);
	citycon.hide();
	Tcitycon.show();
}
function HomeIconW(){
  var zongW = $(window).width();
  if(zongW == 320){}
}
function SearchTypeLiCK(obj){
	var obj = $(obj);
	var reval = obj.attr('reval');
	if(reval == 0){
		$('.moreSearchTC_Nav li').removeClass('show');
		obj.addClass('show');
		$('.moreSearchTC_Con').hide();
		$('#ShopSearchCon').show();
	}else if(reval == 1){
		$('.moreSearchTC_Nav li').removeClass('show');
		obj.addClass('show');
		$('.moreSearchTC_Con').hide();
		$('#CompanySearchCon').show();
	}else if(reval == 2){
		$('.moreSearchTC_Nav li').removeClass('show');
		obj.addClass('show');
		$('.moreSearchTC_Con').hide();
		$('#CarSearchCon').show();
	}else if(reval == 3){
		$('.moreSearchTC_Nav li').removeClass('show');
		obj.addClass('show');
		$('.moreSearchTC_Con').hide();
		$('#HouseSearchCon').show();
	}
}
function MoreSearchCK(){
	var Msearch = $('#moreSearchTC');
	$('#SearchTCZZC').show();
	Msearch.show();
}
function MoreSearchBack(){
	$('#moreSearchTC').hide();
	$('#SearchTCZZC').hide();
}