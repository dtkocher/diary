# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

app = angular.module("Diary", ["ngResource"])
app.factory "Entry", ["$resource", ($resource) ->
  $resource("/entry/:id", {id: "@id"}, {update: {method: "PUT"}})
]

@EntryCtrl = ["$scope", "Entry", ($scope, Entry) ->
  $scope.entries = Entry.query()

  $scope.addEntry = ->
    Entry.save($scope.newEntry
      , (entry) ->
        $scope.entries.push(entry)
        $scope.newEntry.subject = ''
    )

  $scope.viewNote = (entry)->
    $scope.entry = entry

  $scope.updateEntry = (entry)->
    Entry.update(entry)

  $scope.deleteEntry = (entry)->
    r = confirm("Are you sure you want to Delete?")
    if r==true
      Entry.delete(
        entry
        , ->
          $scope.entries.splice( $scope.entries.indexOf(entry), 1 )
      )
]
