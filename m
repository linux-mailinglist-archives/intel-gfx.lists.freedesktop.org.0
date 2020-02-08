Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AF49F156577
	for <lists+intel-gfx@lfdr.de>; Sat,  8 Feb 2020 17:27:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0191C6E373;
	Sat,  8 Feb 2020 16:27:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AD3A76E373
 for <intel-gfx@lists.freedesktop.org>; Sat,  8 Feb 2020 16:27:00 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20159319-1500050 
 for multiple; Sat, 08 Feb 2020 16:26:55 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sat,  8 Feb 2020 16:26:54 +0000
Message-Id: <20200208162654.3029085-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] i915/gem_ctx_exec: Flood the nohangcheck
 with spinners
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

One hostile request is easily to defeat, but we tripped over dealing
with a couple! Maximise the evil!

References: https://gitlab.freedesktop.org/drm/intel/issues/1166
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 tests/i915/gem_ctx_exec.c | 83 ++++++++++++++++++++++++++++++++++-----
 1 file changed, 73 insertions(+), 10 deletions(-)

diff --git a/tests/i915/gem_ctx_exec.c b/tests/i915/gem_ctx_exec.c
index 5b4e4b3db..61db9fd1a 100644
--- a/tests/i915/gem_ctx_exec.c
+++ b/tests/i915/gem_ctx_exec.c
@@ -27,6 +27,7 @@
 #include "igt.h"
 #include <limits.h>
 #include <unistd.h>
+#include <signal.h>
 #include <stdlib.h>
 #include <stdint.h>
 #include <stdio.h>
@@ -202,6 +203,64 @@ static bool __enable_hangcheck(int dir, bool state)
 	return igt_sysfs_set(dir, "enable_hangcheck", state ? "1" : "0");
 }
 
+static int __execbuf(int i915, struct drm_i915_gem_execbuffer2 *execbuf)
+{
+	int err;
+
+	err = 0;
+	if (ioctl(i915, DRM_IOCTL_I915_GEM_EXECBUFFER2_WR, execbuf)) {
+		err = -errno;
+		igt_assume(err);
+	}
+
+	errno = 0;
+	return err;
+}
+
+static void alarm_handler(int sig)
+{
+}
+
+static int
+fill_ring(int i915, struct drm_i915_gem_execbuffer2 *execbuf)
+{
+	struct sigaction old_sa, sa = { .sa_handler = alarm_handler };
+	int fence = execbuf->rsvd2 >> 32;
+	struct itimerval itv;
+	bool once = false;
+
+	sigaction(SIGALRM, &sa, &old_sa);
+	itv.it_interval.tv_sec = 0;
+	itv.it_interval.tv_usec = 1000;
+	itv.it_value.tv_sec = 0;
+	itv.it_value.tv_usec = 10000;
+	setitimer(ITIMER_REAL, &itv, NULL);
+
+	igt_assert(execbuf->flags & I915_EXEC_FENCE_OUT);
+	do {
+		int err = __execbuf(i915, execbuf);
+
+		if (err == 0) {
+			close(fence);
+			fence = execbuf->rsvd2 >> 32;
+			continue;
+		}
+
+		if (err == -EWOULDBLOCK || once)
+			break;
+
+		/* sleep until the next timer interrupt (woken on signal) */
+		pause();
+		once = true;
+	} while (1);
+
+	memset(&itv, 0, sizeof(itv));
+	setitimer(ITIMER_REAL, &itv, NULL);
+	sigaction(SIGALRM, &old_sa, NULL);
+
+	return fence;
+}
+
 static void nohangcheck_hostile(int i915)
 {
 	const struct intel_execution_engine2 *e;
@@ -228,23 +287,27 @@ static void nohangcheck_hostile(int i915)
 
 	____for_each_physical_engine(i915, ctx, e) {
 		igt_spin_t *spin;
+		int new;
+
+		spin = __igt_spin_new(i915, ctx,
+				      .engine = e->flags,
+				      .flags = (IGT_SPIN_NO_PREEMPTION |
+						IGT_SPIN_FENCE_OUT));
 
-		spin = igt_spin_new(i915, ctx,
-				    .engine = e->flags,
-				    .flags = (IGT_SPIN_NO_PREEMPTION |
-					      IGT_SPIN_FENCE_OUT));
+		new = fill_ring(i915, &spin->execbuf);
+		igt_assert(new != -1);
+		spin->out_fence = -1;
 
-		igt_assert(spin->out_fence != -1);
 		if (fence < 0) {
-			fence = spin->out_fence;
-			spin->out_fence = -1;
+			fence = new;
 		} else {
-			int new;
+			int tmp;
 
-			new = sync_fence_merge(fence, spin->out_fence);
+			tmp = sync_fence_merge(fence, new);
 			close(fence);
+			close(new);
 
-			fence = new;
+			fence = tmp;
 		}
 	}
 	gem_context_destroy(i915, ctx);
-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
