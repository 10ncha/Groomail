#include <libetpan/libetpan.h>
#include <stdio.h>
#include <stdlib.h>

int imap_login_and_fetch(const char *email, const char *password){
    mailsession *session = NULL;
    int r; //Return code for checking if each function succeeded (0 = OK, anything else = error)

    session = mailsession_new(NULL);
    mailsession_connect(session);
}



