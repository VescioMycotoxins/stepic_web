def app(environ, start_response):
    data = [bytes((i+ '\n'), 'utf-8') for i in environ["QUERY_STRING"].split("&")]
    status = '200 OK'
    response_headers = [
        ('Content-type', 'text/plain'),
        ('Content-Length', str(len(data)))
    ]
    start_response(status, response_headers)
    return data
