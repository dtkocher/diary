# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

app = angular.module("Diary", [])

@EntryCtrl = ["$scope", ($scope) ->
  $scope.entries = [{subject: "Entry 1", note: "Entry 1"}, {subject: "Entry 2", note: "Entry 2"}, {subject: "Entry 3", note: "Entry 3"}]
  $scope.entry = $scope.entries[0]

  $scope.addEntry = ->
    $scope.entries.push({subject: $scope.newEntry.subject})
    $scope.newEntry.subject = ''

  $scope.viewNote = (entry)->
    $scope.entry = entry

]
