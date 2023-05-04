set(HEADERS
    http_codec.h   
    http_dispatcher.h 
    http_response.h
    http_define.h  
    http_request.h     
    http_servlet.h
)

install(FILES ${HEADERS} DESTINATION output/usr/include/tinyrpc/net/http)