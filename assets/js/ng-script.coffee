class RmzController
  constructor: ($scope, @dataService) ->
    baseRow=[{corder:1,vl:"",rspan:1,cspan:1,exs:""},{corder:2,vl:"",rspan:1,cspan:1,exs:""},{corder:3,vl:"",rspan:1,cspan:1,exs:""},{corder:4,vl:"",rspan:1,cspan:1,exs:""},{corder:5,vl:"",rspan:1,cspan:1,exs:""},{corder:6,vl:"",rspan:1,cspan:1,exs:""},{corder:7,vl:"",rspan:1,cspan:1,exs:""},{corder:8,vl:"",rspan:1,cspan:1,exs:""}]
    dataService.updateData('data')
    $scope.tableData = dataService.tableData
    #angular.copy originData
    $scope.refreshTable = ->
      dataService.updateData('data')
#      $scope.tableData = dataService.tableData
      #angular.copy originData
    $scope.mkRow = (cat) ->
      obj = {}
      obj.rorder=cat.body.length+1
      obj.elements=angular.copy baseRow
      cat.cat.rspan+=1
      cat.body.push obj
    $scope.rmRow = (cat) ->
      if cat.body.length == 1
        alert("at east one row required, or you should delete the whole category!")
        cat.body[0].elements=angular.copy baseRow
      else
        cat.cat.rspan-=1
        cat.body.pop()
    $scope.mkCat = (vcn) ->
      obj = {}
      obj.cat=
        corder:-1
        vl:vcn
        rspan:1
        cspan:1,exs:""
      obj.body=[]
      obj.body[0]={}
      obj.body[0].rorder=1
      obj.body[0].elements=angular.copy baseRow
      $scope.tableData.vowels.cats.push obj
    $scope.rmCat = ->
      if $scope.tableData.vowels.cats.length == 1
        alert("at east one category required, or you should modify the content of current category!")
      else
        $scope.tableData.vowels.cats.pop()
    $scope.fallback = ->
      alert("copy failed, copy data manually")
    $scope.suc = ->
      alert("copy successed!")
    $scope.button =
      "radio": 0
    $scope.mkExp = (ele) ->
      obj =
        w: ""
        p: ""
      ele.exs.push obj
    $scope.rmExp = (ele) ->
      console.log(ele.exs.length)
      ele.exs.pop() if ele.exs.length > 0
angular
.module "myApp", ['ngAnimate',"mgcrea.ngStrap","ngClipboard"]
.config ["ngClipProvider",(ngClipProvider) ->
    ngClipProvider.setPath("assets/js/ZeroClipboard.swf")
]
.factory "dataService", ['$http', ($http) ->
  class DataService
    constructor: (@$http) ->
    @tableData =
      jv: {}
      lst: {}
    @dlist = ->
      $http
      .get "data/list.json"
      .success (data) ->
        DataService.tableData.lst = data
      .error ->
        alert 'error'
    @updateData = (loc) ->
      $http
      .get "data/#{loc}.json"
      .success (data) ->
        DataService.tableData.jv = data
      .error ->
        alert 'error'
]
.controller "rmzController", ['$scope', 'dataService', RmzController]