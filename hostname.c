#include <stdio.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <netdb.h>
#include <string.h>

int main(void) {
    // Disable stdout buffering
    setvbuf(stdout, NULL, _IONBF, 0);

  char hostname[128];
  struct addrinfo  hints, *res;
  int error;
  /* ensure null-terminated */
  hostname[NI_MAXHOST] = '\0';
  
  memset(&hints, 0, sizeof(hints));
  hints.ai_flags = AI_CANONNAME | AI_V4MAPPED;
  hints.ai_family = (AF_INET);
  
  error = getaddrinfo(hostname, NULL, &hints, &res);
  printf("test %d", error);
  if (error == 0) {
    /* host is known to name service */
    error = getnameinfo(res->ai_addr,
                        res->ai_addrlen,
                        hostname,
                        NI_MAXHOST,
                        NULL,
                        0,
                        NI_NAMEREQD);
  }
    /* if getnameinfo fails hostname is still the value
       from gethostname */
  
    freeaddrinfo(res);
    printf(hostname);
    return 0;
}
