#ifndef _DB_H
#define _DB_H

#include "../leveldb-1.14.0/include/leveldb/c.h"

#ifndef _typedef_lvldb_t
#define _typedef_lvldb_t
typedef struct {
  leveldb_t *db;
  leveldb_options_t *options;
  leveldb_writeoptions_t *woptions;
  leveldb_readoptions_t *roptions;
} lvldb_t;
#endif // _typedef_lvldb_t

#ifndef ULL_T
#define ULL_T
typedef long long int ull_t;
#endif


// basic operations
void db_write(lvldb_t *mydb, const char *key, const char *value);
void db_write_fmt(lvldb_t *mydb, const char *key, const char *fmt, ...);
char* db_nread(lvldb_t *mydb, const char *key, size_t *plen);
int db_read_ull(lvldb_t *mydb, const char *key, ull_t* pvalue);
char* db_readc(lvldb_t *mydb, const char *key);

// pid
char* db_read_pid_key(lvldb_t *mydb, long pid);
void db_write_root(lvldb_t *mydb, long pid);

// io
void db_write_iofd_prov(lvldb_t *mydb, long pid, int prv, const char *filename_abspath, int fd);
ull_t db_write_io_prov(lvldb_t *mydb, long pid, int prv, const char *filename_abspath);
int db_markFileClosed(lvldb_t *mydb, long pid, int fd);

// exec
void db_write_exec_prov(lvldb_t *mydb, long ppid, long pid, const char *filename_abspath, \
    char *current_dir, char *args, char *dbid, char *ssh_host);
void db_write_execdone_prov(lvldb_t *mydb, long ppid, long pid, char* env_str, int env_len);
void db_write_spawn_prov(lvldb_t *mydb, long ppid, long pid);

// exit
void db_write_lexit_prov(lvldb_t *mydb, long pid);
void db_write_iexit_prov(lvldb_t *mydb, long pid);

// stat
void db_write_prov_stat(lvldb_t *mydb, long pid, const char* label, char *stat);

// sock read/write
void db_write_sock_action(lvldb_t *mydb, long pid, int sockfd, \
    const char *buf, long len_param, int flags, \
    long len_result, int action, void *msg);
ull_t db_getPkgCounterInc(lvldb_t *mydb, char* pidkey, char* sockid, int action);
char* db_getSendRecvResult(lvldb_t *mydb, int action, 
    char* pidkey, char* sockid, ull_t pkgid, ull_t *presult, void *msg);

// sock connect
void db_write_connect_prov(lvldb_t *mydb, long pid, 
    int sockfd, char* addr, int addr_len, long u_rval, char *ips);
void db_setupConnectCounter(lvldb_t *mydb, char* pidkey);
ull_t db_getConnectCounterInc(lvldb_t *mydb, char* pidkey);
int db_getSockResult(lvldb_t *mydb, char* pidkey, int sockid);
void db_setSockConnectId(lvldb_t *mydb, char* pidkey, int sock, ull_t sockid);
void db_setupSockConnectCounter(lvldb_t *mydb, char *pidkey, int sockfd, ull_t sockid);

// sock listen
void db_write_listen_prov(lvldb_t *mydb, int pid, 
    int sock, int backlog, int result);
void db_setupListenCounter(lvldb_t *mydb, char* pidkey);
ull_t db_getListenId(lvldb_t *mydb, char* pidkey, int sock);
ull_t db_getListenCounterInc(lvldb_t *mydb, char* pidkey);
int db_getListenResult(lvldb_t *mydb, char* pidkey, ull_t id);
void db_setListenId(lvldb_t *mydb, char* pidkey, int sock, ull_t sockid);

// sock accept
void db_write_accept_prov(lvldb_t *mydb, int pid, int lssock, 
    char* addrbuf, int len, ull_t client_sock, char* ips);
void db_setupAcceptCounter(lvldb_t *mydb, char* pidkey, ull_t listenid);
ull_t db_getAcceptCounterInc(lvldb_t *mydb, char* pidkey, ull_t listenid);
void db_setSockAcceptId(lvldb_t *mydb, char* pidkey, int sock, ull_t listenid, ull_t acceptid);
void db_setupSockAcceptCounter(lvldb_t *mydb, char *pidkey, int sockfd, ull_t listenid, ull_t acceptid);

// sock captured/ignored
void db_setCapturedSock(lvldb_t *mydb, int sockfd);
void db_removeCapturedSock(lvldb_t *mydb, int sockfd);
int db_isCapturedSock(lvldb_t *mydb, int sockfd);
// ---
char* db_getSockId(lvldb_t *mydb, char* pidkey, int sock);
void db_remove_sock(lvldb_t *mydb, long pid, int sockfd);

// others
uint32_t checksum(const void *buf, size_t buflength);
void printbuf(const char *buf, size_t buflength);

void db_write_getsockname_prov(lvldb_t *mydb, int pid, int sock, char* addrbuf, int len, ull_t res);
void db_get_pid_sock(lvldb_t *mydb, long pid, int sockfd, char **pidkey, char **sockid);
char *db_read_real_pid_key(lvldb_t *mydb, long pid);

// env
char* db_getEnvVars(lvldb_t *mydb, char* pidkey);

// remote host
int db_hasPTUonRemoteHost(lvldb_t *mydb, char* remotehost);
void db_setPTUonRemoteHost(lvldb_t *mydb, char* remotehost);
int db_get_ssh_host(lvldb_t *mydb, long pid, char** host, char** dbid);

#endif // _DB_H
