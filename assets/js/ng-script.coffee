class RmzController
  constructor: ($scope, $upload, @dataService) ->
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
      ele.exs.pop() if ele.exs.length > 0
    $scope.$watch 'files', ->
      $scope.upload $scope.files
    $scope.savedata = ->
      textToWrite = JSON.stringify $scope.tableData.jv
      textFileAsBlob = new Blob [textToWrite],
        type:'text/plain'
      fileNameToSaveAs = "#{$scope.tableData.jv.loc.lvl3}.json"
      downloadLink = document.createElement("a");
      downloadLink.download = fileNameToSaveAs;
      downloadLink.innerHTML = "Download File";
      if window.webkitURL != null
        downloadLink.href = window.webkitURL.createObjectURL textFileAsBlob
      else
        downloadLink.href = window.URL.createObjectURL(textFileAsBlob);
        downloadLink.onclick = destroyClickedElement
        downloadLink.style.display = "none"
        document.body.appendChild downloadLink
      downloadLink.click()
    $scope.upload = (files) ->
      if files
        if files.length == 1
          filereader = new FileReader()
          filereader.onload = (e) ->
            $scope.tableData.jv = JSON.parse e.target.result
          filereader.readAsText(files[0], "UTF-8")
#          console.log files[0]
#          $upload.upload
#            url: 'upload/url'
#            file: files[0]
#          .success (data, status, headers, config) ->
#            console.log data

angular
.module "myApp", ['ngAnimate',"mgcrea.ngStrap","ngClipboard", "angularFileUpload"]
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
.controller "rmzController", ['$scope', '$upload', 'dataService', RmzController]