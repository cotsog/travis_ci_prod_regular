#include <stdio.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <netdb.h>
#include <string.h>

int main(void) {
    char hostname[NI_MAXHOST+1];
  
    hostname[0] = '\0';
    if (gethostname(hostname, NI_MAXHOST)) {
      /* Something went wrong, maybe networking is not setup? */
      strcpy(hostname, "localhost");
    } else {
        /* This part is only kept for backwards compatibility. It can be enabled
         * by setting the system property java.net.doIPv6ReverseLookupInGetLocalHost
         * or java.net.doIPv6ReverseLookupInGetLocalHost to 'true'.
         */
        struct addrinfo  hints, *res;
        int error;
        /* ensure null-terminated */
        hostname[NI_MAXHOST] = '\0';
  
        memset(&hints, 0, sizeof(hints));
        hints.ai_flags = AI_CANONNAME | AI_V4MAPPED;
        hints.ai_family = AF_INET;
  
        error = getaddrinfo(hostname, NULL, &hints, &res);
  
        if (error == 0) {
          /* host is known to name service */
          error = getnameinfo(res->ai_addr,
                              res->ai_addrlen,
                              hostname,
                              NI_MAXHOST,
                              NULL,
                              0,
                              NI_NAMEREQD);
  
          /* if getnameinfo fails hostname is still the value
             from gethostname */
  
          freeaddrinfo(res);
        }
    }
    printf("Hostname: %s\n", hostname);
    return 0;
  }
