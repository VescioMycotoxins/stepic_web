def myapp(environ, start_response):
    status = '200 OK'
    response_headers = [('Content-type', 'text/plain')]
    start_response(status, response_headers)
    body = "\n".join(environ["QUERY_STRING"][2:].split("&"))
    return [body]
