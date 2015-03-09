class RmzController
  constructor: ($scope) ->
    originData = {"name":"","consonants":{"headsize":{"rows":3,"cols":3},"head":[{"rorder":1,"cells":[{"corder":1,"vl":"脣","rspan":1,"cspan":2},{"corder":2,"vl":"舌冠","rspan":1,"cspan":7},{"corder":3,"vl":"舌背","rspan":1,"cspan":5},{"corder":4,"vl":"聲門","rspan":1,"cspan":2}]},{"rorder":2,"cells":[{"corder":1,"vl":"雙脣","rspan":1,"cspan":2},{"corder":2,"vl":"脣齒","rspan":1,"cspan":2},{"corder":3,"vl":"齒齦","rspan":1,"cspan":2},{"corder":4,"vl":"齦後","rspan":1,"cspan":2},{"corder":5,"vl":"齦齶","rspan":1,"cspan":2},{"corder":6,"vl":"硬齶","rspan":1,"cspan":2},{"corder":7,"vl":"軟齶","rspan":1,"cspan":2},{"corder":8,"vl":"聲門","rspan":1,"cspan":2}]},{"rorder":3,"cells":[{"corder":1,"vl":"IPA","rspan":1,"cspan":1},{"corder":2,"vl":"拼音","rspan":1,"cspan":1},{"corder":3,"vl":"IPA","rspan":1,"cspan":1},{"corder":4,"vl":"拼音","rspan":1,"cspan":1},{"corder":5,"vl":"IPA","rspan":1,"cspan":1},{"corder":6,"vl":"拼音","rspan":1,"cspan":1},{"corder":7,"vl":"IPA","rspan":1,"cspan":1},{"corder":8,"vl":"拼音","rspan":1,"cspan":1},{"corder":9,"vl":"IPA","rspan":1,"cspan":1},{"corder":10,"vl":"拼音","rspan":1,"cspan":1},{"corder":11,"vl":"IPA","rspan":1,"cspan":1},{"corder":12,"vl":"拼音","rspan":1,"cspan":1},{"corder":13,"vl":"IPA","rspan":1,"cspan":1},{"corder":14,"vl":"拼音","rspan":1,"cspan":1},{"corder":15,"vl":"IPA","rspan":1,"cspan":1},{"corder":16,"vl":"拼音","rspan":1,"cspan":1}]}],"body":[{"rorder":1,"elements":[{"corder":-3,"vl":"塞","rspan":3,"cspan":1,"exs":""},{"corder":-2,"vl":"清","rspan":2,"cspan":1,"exs":""},{"corder":-1,"vl":"送氣","rspan":1,"cspan":1,"exs":""},{"corder":1,"vl":"","rspan":1,"cspan":1,"exs":""},{"corder":2,"vl":"","rspan":1,"cspan":1,"exs":""},{"corder":3,"vl":"","rspan":1,"cspan":1,"exs":""},{"corder":4,"vl":"","rspan":1,"cspan":1,"exs":""},{"corder":5,"vl":"","rspan":1,"cspan":1,"exs":""},{"corder":6,"vl":"","rspan":1,"cspan":1,"exs":""},{"corder":7,"vl":"","rspan":1,"cspan":1,"exs":""},{"corder":8,"vl":"","rspan":1,"cspan":1,"exs":""},{"corder":9,"vl":"","rspan":1,"cspan":1,"exs":""},{"corder":10,"vl":"","rspan":1,"cspan":1,"exs":""},{"corder":11,"vl":"","rspan":1,"cspan":1,"exs":""},{"corder":12,"vl":"","rspan":1,"cspan":1,"exs":""},{"corder":13,"vl":"","rspan":1,"cspan":1,"exs":""},{"corder":14,"vl":"","rspan":1,"cspan":1,"exs":""},{"corder":15,"vl":"","rspan":1,"cspan":1,"exs":""},{"corder":16,"vl":"","rspan":1,"cspan":1,"exs":""}]},{"rorder":2,"elements":[{"corder":-1,"vl":"不送氣","rspan":1,"cspan":1,"exs":""},{"corder":1,"vl":"","rspan":1,"cspan":1,"exs":""},{"corder":2,"vl":"","rspan":1,"cspan":1,"exs":""},{"corder":3,"vl":"","rspan":1,"cspan":1,"exs":""},{"corder":4,"vl":"","rspan":1,"cspan":1,"exs":""},{"corder":5,"vl":"","rspan":1,"cspan":1,"exs":""},{"corder":6,"vl":"","rspan":1,"cspan":1,"exs":""},{"corder":7,"vl":"","rspan":1,"cspan":1,"exs":""},{"corder":8,"vl":"","rspan":1,"cspan":1,"exs":""},{"corder":9,"vl":"","rspan":1,"cspan":1,"exs":""},{"corder":10,"vl":"","rspan":1,"cspan":1,"exs":""},{"corder":11,"vl":"","rspan":1,"cspan":1,"exs":""},{"corder":12,"vl":"","rspan":1,"cspan":1,"exs":""},{"corder":13,"vl":"","rspan":1,"cspan":1,"exs":""},{"corder":14,"vl":"","rspan":1,"cspan":1,"exs":""},{"corder":15,"vl":"","rspan":1,"cspan":1,"exs":""},{"corder":16,"vl":"","rspan":1,"cspan":1,"exs":""}]},{"rorder":3,"elements":[{"corder":-2,"vl":"濁","rspan":1,"cspan":2,"exs":""},{"corder":1,"vl":"","rspan":1,"cspan":1,"exs":""},{"corder":2,"vl":"","rspan":1,"cspan":1,"exs":""},{"corder":3,"vl":"","rspan":1,"cspan":1,"exs":""},{"corder":4,"vl":"","rspan":1,"cspan":1,"exs":""},{"corder":5,"vl":"","rspan":1,"cspan":1,"exs":""},{"corder":6,"vl":"","rspan":1,"cspan":1,"exs":""},{"corder":7,"vl":"","rspan":1,"cspan":1,"exs":""},{"corder":8,"vl":"","rspan":1,"cspan":1,"exs":""},{"corder":9,"vl":"","rspan":1,"cspan":1,"exs":""},{"corder":10,"vl":"","rspan":1,"cspan":1,"exs":""},{"corder":11,"vl":"","rspan":1,"cspan":1,"exs":""},{"corder":12,"vl":"","rspan":1,"cspan":1,"exs":""},{"corder":13,"vl":"","rspan":1,"cspan":1,"exs":""},{"corder":14,"vl":"","rspan":1,"cspan":1,"exs":""},{"corder":15,"vl":"","rspan":1,"cspan":1,"exs":""},{"corder":16,"vl":"","rspan":1,"cspan":1,"exs":""}]},{"rorder":4,"elements":[{"corder":-3,"vl":"擦","rspan":2,"cspan":1,"exs":""},{"corder":-2,"vl":"清","rspan":1,"cspan":2,"exs":""},{"corder":1,"vl":"","rspan":1,"cspan":1,"exs":""},{"corder":2,"vl":"","rspan":1,"cspan":1,"exs":""},{"corder":3,"vl":"","rspan":1,"cspan":1,"exs":""},{"corder":4,"vl":"","rspan":1,"cspan":1,"exs":""},{"corder":5,"vl":"","rspan":1,"cspan":1,"exs":""},{"corder":6,"vl":"","rspan":1,"cspan":1,"exs":""},{"corder":7,"vl":"","rspan":1,"cspan":1,"exs":""},{"corder":8,"vl":"","rspan":1,"cspan":1,"exs":""},{"corder":9,"vl":"","rspan":1,"cspan":1,"exs":""},{"corder":10,"vl":"","rspan":1,"cspan":1,"exs":""},{"corder":11,"vl":"","rspan":1,"cspan":1,"exs":""},{"corder":12,"vl":"","rspan":1,"cspan":1,"exs":""},{"corder":13,"vl":"","rspan":1,"cspan":1,"exs":""},{"corder":14,"vl":"","rspan":1,"cspan":1,"exs":""},{"corder":15,"vl":"","rspan":1,"cspan":1,"exs":""},{"corder":16,"vl":"","rspan":1,"cspan":1,"exs":""}]},{"rorder":5,"elements":[{"corder":-2,"vl":"濁","rspan":1,"cspan":2,"exs":""},{"corder":1,"vl":"","rspan":1,"cspan":1,"exs":""},{"corder":2,"vl":"","rspan":1,"cspan":1,"exs":""},{"corder":3,"vl":"","rspan":1,"cspan":1,"exs":""},{"corder":4,"vl":"","rspan":1,"cspan":1,"exs":""},{"corder":5,"vl":"","rspan":1,"cspan":1,"exs":""},{"corder":6,"vl":"","rspan":1,"cspan":1,"exs":""},{"corder":7,"vl":"","rspan":1,"cspan":1,"exs":""},{"corder":8,"vl":"","rspan":1,"cspan":1,"exs":""},{"corder":9,"vl":"","rspan":1,"cspan":1,"exs":""},{"corder":10,"vl":"","rspan":1,"cspan":1,"exs":""},{"corder":11,"vl":"","rspan":1,"cspan":1,"exs":""},{"corder":12,"vl":"","rspan":1,"cspan":1,"exs":""},{"corder":13,"vl":"","rspan":1,"cspan":1,"exs":""},{"corder":14,"vl":"","rspan":1,"cspan":1,"exs":""},{"corder":15,"vl":"","rspan":1,"cspan":1,"exs":""},{"corder":16,"vl":"","rspan":1,"cspan":1,"exs":""}]},{"rorder":6,"elements":[{"corder":-3,"vl":"塞擦","rspan":3,"cspan":1,"exs":""},{"corder":-2,"vl":"清","rspan":2,"cspan":1,"exs":""},{"corder":-1,"vl":"送氣","rspan":1,"cspan":1,"exs":""},{"corder":1,"vl":"","rspan":1,"cspan":1,"exs":""},{"corder":2,"vl":"","rspan":1,"cspan":1,"exs":""},{"corder":3,"vl":"","rspan":1,"cspan":1,"exs":""},{"corder":4,"vl":"","rspan":1,"cspan":1,"exs":""},{"corder":5,"vl":"","rspan":1,"cspan":1,"exs":""},{"corder":6,"vl":"","rspan":1,"cspan":1,"exs":""},{"corder":7,"vl":"","rspan":1,"cspan":1,"exs":""},{"corder":8,"vl":"","rspan":1,"cspan":1,"exs":""},{"corder":9,"vl":"","rspan":1,"cspan":1,"exs":""},{"corder":10,"vl":"","rspan":1,"cspan":1,"exs":""},{"corder":11,"vl":"","rspan":1,"cspan":1,"exs":""},{"corder":12,"vl":"","rspan":1,"cspan":1,"exs":""},{"corder":13,"vl":"","rspan":1,"cspan":1,"exs":""},{"corder":14,"vl":"","rspan":1,"cspan":1,"exs":""},{"corder":15,"vl":"","rspan":1,"cspan":1,"exs":""},{"corder":16,"vl":"","rspan":1,"cspan":1,"exs":""}]},{"rorder":7,"elements":[{"corder":-1,"vl":"不送氣","rspan":1,"cspan":1,"exs":""},{"corder":1,"vl":"","rspan":1,"cspan":1,"exs":""},{"corder":2,"vl":"","rspan":1,"cspan":1,"exs":""},{"corder":3,"vl":"","rspan":1,"cspan":1,"exs":""},{"corder":4,"vl":"","rspan":1,"cspan":1,"exs":""},{"corder":5,"vl":"","rspan":1,"cspan":1,"exs":""},{"corder":6,"vl":"","rspan":1,"cspan":1,"exs":""},{"corder":7,"vl":"","rspan":1,"cspan":1,"exs":""},{"corder":8,"vl":"","rspan":1,"cspan":1,"exs":""},{"corder":9,"vl":"","rspan":1,"cspan":1,"exs":""},{"corder":10,"vl":"","rspan":1,"cspan":1,"exs":""},{"corder":11,"vl":"","rspan":1,"cspan":1,"exs":""},{"corder":12,"vl":"","rspan":1,"cspan":1,"exs":""},{"corder":13,"vl":"","rspan":1,"cspan":1,"exs":""},{"corder":14,"vl":"","rspan":1,"cspan":1,"exs":""},{"corder":15,"vl":"","rspan":1,"cspan":1,"exs":""},{"corder":16,"vl":"","rspan":1,"cspan":1,"exs":""}]},{"rorder":8,"elements":[{"corder":-2,"vl":"濁","rspan":1,"cspan":2,"exs":""},{"corder":1,"vl":"","rspan":1,"cspan":1,"exs":""},{"corder":2,"vl":"","rspan":1,"cspan":1,"exs":""},{"corder":3,"vl":"","rspan":1,"cspan":1,"exs":""},{"corder":4,"vl":"","rspan":1,"cspan":1,"exs":""},{"corder":5,"vl":"","rspan":1,"cspan":1,"exs":""},{"corder":6,"vl":"","rspan":1,"cspan":1,"exs":""},{"corder":7,"vl":"","rspan":1,"cspan":1,"exs":""},{"corder":8,"vl":"","rspan":1,"cspan":1,"exs":""},{"corder":9,"vl":"","rspan":1,"cspan":1,"exs":""},{"corder":10,"vl":"","rspan":1,"cspan":1,"exs":""},{"corder":11,"vl":"","rspan":1,"cspan":1,"exs":""},{"corder":12,"vl":"","rspan":1,"cspan":1,"exs":""},{"corder":13,"vl":"","rspan":1,"cspan":1,"exs":""},{"corder":14,"vl":"","rspan":1,"cspan":1,"exs":""},{"corder":15,"vl":"","rspan":1,"cspan":1,"exs":""},{"corder":16,"vl":"","rspan":1,"cspan":1,"exs":""}]},{"rorder":9,"elements":[{"corder":-3,"vl":"鼻","rspan":2,"cspan":1,"exs":""},{"corder":-2,"vl":"清","rspan":1,"cspan":2,"exs":""},{"corder":1,"vl":"","rspan":1,"cspan":1,"exs":""},{"corder":2,"vl":"","rspan":1,"cspan":1,"exs":""},{"corder":3,"vl":"","rspan":1,"cspan":1,"exs":""},{"corder":4,"vl":"","rspan":1,"cspan":1,"exs":""},{"corder":5,"vl":"","rspan":1,"cspan":1,"exs":""},{"corder":6,"vl":"","rspan":1,"cspan":1,"exs":""},{"corder":7,"vl":"","rspan":1,"cspan":1,"exs":""},{"corder":8,"vl":"","rspan":1,"cspan":1,"exs":""},{"corder":9,"vl":"","rspan":1,"cspan":1,"exs":""},{"corder":10,"vl":"","rspan":1,"cspan":1,"exs":""},{"corder":11,"vl":"","rspan":1,"cspan":1,"exs":""},{"corder":12,"vl":"","rspan":1,"cspan":1,"exs":""},{"corder":13,"vl":"","rspan":1,"cspan":1,"exs":""},{"corder":14,"vl":"","rspan":1,"cspan":1,"exs":""},{"corder":15,"vl":"","rspan":1,"cspan":1,"exs":""},{"corder":16,"vl":"","rspan":1,"cspan":1,"exs":""}]},{"rorder":10,"elements":[{"corder":-2,"vl":"濁","rspan":1,"cspan":2,"exs":""},{"corder":1,"vl":"","rspan":1,"cspan":1,"exs":""},{"corder":2,"vl":"","rspan":1,"cspan":1,"exs":""},{"corder":3,"vl":"","rspan":1,"cspan":1,"exs":""},{"corder":4,"vl":"","rspan":1,"cspan":1,"exs":""},{"corder":5,"vl":"","rspan":1,"cspan":1,"exs":""},{"corder":6,"vl":"","rspan":1,"cspan":1,"exs":""},{"corder":7,"vl":"","rspan":1,"cspan":1,"exs":""},{"corder":8,"vl":"","rspan":1,"cspan":1,"exs":""},{"corder":9,"vl":"","rspan":1,"cspan":1,"exs":""},{"corder":10,"vl":"","rspan":1,"cspan":1,"exs":""},{"corder":11,"vl":"","rspan":1,"cspan":1,"exs":""},{"corder":12,"vl":"","rspan":1,"cspan":1,"exs":""},{"corder":13,"vl":"","rspan":1,"cspan":1,"exs":""},{"corder":14,"vl":"","rspan":1,"cspan":1,"exs":""},{"corder":15,"vl":"","rspan":1,"cspan":1,"exs":""},{"corder":16,"vl":"","rspan":1,"cspan":1,"exs":""}]},{"rorder":11,"elements":[{"corder":-3,"vl":"邊","rspan":3,"cspan":1,"exs":""},{"corder":-2,"vl":"濁","rspan":1,"cspan":2,"exs":""},{"corder":1,"vl":"","rspan":1,"cspan":1,"exs":""},{"corder":2,"vl":"","rspan":1,"cspan":1,"exs":""},{"corder":3,"vl":"","rspan":1,"cspan":1,"exs":""},{"corder":4,"vl":"","rspan":1,"cspan":1,"exs":""},{"corder":5,"vl":"","rspan":1,"cspan":1,"exs":""},{"corder":6,"vl":"","rspan":1,"cspan":1,"exs":""},{"corder":7,"vl":"","rspan":1,"cspan":1,"exs":""},{"corder":8,"vl":"","rspan":1,"cspan":1,"exs":""},{"corder":9,"vl":"","rspan":1,"cspan":1,"exs":""},{"corder":10,"vl":"","rspan":1,"cspan":1,"exs":""},{"corder":11,"vl":"","rspan":1,"cspan":1,"exs":""},{"corder":12,"vl":"","rspan":1,"cspan":1,"exs":""},{"corder":13,"vl":"","rspan":1,"cspan":1,"exs":""},{"corder":14,"vl":"","rspan":1,"cspan":1,"exs":""},{"corder":15,"vl":"","rspan":1,"cspan":1,"exs":""},{"corder":16,"vl":"","rspan":1,"cspan":1,"exs":""}]}]},"cinfo":"","vowels":{"headsize":{"rows":2,"cols":1},"head":[{"rorder":1,"cells":[{"corder":1,"vl":"開","rspan":1,"cspan":2},{"corder":2,"vl":"合","rspan":1,"cspan":2},{"corder":3,"vl":"齊","rspan":1,"cspan":2},{"corder":4,"vl":"撮","rspan":1,"cspan":2}]},{"rorder":2,"cells":[{"corder":1,"vl":"IPA","rspan":1,"cspan":1},{"corder":2,"vl":"拼音","rspan":1,"cspan":1},{"corder":3,"vl":"IPA","rspan":1,"cspan":1},{"corder":4,"vl":"拼音","rspan":1,"cspan":1},{"corder":5,"vl":"IPA","rspan":1,"cspan":1},{"corder":6,"vl":"拼音","rspan":1,"cspan":1},{"corder":7,"vl":"IPA","rspan":1,"cspan":1},{"corder":8,"vl":"拼音","rspan":1,"cspan":1}]}],"cats":[{"cat":{"corder":-1,"vl":"開口韻","rspan":1,"cspan":1,"exs":""},"body":[{"rorder":1,"elements":[{"corder":1,"vl":"","rspan":1,"cspan":1,"exs":""},{"corder":2,"vl":"","rspan":1,"cspan":1,"exs":""},{"corder":3,"vl":"","rspan":1,"cspan":1,"exs":""},{"corder":4,"vl":"","rspan":1,"cspan":1,"exs":""},{"corder":5,"vl":"","rspan":1,"cspan":1,"exs":""},{"corder":6,"vl":"","rspan":1,"cspan":1,"exs":""},{"corder":7,"vl":"","rspan":1,"cspan":1,"exs":""},{"corder":8,"vl":"","rspan":1,"cspan":1,"exs":""}]}]}]},"vinfo":""}
    baseRow=[{corder:1,vl:"",rspan:1,cspan:1,exs:""},{corder:2,vl:"",rspan:1,cspan:1,exs:""},{corder:3,vl:"",rspan:1,cspan:1,exs:""},{corder:4,vl:"",rspan:1,cspan:1,exs:""},{corder:5,vl:"",rspan:1,cspan:1,exs:""},{corder:6,vl:"",rspan:1,cspan:1,exs:""},{corder:7,vl:"",rspan:1,cspan:1,exs:""},{corder:8,vl:"",rspan:1,cspan:1,exs:""}]
    $scope.tableData = angular.copy originData
    $scope.refreshTable = ->
      $scope.tableData = angular.copy originData
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
angular
.module "myApp", ['ngAnimate',"mgcrea.ngStrap","ngClipboard"]
.config ["ngClipProvider",(ngClipProvider) ->
    ngClipProvider.setPath("assets/js/ZeroClipboard.swf")
]
.controller "rmzController", ['$scope', RmzController]