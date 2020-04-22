Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F4491B3FD4
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Apr 2020 12:41:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9EDF86E3C1;
	Wed, 22 Apr 2020 10:41:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1F6106E3C6
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Apr 2020 10:41:10 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20981800-1500050 
 for multiple; Wed, 22 Apr 2020 11:41:03 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 22 Apr 2020 11:41:02 +0100
Message-Id: <20200422104102.3598368-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200422104102.3598368-1-chris@chris-wilson.co.uk>
References: <20200422104102.3598368-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 2/2] i915/gem_ctx_persistence: Give the
 CPU scheduler a kick on timeouts
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

We have allowed the CPU 2s to process the hang and cleanup; but clearly
this is not always enough. Let's just give the CPU one last kick before
declaring that we have an issue, to try and be sure that we have a bug
to fix before worrying.

References: https://gitlab.freedesktop.org/drm/intel/issues/1528
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 tests/i915/gem_ctx_persistence.c | 43 ++++++++++++++++++++++----------
 1 file changed, 30 insertions(+), 13 deletions(-)

diff --git a/tests/i915/gem_ctx_persistence.c b/tests/i915/gem_ctx_persistence.c
index 3d52987d1..dea62fa38 100644
--- a/tests/i915/gem_ctx_persistence.c
+++ b/tests/i915/gem_ctx_persistence.c
@@ -55,11 +55,21 @@ static void cleanup(int i915)
 	igt_require_gem(i915);
 }
 
-static int wait_for_status(int fence, int timeout)
+static void kick_kthreads(int i915)
+{
+	/* Give the *CPU* scheduler a kick! */
+	igt_drop_caches_set(i915, DROP_TASKLETS);
+}
+
+static int wait_for_status(int i915, int fence, int timeout)
 {
 	int err;
 
 	err = sync_fence_wait(fence, timeout);
+	if (err == -ETIME) {
+		kick_kthreads(i915);
+		err = sync_fence_wait(fence, timeout);
+	}
 	if (err)
 		return err;
 
@@ -250,8 +260,8 @@ static void test_nonpersistent_mixed(int i915, unsigned int engine)
 	}
 
 	/* Outer pair of contexts were non-persistent and killed */
-	igt_assert_eq(wait_for_status(fence[0], reset_timeout_ms), -EIO);
-	igt_assert_eq(wait_for_status(fence[2], reset_timeout_ms), -EIO);
+	igt_assert_eq(wait_for_status(i915, fence[0], reset_timeout_ms), -EIO);
+	igt_assert_eq(wait_for_status(i915, fence[2], reset_timeout_ms), -EIO);
 
 	/* But the middle context is still running */
 	igt_assert_eq(sync_fence_wait(fence[1], 0), -ETIME);
@@ -440,7 +450,8 @@ static void test_nonpersistent_file(int i915)
 	close(i915);
 	flush_delayed_fput(debugfs);
 
-	igt_assert_eq(wait_for_status(spin->out_fence, reset_timeout_ms), -EIO);
+	igt_assert_eq(wait_for_status(i915, spin->out_fence, reset_timeout_ms),
+		      -EIO);
 
 	spin->handle = 0;
 	igt_spin_free(-1, spin);
@@ -478,8 +489,10 @@ static void test_nonpersistent_queued(int i915, unsigned int engine)
 
 	gem_context_destroy(i915, ctx);
 
-	igt_assert_eq(wait_for_status(spin->out_fence, reset_timeout_ms), -EIO);
-	igt_assert_eq(wait_for_status(fence, reset_timeout_ms), -EIO);
+	igt_assert_eq(wait_for_status(i915, spin->out_fence, reset_timeout_ms),
+		      -EIO);
+	igt_assert_eq(wait_for_status(i915, fence, reset_timeout_ms),
+		      -EIO);
 
 	igt_spin_free(i915, spin);
 }
@@ -554,7 +567,7 @@ static void test_process(int i915)
 	fence = recvfd(sv[1]);
 	close(sv[1]);
 
-	igt_assert_eq(wait_for_status(fence, reset_timeout_ms), -EIO);
+	igt_assert_eq(wait_for_status(i915, fence, reset_timeout_ms), -EIO);
 	close(fence);
 
 	/* We have to manually clean up the orphaned spinner */
@@ -607,7 +620,7 @@ static void test_process_mixed(int pfd, unsigned int engine)
 	close(sv[1]);
 
 	/* First fence is non-persistent, so should be reset */
-	igt_assert_eq(wait_for_status(fence[0], reset_timeout_ms), -EIO);
+	igt_assert_eq(wait_for_status(pfd, fence[0], reset_timeout_ms), -EIO);
 	close(fence[0]);
 
 	/* Second fence is persistent, so should be still spinning */
@@ -677,11 +690,12 @@ test_saturated_hostile(int i915, const struct intel_execution_engine2 *engine)
 	gem_context_destroy(i915, ctx);
 
 	/* Hostile request requires a GPU reset to terminate */
-	igt_assert_eq(wait_for_status(spin->out_fence, reset_timeout_ms), -EIO);
+	igt_assert_eq(wait_for_status(i915, spin->out_fence, reset_timeout_ms),
+		      -EIO);
 
 	/* All other spinners should be left unharmed */
 	gem_quiescent_gpu(i915);
-	igt_assert_eq(wait_for_status(fence, reset_timeout_ms), 1);
+	igt_assert_eq(wait_for_status(i915, fence, reset_timeout_ms), 1);
 	close(fence);
 }
 
@@ -746,7 +760,7 @@ static void test_processes(int i915)
 
 		if (i == 0) {
 			/* First fence is non-persistent, so should be reset */
-			igt_assert_eq(wait_for_status(fence, reset_timeout_ms),
+			igt_assert_eq(wait_for_status(i915, fence, reset_timeout_ms),
 				      -EIO);
 		} else {
 			/* Second fence is persistent, so still spinning */
@@ -790,10 +804,12 @@ static void __smoker(int i915,
 
 	igt_spin_end(spin);
 
-	igt_assert_eq(wait_for_status(spin->out_fence, timeout), expected);
+	igt_assert_eq(wait_for_status(i915, spin->out_fence, timeout),
+		      expected);
 
 	if (fence != -1) {
-		igt_assert_eq(wait_for_status(fence, timeout), expected);
+		igt_assert_eq(wait_for_status(i915, fence, timeout),
+			      expected);
 		close(fence);
 	}
 
@@ -987,6 +1003,7 @@ static void close_replace_race(int i915)
 	close(out[1]);
 
 	if (sync_fence_wait(fence, MSEC_PER_SEC / 2)) {
+		kick_kthreads(i915);
 		igt_debugfs_dump(i915, "i915_engine_info");
 		igt_assert(sync_fence_wait(fence, MSEC_PER_SEC / 2) == 0);
 	}
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
