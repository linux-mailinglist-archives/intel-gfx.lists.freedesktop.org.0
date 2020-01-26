Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BA89149ADE
	for <lists+intel-gfx@lfdr.de>; Sun, 26 Jan 2020 14:48:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7BA5E6E9AD;
	Sun, 26 Jan 2020 13:48:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 573866E9AD;
 Sun, 26 Jan 2020 13:48:20 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20013576-1500050 
 for multiple; Sun, 26 Jan 2020 13:48:12 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sun, 26 Jan 2020 13:48:10 +0000
Message-Id: <20200126134811.2084060-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 1/2] i915: Inject invalid CS into hanging
 spinners
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

Some spinners are used with the intent of never ending and being
declared hung by the kernel. In some cases, these are being used to
simulate invalid payloads and so we can use an invalid command to
trigger a GPU hang. (Other cases, they are simulating infinite workloads
that truly never end, but we still need to be able to curtail to provide
multi-tasking). This patch adds IGT_SPIN_INVALID_CS to request the
injection of 0xdeadbeef into the command stream that should trigger a
GPU hang.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 lib/igt_dummyload.c              |  2 ++
 lib/igt_dummyload.h              |  1 +
 tests/i915/gem_busy.c            |  3 ++-
 tests/i915/gem_ctx_persistence.c | 39 +++++++++++++++++++++++++++++++-
 tests/i915/gem_eio.c             |  1 +
 tests/i915/gem_exec_balancer.c   |  4 +++-
 tests/i915/gem_exec_fence.c      |  3 ++-
 7 files changed, 49 insertions(+), 4 deletions(-)

diff --git a/lib/igt_dummyload.c b/lib/igt_dummyload.c
index b7f4caca3..041122af9 100644
--- a/lib/igt_dummyload.c
+++ b/lib/igt_dummyload.c
@@ -189,6 +189,8 @@ emit_recursive_batch(igt_spin_t *spin,
 	/* Allow ourselves to be preempted */
 	if (!(opts->flags & IGT_SPIN_NO_PREEMPTION))
 		*cs++ = MI_ARB_CHK;
+	if (opts->flags & IGT_SPIN_INVALID_CS)
+		*cs++ = 0xdeadbeef;
 
 	/* Pad with a few nops so that we do not completely hog the system.
 	 *
diff --git a/lib/igt_dummyload.h b/lib/igt_dummyload.h
index 421ca183b..cb696009f 100644
--- a/lib/igt_dummyload.h
+++ b/lib/igt_dummyload.h
@@ -62,6 +62,7 @@ struct igt_spin_factory {
 #define IGT_SPIN_POLL_RUN      (1 << 2)
 #define IGT_SPIN_FAST          (1 << 3)
 #define IGT_SPIN_NO_PREEMPTION (1 << 4)
+#define IGT_SPIN_INVALID_CS    (1 << 5)
 
 igt_spin_t *
 __igt_spin_factory(int fd, const struct igt_spin_factory *opts);
diff --git a/tests/i915/gem_busy.c b/tests/i915/gem_busy.c
index 39a6714c2..2f1b04e3c 100644
--- a/tests/i915/gem_busy.c
+++ b/tests/i915/gem_busy.c
@@ -436,7 +436,8 @@ static void basic(int fd, const struct intel_execution_engine2 *e, unsigned flag
 	igt_spin_t *spin =
 		igt_spin_new(fd,
 			     .engine = e->flags,
-			     .flags = IGT_SPIN_NO_PREEMPTION);
+			     .flags = IGT_SPIN_NO_PREEMPTION |
+			     (flags & HANG ? IGT_SPIN_INVALID_CS : 0));
 	struct timespec tv;
 	int timeout;
 	bool busy;
diff --git a/tests/i915/gem_ctx_persistence.c b/tests/i915/gem_ctx_persistence.c
index d68431ae0..d48234450 100644
--- a/tests/i915/gem_ctx_persistence.c
+++ b/tests/i915/gem_ctx_persistence.c
@@ -345,6 +345,41 @@ static void test_nohangcheck_hostile(int i915)
 	close(dir);
 }
 
+static void test_nohangcheck_hang(int i915)
+{
+	int64_t timeout = reset_timeout_ms * NSEC_PER_MSEC;
+	int dir;
+
+	/*
+	 * Even if the user disables hangcheck during their context,
+	 * we forcibly terminate that context.
+	 */
+
+	dir = igt_sysfs_open_parameters(i915);
+	igt_require(dir != -1);
+
+	igt_require(__enable_hangcheck(dir, false));
+
+	for_each_physical_engine(e, i915) {
+		uint32_t ctx = gem_context_create(i915);
+		igt_spin_t *spin;
+
+		spin = igt_spin_new(i915, ctx,
+				    .engine = eb_ring(e),
+				    .flags = IGT_SPIN_INVALID_CS);
+		gem_context_destroy(i915, ctx);
+
+		igt_assert_eq(gem_wait(i915, spin->handle, &timeout), 0);
+
+		igt_spin_free(i915, spin);
+	}
+
+	igt_require(__enable_hangcheck(dir, true));
+
+	gem_quiescent_gpu(i915);
+	close(dir);
+}
+
 static void test_nonpersistent_file(int i915)
 {
 	int debugfs = i915;
@@ -724,8 +759,10 @@ igt_main
 	igt_subtest("processes")
 		test_processes(i915);
 
-	igt_subtest("hangcheck")
+	igt_subtest("hostile")
 		test_nohangcheck_hostile(i915);
+	igt_subtest("hang")
+		test_nohangcheck_hang(i915);
 
 	__for_each_static_engine(e) {
 		igt_subtest_group {
diff --git a/tests/i915/gem_eio.c b/tests/i915/gem_eio.c
index b23dfecc6..aa4accc9d 100644
--- a/tests/i915/gem_eio.c
+++ b/tests/i915/gem_eio.c
@@ -187,6 +187,7 @@ static igt_spin_t * __spin_poll(int fd, uint32_t ctx, unsigned long flags)
 		.engine = flags,
 		.flags = (IGT_SPIN_FAST |
 			  IGT_SPIN_NO_PREEMPTION |
+			  IGT_SPIN_INVALID_CS |
 			  IGT_SPIN_FENCE_OUT),
 	};
 
diff --git a/tests/i915/gem_exec_balancer.c b/tests/i915/gem_exec_balancer.c
index cebcc39c7..6b0c47f09 100644
--- a/tests/i915/gem_exec_balancer.c
+++ b/tests/i915/gem_exec_balancer.c
@@ -1654,7 +1654,9 @@ static void hangme(int i915)
 			set_unbannable(i915, ctx);
 			set_load_balancer(i915, ctx, ci, count, NULL);
 
-			flags = IGT_SPIN_FENCE_OUT | IGT_SPIN_NO_PREEMPTION;
+			flags = IGT_SPIN_FENCE_OUT |
+				IGT_SPIN_NO_PREEMPTION |
+				IGT_SPIN_INVALID_CS;
 			for (int j = 0; j < ARRAY_SIZE(c->spin); j++)  {
 				c->spin[j] = igt_spin_new(i915, ctx,
 							  .flags = flags);
diff --git a/tests/i915/gem_exec_fence.c b/tests/i915/gem_exec_fence.c
index 2f802eece..6d369f589 100644
--- a/tests/i915/gem_exec_fence.c
+++ b/tests/i915/gem_exec_fence.c
@@ -335,7 +335,8 @@ static void test_fence_await(int fd, unsigned ring, unsigned flags)
 	spin = igt_spin_new(fd,
 			    .engine = ring,
 			    .flags = (IGT_SPIN_FENCE_OUT |
-				      IGT_SPIN_NO_PREEMPTION));
+				      IGT_SPIN_NO_PREEMPTION |
+				      (flags & HANG ? IGT_SPIN_INVALID_CS : 0)));
 	igt_assert(spin->out_fence != -1);
 
 	i = 0;
-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
