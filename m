Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 42101303A48
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Jan 2021 11:31:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9BCBF6E0C2;
	Tue, 26 Jan 2021 10:31:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B3EB46E0C2;
 Tue, 26 Jan 2021 10:31:07 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23701415-1500050 
 for multiple; Tue, 26 Jan 2021 10:30:58 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 26 Jan 2021 10:30:59 +0000
Message-Id: <20210126103059.2881327-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210126103059.2881327-1-chris@chris-wilson.co.uk>
References: <20210126103059.2881327-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 2/2] i915/sysfs_clients: Check that client
 ids are cyclic
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
Cc: igt-dev@lists.freedesktop.org, Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The client id used is a cyclic allocator as that reduces the likelihood
of userspace seeing the same id used again (and so confusing the new
client as the old). Verify that each new client has an id greater than
the last.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
---
 tests/i915/sysfs_clients.c | 126 +++++++++++++++++++++++++++++++------
 1 file changed, 108 insertions(+), 18 deletions(-)

diff --git a/tests/i915/sysfs_clients.c b/tests/i915/sysfs_clients.c
index a3a1f81e1..b7048938e 100644
--- a/tests/i915/sysfs_clients.c
+++ b/tests/i915/sysfs_clients.c
@@ -47,6 +47,8 @@
 #define assert_within_epsilon(x, ref, tolerance) \
 	__assert_within_epsilon(x, ref, tolerance / 100., tolerance / 100.)
 
+#define BUFSZ 280
+
 #define MI_BATCH_BUFFER_START (0x31 << 23)
 #define MI_BATCH_BUFFER_END (0xa << 23)
 #define MI_ARB_CHECK (0x5 << 23)
@@ -75,7 +77,7 @@ static void pidname(int i915, int clients)
 {
 	struct dirent *de;
 	int sv[2], rv[2];
-	char buf[280];
+	char buf[BUFSZ];
 	int me = -1;
 	long count;
 	pid_t pid;
@@ -180,7 +182,7 @@ static long count_clients(int clients)
 {
 	struct dirent *de;
 	long count = 0;
-	char buf[280];
+	char buf[BUFSZ];
 	DIR *dir;
 
 	dir = fdopendir(dup(clients));
@@ -229,32 +231,117 @@ static void create(int i915, int clients)
 	igt_assert_eq(count_clients(clients), 1);
 }
 
-static int find_me(int clients, pid_t pid)
+static const char *find_client(int clients, pid_t pid, char *buf)
 {
 	struct dirent *de;
-	char buf[280];
-	int me = -1;
 	DIR *dir;
 
 	dir = fdopendir(dup(clients));
 	igt_assert(dir);
-	rewinddir(dir);
 
-	while ((de = readdir(dir))) {
-		if (!isdigit(de->d_name[0]))
-			continue;
+	for (int pass = 0; pass < 2; pass++) { /* What if the dir changes? */
+		rewinddir(dir);
+		while ((de = readdir(dir))) {
+			if (!isdigit(de->d_name[0]))
+				continue;
 
-		snprintf(buf, sizeof(buf), "%s/pid", de->d_name);
-		igt_sysfs_read(clients, buf, buf, sizeof(buf));
-		if (atoi(buf) != pid)
-			continue;
+			snprintf(buf, BUFSZ, "%s/pid", de->d_name);
+			igt_sysfs_read(clients, buf, buf, sizeof(buf));
+			if (atoi(buf) != pid)
+				continue;
 
-		me = openat(clients, de->d_name, O_DIRECTORY | O_RDONLY);
-		break;
+			strncpy(buf, de->d_name, BUFSZ);
+			goto out;
+		}
 	}
-
+	*buf = '\0';
+out:
 	closedir(dir);
-	return me;
+	return buf;
+}
+
+static int find_me(int clients, pid_t pid)
+{
+	char buf[BUFSZ];
+
+	return openat(clients,
+		      find_client(clients, pid, buf),
+		      O_DIRECTORY | O_RDONLY);
+}
+
+static int reopen_directory(int fd)
+{
+	char buf[BUFSZ];
+	int dir;
+
+	snprintf(buf, sizeof(buf), "/proc/self/fd/%d", fd);
+	dir = open(buf, O_RDONLY);
+	igt_assert_fd(dir);
+
+	return dir;
+}
+
+static unsigned int my_id(int clients, pid_t pid)
+{
+	char buf[BUFSZ];
+
+	return atoi(find_client(clients, pid, buf));
+}
+
+static unsigned int recycle_client(int i915, int clients)
+{
+	int device, client;
+
+	device = gem_reopen_driver(i915);
+	client = my_id(clients, getpid());
+	close(device);
+
+	/* Client is now closed so no longer reported */
+	igt_assert_eq(my_id(clients, getpid()), 0);
+
+	return client;
+}
+
+static void recycle(int i915, int clients)
+{
+	const int ncpus = sysconf(_SC_NPROCESSORS_ONLN);
+
+	/*
+	 * As we open and close clients, we do not expect to reuse old ids,
+	 * i.e. we use a cyclic ida. This reduces the likelihood of userspace
+	 * watchers becoming confused and mistaking the new client as a
+	 * continuation of the old.
+	 */
+	igt_require(my_id(clients, getpid()) < 10000000);
+	igt_assert(my_id(clients, getpid()));
+
+	igt_fork(child, 2 * ncpus) {
+		unsigned int client, last;
+
+		/* Reopen the directory fd for each client */
+		clients = reopen_directory(clients);
+
+		last = recycle_client(i915, clients);
+		igt_info("Child[%d] first client:%d\n", getpid(), last);
+		igt_until_timeout(5) {
+			client = recycle_client(i915, clients);
+
+			/* In 5 seconds we are not going to exhaust the ids */
+			igt_assert(client > last);
+			last = client;
+		}
+		igt_info("Child[%d] last client:%d\n", getpid(), last);
+	}
+	igt_waitchildren();
+
+	/* Cleanup delayed behind rcu */
+	igt_until_timeout(30) {
+		sched_yield();
+		if (count_clients(clients) == 1)
+			break;
+		usleep(10000);
+	}
+	igt_assert_eq(count_clients(clients), 1);
 }
 
 static int64_t read_runtime(int client, int class)
@@ -719,7 +806,7 @@ sema(int i915, int clients, const struct intel_execution_engine2 *e, int f)
 static int read_all(int clients, pid_t pid, int class, uint64_t *runtime)
 {
 	struct dirent *de;
-	char buf[280];
+	char buf[BUFSZ];
 	int count = 0;
 	DIR *dir;
 
@@ -958,6 +1045,9 @@ igt_main
 	igt_subtest("create")
 		create(i915, clients);
 
+	igt_subtest("recycle")
+		recycle(i915, clients);
+
 	igt_subtest_group
 		test_busy(i915, clients);
 
-- 
2.30.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
