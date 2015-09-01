# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

app = angular.module 'Uptime', []

app.controller 'Header', ($scope) ->
    
    $scope.onlineTab = false
    $scope.offlineTab = false
    
    $scope.setOnlineTab = ->
        if $scope.onlineTab
            return false
        else
            return true

    $scope.setOfflineTab = ->
        if $scope.offlineTab
            return false
        else
            return true
            
app.controller 'Clients', ($scope, $http) ->
    $http.get('https://uptime-server-swillett.c9.io/api/v1/clients').success (data, status, headers, config) ->
        $scope.clients = data