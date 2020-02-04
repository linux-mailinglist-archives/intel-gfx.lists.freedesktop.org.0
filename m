Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5176A151D28
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Feb 2020 16:25:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A5E446E867;
	Tue,  4 Feb 2020 15:25:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 84DD96E830;
 Tue,  4 Feb 2020 15:25:09 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20114396-1500050 
 for multiple; Tue, 04 Feb 2020 15:24:57 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  4 Feb 2020 15:24:56 +0000
Message-Id: <20200204152456.1137083-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] i915/gem_ctx_exec: Cover all engines for
 nohangcheck
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

No engine can be missed when verifying that a rogue user cannot cause a
denial-of-service with nohangcheck.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 tests/i915/gem_ctx_exec.c | 35 +++++++++++++++++++++++++++++------
 1 file changed, 29 insertions(+), 6 deletions(-)

diff --git a/tests/i915/gem_ctx_exec.c b/tests/i915/gem_ctx_exec.c
index b1ae65774..2a16357a4 100644
--- a/tests/i915/gem_ctx_exec.c
+++ b/tests/i915/gem_ctx_exec.c
@@ -42,6 +42,7 @@
 
 #include "igt_dummyload.h"
 #include "igt_sysfs.h"
+#include "sw_sync.h"
 
 IGT_TEST_DESCRIPTION("Test context batch buffer execution.");
 
@@ -203,9 +204,9 @@ static bool __enable_hangcheck(int dir, bool state)
 
 static void nohangcheck_hostile(int i915)
 {
-	int64_t timeout = NSEC_PER_SEC / 2;
-	igt_spin_t *spin;
+	int64_t timeout = MSEC_PER_SEC / 2;
 	igt_hang_t hang;
+	int fence = -1;
 	uint32_t ctx;
 	int err = 0;
 	int dir;
@@ -223,16 +224,35 @@ static void nohangcheck_hostile(int i915)
 
 	igt_require(__enable_hangcheck(dir, false));
 
-	spin = igt_spin_new(i915, ctx, .flags = IGT_SPIN_NO_PREEMPTION);
+	for_each_physical_engine(e, i915) {
+		igt_spin_t *spin;
+
+		spin = igt_spin_new(i915, ctx,
+				    .engine = eb_ring(e),
+				    .flags = (IGT_SPIN_NO_PREEMPTION |
+					      IGT_SPIN_FENCE_OUT));
+
+		igt_assert(spin->out_fence != -1);
+		if (fence < 0) {
+			fence = spin->out_fence;
+			spin->out_fence = -1;
+		} else {
+			int new;
+
+			new = sync_fence_merge(fence, spin->out_fence);
+			close(fence);
+
+			fence = new;
+		}
+	}
 	gem_context_destroy(i915, ctx);
+	igt_assert(fence != -1);
 
-	if (gem_wait(i915, spin->handle, &timeout)) {
+	if (sync_fence_wait(fence, timeout)) {
 		igt_debugfs_dump(i915, "i915_engine_info");
 		err = -ETIME;
 	}
 
-	igt_spin_free(i915, spin);
-
 	__enable_hangcheck(dir, true);
 	gem_quiescent_gpu(i915);
 	igt_disallow_hang(i915, hang);
@@ -240,6 +260,9 @@ static void nohangcheck_hostile(int i915)
 	igt_assert_f(err == 0,
 		     "Hostile unpreemptable context was not cancelled immediately upon closure\n");
 
+	igt_assert_eq(sync_fence_status(fence), -EIO);
+	close(fence);
+
 	close(dir);
 }
 
-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
