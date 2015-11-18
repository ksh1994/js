var BPO = {
	ShowMsg:function(flag, msg) {
		var html = '<div class="alert alert-danger fade in msg-color" style="display:none;">';
			html += '<button data-dismiss="alert" class="close">×</button>';
			html += '<i class="fa-fw fa"></i>';
			html += '<strong>Error!</strong> <span id="msg"></span>';
			html += '</div>';
			
		$("#msg_box").html(html);
		
		var c,m,i;
		switch (flag) {
			case 200:
				c = 'alert-success';
				m = 'Success!';
				i = 'fa-check'
				break;
			case 300:
				c = 'alert-danger';
				m = 'Error!';
				i = 'fa-times'
				break;
			case 400:
				c = 'alert-warning';
				m = 'Warning!';
				i = 'fa-warning'
				break;
		}
		
		$(".msg-color").addClass(c);
		$(".alert > strong").text(m);
		$(".alert > i").addClass(i);
		$("#msg").html(msg);
		$(".alert").fadeIn();
		document.getElementsByTagName('body')[0].scrollTop = 0;
	},
	
	Del:function(url,id,load_url){
		var data = {id:id};
		$.SmartMessageBox({
			title : "Notice!",
			content : "Do you want to delete this record?",
			buttons : '[No][Yes]'
		}, function(ButtonPressed) {
			if (ButtonPressed === "Yes") {
				$.get(url,data,function(d){
					$("#data_list").load(load_url);
					BPO.ShowMsg(d.status,d.msg);	
				},'json');
			}
			if (ButtonPressed === "No") {
			}
		});
	},
	
	BoxTop:function(t,c) {
		$.smallBox({
			title : t,
			content : c,
			color : "rgb(196, 106, 105)",
			 timeout: 8000,
//	 iconSmall : "fa fa-thumbs-up bounce animated",
	 icon : "fa fa-bell"
		});
	}
		
}

