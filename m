Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 058892CED08
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Dec 2020 12:27:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6040B6E138;
	Fri,  4 Dec 2020 11:27:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 410076E138;
 Fri,  4 Dec 2020 11:27:25 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23213236-1500050 
 for multiple; Fri, 04 Dec 2020 11:27:14 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  4 Dec 2020 11:27:12 +0000
Message-Id: <20201204112712.1655631-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20201203095914.1427672-1-chris@chris-wilson.co.uk>
References: <20201203095914.1427672-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] i915/gem_ctx_exec: Exercise execution
 along context while closing it
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

Race the execution and interrupt handlers along a context, while
closing it at a random time.

v2: Some comments to handwave away the knowledge of internal
implementation details.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 tests/i915/gem_ctx_exec.c | 84 +++++++++++++++++++++++++++++++++++++++
 1 file changed, 84 insertions(+)

diff --git a/tests/i915/gem_ctx_exec.c b/tests/i915/gem_ctx_exec.c
index 194191def..5c6109237 100644
--- a/tests/i915/gem_ctx_exec.c
+++ b/tests/i915/gem_ctx_exec.c
@@ -43,6 +43,7 @@
 #include "i915/gem.h"
 #include "igt.h"
 #include "igt_dummyload.h"
+#include "igt_rand.h"
 #include "igt_sysfs.h"
 #include "sw_sync.h"
 
@@ -336,6 +337,86 @@ static void nohangcheck_hostile(int i915)
 	close(i915);
 }
 
+static void close_race(int i915)
+{
+	const int ncpus = sysconf(_SC_NPROCESSORS_ONLN);
+	uint32_t *contexts;
+
+	contexts = mmap(NULL, 4096, PROT_WRITE, MAP_SHARED | MAP_ANON, -1, 0);
+	igt_assert(contexts != MAP_FAILED);
+
+	for (int child = 0; child < ncpus; child++)
+		contexts[child] = gem_context_clone_with_engines(i915, 0);
+
+	igt_fork(child, ncpus) {
+		igt_spin_t *spin;
+
+		spin = igt_spin_new(i915, .flags = IGT_SPIN_POLL_RUN);
+		igt_spin_end(spin);
+		gem_sync(i915, spin->handle);
+
+		while (!READ_ONCE(contexts[ncpus])) {
+			int64_t timeout = 1;
+
+			igt_spin_reset(spin);
+			igt_assert(!igt_spin_has_started(spin));
+
+			spin->execbuf.rsvd1 = READ_ONCE(contexts[child]);
+			if (__gem_execbuf(i915, &spin->execbuf))
+				continue;
+
+			/*
+			 * One race we are particularly interested in is the
+			 * handling of interrupt signaling along a closed
+			 * context. We want to see if we can catch the kernel
+			 * freeing the context while using it in the interrupt
+			 * handler.
+			 *
+			 * There's no API to mandate that the interrupt is
+			 * generate for a wait, nor that the implementation
+			 * details of the kernel will not change to remove
+			 * context access during interrupt processing. But
+			 * for now, this should be interesting.
+			 *
+			 * Even if the signaling implementation is changed,
+			 * racing context closure versus execbuf and looking
+			 * at the outcome is very useful.
+			 */
+
+			igt_assert(gem_bo_busy(i915, spin->handle));
+			gem_wait(i915, spin->handle, &timeout); /* prime irq */
+			igt_spin_busywait_until_started(spin);
+
+			igt_spin_end(spin);
+			gem_sync(i915, spin->handle);
+		}
+
+		igt_spin_free(i915, spin);
+	}
+
+	igt_until_timeout(5) {
+		/*
+		 * Recreate all the contexts while they are in active use
+		 * by the children. This may race with any of their ioctls
+		 * and the kernel's context/request handling.
+		 */
+		for (int child = 0; child < ncpus; child++) {
+			gem_context_destroy(i915, contexts[child]);
+			contexts[child] =
+				gem_context_clone_with_engines(i915, 0);
+		}
+		usleep(1000 + hars_petruska_f54_1_random_unsafe() % 2000);
+	}
+
+	contexts[ncpus] = 1;
+	igt_waitchildren();
+
+	for (int child = 0; child < ncpus; child++)
+		gem_context_destroy(i915, contexts[child]);
+
+	munmap(contexts, 4096);
+}
+
 igt_main
 {
 	const uint32_t batch[2] = { 0, MI_BATCH_BUFFER_END };
@@ -380,6 +461,9 @@ igt_main
 	igt_subtest("basic-nohangcheck")
 		nohangcheck_hostile(fd);
 
+	igt_subtest("basic-close-race")
+		close_race(fd);
+
 	igt_subtest("reset-pin-leak") {
 		int i;
 
-- 
2.29.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
