<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>tulin.ru example REST</title>
</head>

<script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<script type="text/javascript">
    var prefix = '/victul-rest/myservice';

    var RestGet = function() {
        $.ajax({
            type: 'GET',
            url:  prefix + '/' + Date.now(),
            dataType: 'json',
            async: true,
            success: function(result) {
                alert('Время: ' + result.time
                    + ', сообщение: ' + result.message);
            },
            error: function(jqXHR, textStatus, errorThrown) {
                alert(jqXHR.status + ' ' + jqXHR.responseText);
            }
        });
    }

    var RestPut = function() {
        var JSONObject= {
            'time': Date.now(),
            'message': 'Это пример вызова PUT метода'
        };

        $.ajax({
            type: 'PUT',
            url:  prefix,
            contentType: 'application/json; charset=utf-8',
            data: JSON.stringify(JSONObject),
            dataType: 'json',
            async: true,
            success: function(result) {
                alert('Время: ' + result.time
                    + ', сообщенеи: ' + result.message);
            },
            error: function(jqXHR, textStatus, errorThrown) {
                alert(jqXHR.status + ' ' + jqXHR.responseText);
            }
        });
    }

    var RestPost = function() {
        $.ajax({
            type: 'POST',
            url:  prefix,
            dataType: 'json',
            async: true,
            success: function(result) {
                alert('Время: ' + result.time
                    + ', сообщение: ' + result.message);
            },
            error: function(jqXHR, textStatus, errorThrown) {
                alert(jqXHR.status + ' ' + jqXHR.responseText);
            }
        });
    }

    var RestDelete = function() {
        $.ajax({
            type: 'DELETE',
            url:  prefix + '/' + Date.now(),
            dataType: 'json',
            async: true,
            success: function(result) {
                alert('Время: ' + result.time
                    + ', сообщение: ' + result.message);
            },
            error: function(jqXHR, textStatus, errorThrown) {
                alert(jqXHR.status + ' ' + jqXHR.responseText);
            }
        });
    }
</script>

<body>

<h3>This is a simple example of using REST with Ajax</h3>

<button type="button" onclick="RestGet()">GET Method</button>
<button type="button" onclick="RestPost()">POST Method</button>
<button type="button" onclick="RestDelete()">DELETE Method</button>
<button type="button" onclick="RestPut()">PUT Method</button>

</body>
</html>