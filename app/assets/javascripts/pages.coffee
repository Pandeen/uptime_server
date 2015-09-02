# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

app = angular.module 'Uptime', []
            
app.controller 'Stats', ($scope, $http) ->
    
    $scope.online = 0
    $scope.errors = 0
    $scope.offline = 0
    
    $http.get('https://uptime-server-swillett.c9.io/api/v1/clients').success (data, status, headers, config) ->
        $scope.clients = data
    
    $http.get('https://uptime-server-swillett.c9.io/api/v1/clients').success (data, status, headers, config) ->
        $scope.nodes = data