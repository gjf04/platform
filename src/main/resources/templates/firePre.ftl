<!DOCTYPE html>

<html>
<head>
    <meta name="viewport" content="width=device-width" />
    <meta http-equiv="content-type" content="text/html;charset=utf-8">
    <title>智慧用电管理首页</title>
    <link href="${urls.getForLookupPath('/css/bootstrap.min.css')}" rel="stylesheet"/>
    <link href="${urls.getForLookupPath('/css/animate.css')}" rel="stylesheet" />
     <script src="${urls.getForLookupPath('/js/jquery.min.js')}"></script>
    
    
    <script src="http://api.map.baidu.com/api?v=3.0&ak=RIHNZxuoyitMmOkFscbf4Iq0bl5HomDM"></script>
    <script src="${urls.getForLookupPath('/js/mapv.js')}"></script>

    <script src="${urls.getForLookupPath('/js/highcharts.js')}"></script>

    <link href="${urls.getForLookupPath('/css/ElecSumPage.css')}" rel="stylesheet" />
    

    <style type="text/css">
        html, body {
            width: 100%;
            height: 100%;
            margin: 0;
            padding: 0;
            overflow: hidden;
        }

        #map {
            width: 100%;
            height: 100%;
        }
		.foot{
    color: #f44336;
    font-size: 2.5rem;
    font-weight: bolder;
    line-height: 3rem;
    padding: 0 8px;
    text-align: center;
    width: 100%;
}
    </style>
  
</head>
<body>
    

<div class="bodyBox">

    <div class="MapBox">
		<div id="map"></div>
		<canvas id="canvas"></canvas>

    </div>
        <div class="HeadBox">
            <div class="webTitle">智慧用电管理平台</div>
            <div class="navBack">
                <div class="backImg" onclick="window.top.goMain();"></div>
                <div class="backTitle">返回首页</div>
            </div>
        </div>

    <div class="leftBox">
        <div class="numBox" id="ElecAlarmSum">
            <div class="numTitle">设备总数</div>
            <div class="numContent" id="Alarm00">
                <div class="numCell">0</div>
                <div class="numCell">0</div>
                <div class="numCell">0</div>
                <div class="numCell">0</div>
                <div class="numCell">0</div>
                <div class="numCell">0</div>
            </div>
            <div class="numItem bg1" data-sign="01" onclick="openDepartment();">
                报警<div id="Alarm01" class="valueCell">0/0</div>
            </div>
            <div class="numItem bg2"  data-sign="02" >
                预警<div id="Alarm02" class="valueCell">0/0</div>
            </div>
            <div class="numItem bg3"  data-sign="03" >
                在线<div id="Alarm03" class="valueCell">0/0</div>
            </div>
            <div class="numItem bg4" data-sign="04">
                未激活<div id="Alarm04" class="valueCell">0/0</div>
            </div>
        </div>

        
    </div>
	
	
	<div class="queryBox">
        <div class="queryToolBar">
            <P class="foot">当前报警设备</p>
        </div>
        <div class="queryResult">
		<div class="resultItem" onclick="location.href='overview.html'"><div class="resultTitle">1、蒙阴鹏程万里车辆有限公司</div>
		<div class="resultText">地址：蒙阴西住佛</div>
		<div class="resultText">电话：17853967018</div>
		<div class="resultText">报警：5次</div>
		</div>
		<div class="resultItem" onclick="location.href='overview.html'"><div class="resultTitle">2、山东潍坊百货集团股份有限公司佳乐家金马店</div><div class="resultText">地址：潍坊市高新区胜利东街与金马路东南角						</div><div class="resultText">电话：13805361958</div><div class="resultText">报警：2517次</div></div><div class="resultItem"><div class="resultTitle">3、沂水县东方超市2店</div><div class="resultText">地址：沂水县沂蒙山路</div><div class="resultText">电话：18669567190</div><div class="resultText">报警：2次</div></div><div class="resultItem"><div class="resultTitle">4、山东潍坊百货集团股份有限公司坊子佳乐家超市</div><div class="resultText">地址：坊子区凤凰街以北、龙山路以东</div><div class="resultText">电话：13864699908</div><div class="resultText">报警：1376次</div></div><div class="resultItem"><div class="resultTitle">5、潍坊宜必思酒店有限公司</div><div class="resultText">地址：潍坊市潍城区青年路428号金沙广场6号楼(妇幼保健医院东行100米金沙大酒店后身)</div><div class="resultText">电话：13361540997</div><div class="resultText">报警：9次</div></div><div class="resultItem"><div class="resultTitle">6、九州(长安店)</div><div class="resultText">地址：沂水县沂蒙山宾馆附近</div><div class="resultText">电话：13954961611</div><div class="resultText">报警：8次</div></div><div class="resultItem"><div class="resultTitle">7、临沂达尔美食品有限公司</div><div class="resultText">地址：闫家庄村（北二环路）</div><div class="resultText">报警：4次</div></div><div class="resultItem"><div class="resultTitle">8、黄岛区鑫如意养老院</div><div class="resultText">地址：黄岛区金桥大街48号</div><div class="resultText">电话：13954284996</div><div class="resultText">报警：21次</div></div><div class="resultItem"><div class="resultTitle">9、青岛西海岸康宁颐养中心</div><div class="resultText">地址：黄岛区柳花泊路59号</div><div class="resultText">电话：18553208775</div><div class="resultText">报警：79次</div></div><div class="resultItem"><div class="resultTitle">10、潍坊天天假日餐饮有限公司</div><div class="resultText">地址：东风西街460号</div><div class="resultText">报警：2次</div></div><div class="resultItem"><div class="resultTitle">11、潍坊途逸酒店管理有限公司（乐家乐公寓）</div><div class="resultText">地址：健康西街166号鸢都购物中心6楼660号</div><div class="resultText">电话：13780858026</div><div class="resultText">报警：836次</div></div><div class="resultItem"><div class="resultTitle">12、青岛四方车辆研究所有限公司（思锐科技）</div><div class="resultText">地址： 青岛高新区新业路南侧、和融路西侧 </div><div class="resultText">电话：13335089180</div><div class="resultText">报警：1次</div></div><div class="resultItem"><div class="resultTitle">13、青岛金鼎广场有限公司（崂山利群）</div><div class="resultText">地址：青岛市海尔路83号</div><div class="resultText">电话：13853213996</div><div class="resultText">报警：3次</div></div><div class="resultItem"><div class="resultTitle">14、山东恒泰纺织有限公司</div><div class="resultText">地址：沂水县中心南街37号</div><div class="resultText">电话：2251219</div><div class="resultText">报警：374次</div></div><div class="resultItem"><div class="resultTitle">15、新华里社区服务中心</div><div class="resultText">地址：市北区新华里</div><div class="resultText">电话：13012530812</div><div class="resultText">报警：2次</div></div><div class="resultItem"><div class="resultTitle">16、山东中创轮胎股份有限公司</div><div class="resultText">地址：山东省临沂市沂南经济开发区中创大道1号</div><div class="resultText">电话：17853931816</div><div class="resultText">报警：6次</div></div><div class="resultItem"><div class="resultTitle">17、青岛市中心血站</div><div class="resultText">地址：隆德路9号</div><div class="resultText">电话：85777322</div><div class="resultText">报警：14次</div></div><div class="resultItem"><div class="resultTitle">18、沂南县龙盛食品有限公司</div><div class="resultText">地址：沂南县大庄镇喜庆家具城东</div><div class="resultText">报警：9次</div></div></div>
    </div>
    

  

</div>

    
    <script type="text/javascript">

        // 百度地图API功能
        var map = new BMap.Map("map", {
            enableMapClick: false
        });    // 创建Map实例
        map.centerAndZoom(new BMap.Point(120.4160688014, 36.3106964017), 16);  // 初始化地图,设置中心点坐标和地图级别
        map.enableScrollWheelZoom(true); // 开启鼠标滚轮缩放

        map.setMapStyle({
            style: "midnight"
        });

        var randomCount = 300;

        var data = [];

        var citys = ["北京","天津","上海","重庆","石家庄","太原","呼和浩特","哈尔滨","长春","沈阳","济南","南京","合肥","杭州","南昌","福州","郑州","武汉","长沙","广州","南宁","西安","银川","兰州","西宁","乌鲁木齐","成都","贵阳","昆明","拉萨","海口"];

        // 构造数据
        while (randomCount--) {
            var cityCenter = mapv.utilCityCenter.getCenterByCityName(citys[parseInt(Math.random() * citys.length)]);
            data.push({
                geometry: {
                    type: 'Point',
                    coordinates: [cityCenter.lng - 2 + Math.random() * 4, cityCenter.lat - 2 + Math.random() * 4]
                },
                count: 30 * Math.random()
            });
        }

        var dataSet = new mapv.DataSet(data);

        var options = {
            fillStyle: 'rgba(255, 50, 50, 0.6)',
            shadowColor: 'rgba(255, 50, 50, 1)',
            shadowBlur: 30,
            globalCompositeOperation: 'lighter',
            methods: {
                click: function (item) {
                    console.log(item);
                }
            },
            size: 5,
            draw: 'simple'
        }

        var mapvLayer = new mapv.baiduMapLayer(map, dataSet, options);

        // dataSet.set(data); // 修改数据

        // mapvLayer.show(); // 显示图层
        // mapvLayer.hide(); // 删除图层
		
		function openDepartment(){
			var url='./department.html';                             //转向网页的地址; 
           var name='';                            //网页名称，可为空; 
           var iWidth=900;                          //弹出窗口的宽度; 
           var iHeight=600;                         //弹出窗口的高度; 
           //获得窗口的垂直位置 
           var iTop = (window.screen.availHeight - 30 - iHeight) / 2; 
           //获得窗口的水平位置 
           var iLeft = (window.screen.availWidth - 10 - iWidth) / 2; 
           window.open(url, name, 'height=' + iHeight + ',,innerHeight=' + iHeight + ',width=' + iWidth + ',innerWidth=' + iWidth + ',top=' + iTop + ',left=' + iLeft + ',status=no,toolbar=no,menubar=no,location=no,resizable=no,scrollbars=0,titlebar=no'); 
			//window.open ("./department.html", "newwindow", "height=700, width=900, top=0,left=100,toolbar=no, menubar=no, scrollbars=no, resizable=no, //location=no, status=no")
		}
    </script>
</body>
</html>
