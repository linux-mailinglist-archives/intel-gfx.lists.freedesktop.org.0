Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B0910177820
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Mar 2020 15:03:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1768F6EA6B;
	Tue,  3 Mar 2020 14:03:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C5BB6EA6B;
 Tue,  3 Mar 2020 14:03:35 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20427541-1500050 
 for multiple; Tue, 03 Mar 2020 14:03:28 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  3 Mar 2020 14:03:27 +0000
Message-Id: <20200303140327.1535286-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] i915/gem_exec_parallel: Try to trim
 runtime
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
Cc: igt-dev@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

In all likelihood the runtime is consumed by the thread setup, but just
in case it is dominated by the execbuf, make sure that is bounded.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 tests/i915/gem_exec_parallel.c | 28 ++++++++++++++++------------
 1 file changed, 16 insertions(+), 12 deletions(-)

diff --git a/tests/i915/gem_exec_parallel.c b/tests/i915/gem_exec_parallel.c
index 0d4d6c628..586f85080 100644
--- a/tests/i915/gem_exec_parallel.c
+++ b/tests/i915/gem_exec_parallel.c
@@ -42,22 +42,26 @@
 
 #define VERIFY 0
 
+static inline uint32_t hash32(uint32_t val)
+{
+#define GOLDEN_RATIO_32 0x61C88647
+	return val * GOLDEN_RATIO_32;
+}
+
 static void check_bo(int fd, uint32_t handle, int pass)
 {
-	uint32_t *map;
-	int i;
+	uint32_t x = hash32(handle * pass) % 1024;
 
 	igt_debug("Verifying result (pass=%d, handle=%d)\n", pass, handle);
-	map = gem_mmap__cpu(fd, handle, 0, 4096, PROT_READ);
-	gem_set_domain(fd, handle, I915_GEM_DOMAIN_CPU, 0);
-	for (i = 0; i < 1024; i++)
-		igt_assert_eq(map[i], i);
-	munmap(map, 4096);
+	gem_read(fd, handle, x * sizeof(x), &x, sizeof(x));
+	igt_assert_eq_u32(x, x);
 }
 
 #define CONTEXTS 0x1
 #define FDS 0x2
 
+#define NUMOBJ 16
+
 struct thread {
 	pthread_t thread;
 	pthread_mutex_t *mutex;
@@ -132,8 +136,8 @@ static void *thread(void *data)
 		execbuf.rsvd1 = gem_context_clone_with_engines(fd, 0);
 	}
 
-	for (i = 0; i < 16; i++) {
-		obj[0].handle = t->scratch[i];
+	igt_until_timeout(1) {
+		obj[0].handle = t->scratch[i++ % NUMOBJ];
 		if (t->flags & FDS)
 			obj[0].handle = gem_open(fd, obj[0].handle);
 
@@ -160,7 +164,7 @@ static void all(int fd, struct intel_execution_engine2 *engine, unsigned flags)
 	struct thread *threads;
 	unsigned engines[16];
 	unsigned nengine;
-	uint32_t scratch[16], handle[16];
+	uint32_t scratch[NUMOBJ], handle[NUMOBJ];
 	int go;
 	int i;
 
@@ -185,7 +189,7 @@ static void all(int fd, struct intel_execution_engine2 *engine, unsigned flags)
 	}
 	igt_require(nengine);
 
-	for (i = 0; i < 16; i++) {
+	for (i = 0; i < NUMOBJ; i++) {
 		scratch[i] = handle[i] = gem_create(fd, 4096);
 		if (flags & FDS)
 			scratch[i] = gem_flink(fd, handle[i]);
@@ -221,7 +225,7 @@ static void all(int fd, struct intel_execution_engine2 *engine, unsigned flags)
 	for (i = 0; i < 1024; i++)
 		pthread_join(threads[i].thread, NULL);
 
-	for (i = 0; i < 16; i++) {
+	for (i = 0; i < NUMOBJ; i++) {
 		check_bo(fd, handle[i], i);
 		gem_close(fd, handle[i]);
 	}
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
