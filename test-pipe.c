#include <stdio.h>
#include <unistd.h>
#include <sys/wait.h>

int main(void) {
	int pfd[2];
	int nread; 
	char buf[256];

	pipe(pfd);
	if (fork()==0) { /* hijo */
        close(pfd[0]);
		nread = read(0,buf,sizeof buf);
		write(pfd[1], buf , nread);
		nread = read(0,buf,sizeof buf);
		write(pfd[1], buf , nread);
		return 0;
	}
	/* Padre lee en el lado lectura ... */
	close(pfd[1]);
    sleep(10);
	while((nread=read(pfd[0], buf, sizeof(buf))) > 0) {
//		printf("buf=%s, nread=%d\n", buf, nread);
		write (1, buf, nread);
        printf ("se leyeron %d bytes\n",nread);
	}
	wait(NULL);
	return 0;
}
