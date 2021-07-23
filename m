Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D5E573D3941
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Jul 2021 13:14:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4D6816FADC;
	Fri, 23 Jul 2021 11:14:36 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DECD16FADC;
 Fri, 23 Jul 2021 11:14:34 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10053"; a="191451056"
X-IronPort-AV: E=Sophos;i="5.84,263,1620716400"; d="scan'208";a="191451056"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jul 2021 04:14:34 -0700
X-IronPort-AV: E=Sophos;i="5.84,263,1620716400"; d="scan'208";a="513264531"
Received: from mrapopor-mobl.ger.corp.intel.com (HELO tursulin-mobl2.home)
 ([10.213.214.117])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jul 2021 04:14:31 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Fri, 23 Jul 2021 12:14:11 +0100
Message-Id: <20210723111411.3444839-1-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC] intel-gpu-top: Adapt for fdinfo stats
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Cc: Intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Quick implementation of how per client stats could be parsed if exported
via drm fdinfo.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 tools/intel_gpu_top.c | 396 ++++++++++++++++++++++++------------------
 1 file changed, 225 insertions(+), 171 deletions(-)

diff --git a/tools/intel_gpu_top.c b/tools/intel_gpu_top.c
index 7311038a39f4..2767829bef98 100644
--- a/tools/intel_gpu_top.c
+++ b/tools/intel_gpu_top.c
@@ -43,6 +43,7 @@
 #include <sys/types.h>
 #include <unistd.h>
 #include <termios.h>
+#include <sys/sysmacros.h>
 
 #include "igt_perf.h"
 
@@ -309,7 +310,8 @@ static int engine_cmp(const void *__a, const void *__b)
 		return a->instance - b->instance;
 }
 
-#define is_igpu_pci(x) (strcmp(x, "0000:00:02.0") == 0)
+#define IGPU_PCI "0000:00:02.0"
+#define is_igpu_pci(x) (strcmp(x, IGPU_PCI) == 0)
 #define is_igpu(x) (strcmp(x, "i915") == 0)
 
 static struct engines *discover_engines(char *device)
@@ -639,8 +641,6 @@ struct client {
 	struct clients *clients;
 
 	enum client_status status;
-	int sysfs_root;
-	int busy_root;
 	unsigned int id;
 	unsigned int pid;
 	char name[24];
@@ -660,7 +660,7 @@ struct clients {
 	unsigned int num_classes;
 	struct engine_class *class;
 
-	char sysfs_root[128];
+	char pci_slot[64];
 
 	struct client *client;
 };
@@ -669,12 +669,9 @@ struct clients {
 	for ((tmp) = (clients)->num_clients, c = (clients)->client; \
 	     (tmp > 0); (tmp)--, (c)++)
 
-static struct clients *init_clients(const char *drm_card)
+static struct clients *init_clients(const char *pci_slot)
 {
 	struct clients *clients;
-	const char *slash;
-	ssize_t ret;
-	int dir;
 
 	clients = malloc(sizeof(*clients));
 	if (!clients)
@@ -682,107 +679,11 @@ static struct clients *init_clients(const char *drm_card)
 
 	memset(clients, 0, sizeof(*clients));
 
-	if (drm_card) {
-		slash = rindex(drm_card, '/');
-		assert(slash);
-	} else {
-		slash = "card0";
-	}
-
-	ret = snprintf(clients->sysfs_root, sizeof(clients->sysfs_root),
-		       "/sys/class/drm/%s/clients/", slash);
-	assert(ret > 0 && ret < sizeof(clients->sysfs_root));
-
-	dir = open(clients->sysfs_root, O_DIRECTORY | O_RDONLY);
-	if (dir < 0) {
-		free(clients);
-		clients = NULL;
-	} else {
-		close(dir);
-	}
+	strncpy(clients->pci_slot, pci_slot, sizeof(clients->pci_slot));
 
 	return clients;
 }
 
-static int __read_to_buf(int fd, char *buf, unsigned int bufsize)
-{
-	ssize_t ret;
-	int err;
-
-	ret = read(fd, buf, bufsize - 1);
-	err = errno;
-	if (ret < 1) {
-		errno = ret < 0 ? err : ENOMSG;
-
-		return -1;
-	}
-
-	if (ret > 1 && buf[ret - 1] == '\n')
-		buf[ret - 1] = '\0';
-	else
-		buf[ret] = '\0';
-
-	return 0;
-}
-
-static int
-__read_client_field(int root, const char *field, char *buf, unsigned int bufsize)
-{
-	int fd, ret;
-
-	fd = openat(root, field, O_RDONLY);
-	if (fd < 0)
-		return -1;
-
-	ret = __read_to_buf(fd, buf, bufsize);
-
-	close(fd);
-
-	return ret;
-}
-
-static uint64_t
-read_client_busy(struct client *client, unsigned int class)
-{
-	const char *class_str[] = { "0", "1", "2", "3", "4", "5", "6", "7" };
-	char buf[256], *b;
-	int ret;
-
-	assert(class < ARRAY_SIZE(class_str));
-	if (class >= ARRAY_SIZE(class_str))
-		return 0;
-
-	assert(client->sysfs_root >= 0);
-	if (client->sysfs_root < 0)
-		return 0;
-
-	if (client->busy_root < 0)
-		client->busy_root = openat(client->sysfs_root, "busy",
-					   O_RDONLY | O_DIRECTORY);
-
-	assert(client->busy_root);
-	if (client->busy_root < 0)
-		return 0;
-
-	ret = __read_client_field(client->busy_root, class_str[class], buf,
-				  sizeof(buf));
-	if (ret) {
-		close(client->busy_root);
-		client->busy_root = -1;
-		return 0;
-	}
-
-	/*
-	 * Handle both single integer and key=value formats by skipping
-	 * leading non-digits.
-	 */
-	b = buf;
-	while (*b && !isdigit(*b))
-		b++;
-
-	return strtoull(b, NULL, 10);
-}
-
 static struct client *
 find_client(struct clients *clients, enum client_status status, unsigned int id)
 {
@@ -803,9 +704,9 @@ find_client(struct clients *clients, enum client_status status, unsigned int id)
 	return NULL;
 }
 
-static void update_client(struct client *c, unsigned int pid, char *name)
+static void
+update_client(struct client *c, unsigned int pid, char *name, uint64_t val[16])
 {
-	uint64_t val[c->clients->num_classes];
 	unsigned int i;
 
 	if (c->pid != pid)
@@ -825,9 +726,6 @@ static void update_client(struct client *c, unsigned int pid, char *name)
 		}
 	}
 
-	for (i = 0; i < c->clients->num_classes; i++)
-		val[i] = read_client_busy(c, c->clients->class[i].class);
-
 	c->last_runtime = 0;
 	c->total_runtime = 0;
 
@@ -847,7 +745,7 @@ static void update_client(struct client *c, unsigned int pid, char *name)
 
 static void
 add_client(struct clients *clients, unsigned int id, unsigned int pid,
-	   char *name, int sysfs_root)
+	   char *name, uint64_t busy[16])
 {
 	struct client *c;
 
@@ -866,52 +764,22 @@ add_client(struct clients *clients, unsigned int id, unsigned int pid,
 		memset(c, 0, (clients->num_clients - idx) * sizeof(*c));
 	}
 
-	c->sysfs_root = sysfs_root;
-	c->busy_root = -1;
 	c->id = id;
 	c->clients = clients;
 	c->val = calloc(clients->num_classes, sizeof(c->val));
 	c->last = calloc(clients->num_classes, sizeof(c->last));
 	assert(c->val && c->last);
 
-	update_client(c, pid, name);
+	update_client(c, pid, name, busy);
 }
 
 static void free_client(struct client *c)
 {
-	if (c->sysfs_root >= 0)
-		close(c->sysfs_root);
-	if (c->busy_root >= 0)
-		close(c->busy_root);
 	free(c->val);
 	free(c->last);
 	memset(c, 0, sizeof(*c));
 }
 
-static int
-read_client_sysfs(char *buf, int bufsize, const char *sysfs_root,
-		  unsigned int id, const char *field, int *client_root)
-{
-	ssize_t ret;
-
-	if (*client_root < 0) {
-		char namebuf[256];
-
-		ret = snprintf(namebuf, sizeof(namebuf), "%s/%u",
-			       sysfs_root, id);
-		assert(ret > 0 && ret < sizeof(namebuf));
-		if (ret <= 0 || ret == sizeof(namebuf))
-			return -1;
-
-		*client_root = open(namebuf, O_RDONLY | O_DIRECTORY);
-	}
-
-	if (*client_root < 0)
-		return -1;
-
-	return __read_client_field(*client_root, field, buf, bufsize);
-}
-
 static int client_last_cmp(const void *_a, const void *_b)
 {
 	const struct client *a = _a;
@@ -1069,8 +937,6 @@ static struct clients *display_clients(struct clients *clients)
 			ac->status = ALIVE;
 			ac->id = -c->pid;
 			ac->pid = c->pid;
-			ac->busy_root = -1;
-			ac->sysfs_root = -1;
 			strcpy(ac->name, c->name);
 			strcpy(ac->print_name, c->print_name);
 			ac->engines = c->engines;
@@ -1116,13 +982,129 @@ static void free_clients(struct clients *clients)
 	free(clients);
 }
 
+static bool is_drm_fd(DIR *fd_dir, const char *name)
+{
+	struct stat stat;
+	int ret;
+
+	ret = fstatat(dirfd(fd_dir), name, &stat, 0);
+
+	return ret == 0 &&
+	       (stat.st_mode & S_IFMT) == S_IFCHR &&
+	       major(stat.st_rdev) == 226;
+}
+
+static bool get_task_name(const char *buffer, char *out, unsigned long sz)
+{
+	char *s = index(buffer, '(');
+	char *e = rindex(buffer, ')');
+	unsigned int len;
+
+	if (!s || !e)
+		return false;
+
+	len = --e - ++s + 1;
+	if(!len || (len + 1) >= sz)
+		return false;
+
+	strncpy(out, s, len);
+	out[len] = 0;
+
+	return true;
+}
+
+static DIR *opendirat(DIR *at, const char *name)
+{
+	DIR *dir;
+	int fd;
+
+	fd = openat(dirfd(at), name, O_DIRECTORY);
+	if (fd < 0)
+		return NULL;
+
+	dir = fdopendir(fd);
+	if (!dir)
+		close(fd);
+
+	return dir;
+}
+
+static FILE *fropenat(DIR *at, const char *name)
+{
+	FILE *f;
+	int fd;
+
+	fd = openat(dirfd(at), name, O_RDONLY);
+	if (fd < 0)
+		return NULL;
+
+	f = fdopen(fd, "r");
+	if (!f)
+		close(fd);
+
+	return f;
+}
+
+static size_t freadat2buf(char *buf, const size_t sz, DIR *at, const char *name)
+{
+	size_t count;
+	FILE *f;
+
+	f = fropenat(at, name);
+	if (!f)
+		return 0;
+
+	memset(buf, 0, sz);
+	count = fread(buf, 1, sz, f);
+	fclose(f);
+
+	return count;
+}
+
+static bool parse_engine(char *line, uint64_t busy[16])
+{
+	static const char *e2class[] = {
+		"render",
+		"copy",
+		"video",
+		"video-enhance",
+	};
+	bool found = false;
+	char name[256];
+	unsigned int i;
+	uint64_t val;
+	char *t;
+
+	t = line;
+	while (!isdigit(*t))
+		t++;
+	val = strtoull(t, NULL, 10);
+
+	t = line;
+	while (*t != ':')
+		t++;
+	*t = 0;
+
+	if (sscanf(line, "drm-engine-%s", name) != 1)
+		return false;
+
+	for (i = 0; i < ARRAY_SIZE(e2class); i++) {
+		if (!strcmp(name, e2class[i])) {
+			busy[i] = val;
+			found = true;
+			break;
+		}
+	}
+
+	return found;
+}
+
 static struct clients *scan_clients(struct clients *clients)
 {
-	struct dirent *dent;
+	struct dirent *proc_dent;
 	struct client *c;
-	unsigned int id;
+	DIR *proc_dir;
 	int tmp;
-	DIR *d;
 
 	if (!clients)
 		return clients;
@@ -1135,43 +1117,114 @@ static struct clients *scan_clients(struct clients *clients)
 			break; /* Free block at the end of array. */
 	}
 
-	d = opendir(clients->sysfs_root);
-	if (!d)
+	proc_dir = opendir("/proc");
+	if (!proc_dir)
 		return clients;
 
-	while ((dent = readdir(d)) != NULL) {
-		char name[24], pid[24];
-		int ret, root = -1, *pr;
+	while ((proc_dent = readdir(proc_dir)) != NULL) {
+		DIR *pid_dir = NULL, *fd_dir = NULL, *fdinfo_dir = NULL;
+		struct dirent *fdinfo_dent;
+		char client_name[64] = { };
+		unsigned int client_pid;
+		char buf[4096];
+		size_t count;
 
-		if (dent->d_type != DT_DIR)
+		if (proc_dent->d_type != DT_DIR)
 			continue;
-		if (!isdigit(dent->d_name[0]))
+		if (!isdigit(proc_dent->d_name[0]))
 			continue;
 
-		id = atoi(dent->d_name);
+		pid_dir = opendirat(proc_dir, proc_dent->d_name);
+		if (!pid_dir)
+			continue;
 
-		c = find_client(clients, PROBE, id);
+		count = freadat2buf(buf, sizeof(buf), pid_dir, "stat");
+		if (!count)
+			goto next;
 
-		if (c)
-			pr = &c->sysfs_root;
-		else
-			pr = &root;
+		client_pid = atoi(buf);
+		if (!client_pid)
+			goto next;
 
-		ret = read_client_sysfs(name, sizeof(name), clients->sysfs_root,
-					id, "name", pr);
-		ret |= read_client_sysfs(pid, sizeof(pid), clients->sysfs_root,
-					id, "pid", pr);
-		if (!ret) {
+		if (!get_task_name(buf, client_name, sizeof(client_name)))
+			goto next;
+
+		fd_dir = opendirat(pid_dir, "fd");
+		if (!fd_dir)
+			goto next;
+
+		fdinfo_dir = opendirat(pid_dir, "fdinfo");
+		if (!fdinfo_dir)
+			goto next;
+
+		while ((fdinfo_dent = readdir(fdinfo_dir)) != NULL) {
+			unsigned int num_engines = 0;
+			unsigned int good_fdinfo = 0;
+			uint64_t busy[16] = { };
+			unsigned int client_id;
+			char *line, *ctx, *_buf;
+			char driver[128] = { };
+			char pdev[128] = { };
+
+			if (fdinfo_dent->d_type != DT_REG)
+				continue;
+			if (!isdigit(fdinfo_dent->d_name[0]))
+				continue;
+
+			if (!is_drm_fd(fd_dir, fdinfo_dent->d_name))
+				continue;
+
+			count = freadat2buf(buf, sizeof(buf), fdinfo_dir,
+					    fdinfo_dent->d_name);
+			if (!count)
+				continue;
+
+			ctx = NULL;
+			_buf = buf;
+			while ((line = strtok_r(_buf, "\n", &ctx))) {
+				_buf = NULL;
+
+				if (sscanf(line, "drm-driver:\t%s", driver)) {
+					good_fdinfo++;
+				} else if (sscanf(line, "drm-pdev:\t%s",
+						  pdev)) {
+					good_fdinfo++;
+				}  else if (sscanf(line, "drm-client-id:\t%u",
+						   &client_id) == 1) {
+					good_fdinfo++;
+				} else if (!strncmp(line, "drm-engine-", 11)) {
+					if (parse_engine(line, busy))
+						num_engines++;
+				}
+			}
+
+			if (good_fdinfo < 3 || !num_engines)
+				continue; /* fdinfo format not as expected */
+			if (strcmp(driver, "i915"))
+				continue;
+			if (strcmp(pdev, clients->pci_slot))
+				continue;
+			if (find_client(clients, ALIVE, client_id))
+				continue; /* Skip duplicate fds. */
+
+			c = find_client(clients, PROBE, client_id);
 			if (!c)
-				add_client(clients, id, atoi(pid), name, root);
+				add_client(clients, client_id, client_pid,
+					   client_name, busy);
 			else
-				update_client(c, atoi(pid), name);
-		} else if (c) {
-			c->status = PROBE; /* Will be deleted below. */
+				update_client(c, client_pid, client_name, busy);
 		}
+
+next:
+		if (fdinfo_dir)
+			closedir(fdinfo_dir);
+		if (fd_dir)
+			closedir(fd_dir);
+		if (pid_dir)
+			closedir(pid_dir);
 	}
 
-	closedir(d);
+	closedir(proc_dir);
 
 	for_each_client(clients, c, tmp) {
 		if (c->status == PROBE)
@@ -2530,7 +2583,8 @@ int main(int argc, char **argv)
 
 	ret = EXIT_SUCCESS;
 
-	clients = init_clients(card.pci_slot_name[0] ? card.card : NULL);
+	clients = init_clients(card.pci_slot_name[0] ?
+			       card.pci_slot_name : IGPU_PCI);
 	init_engine_classes(engines);
 	if (clients) {
 		clients->num_classes = engines->num_classes;
-- 
2.30.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
