Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 85B8F162468
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Feb 2020 11:19:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5CDBE6E9DC;
	Tue, 18 Feb 2020 10:19:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 317056E9DA;
 Tue, 18 Feb 2020 10:19:32 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20261542-1500050 
 for multiple; Tue, 18 Feb 2020 10:19:24 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 18 Feb 2020 10:19:23 +0000
Message-Id: <20200218101923.1049940-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] i915/gem_ctx_persistence: Protect
 igt_spin_new() from close races
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

Since the library call of igt_spin_new() asserts if it spots an error,
we must protect it from the races we are imposing upon ourselves.
However, to keep those races active, delegate the potentially failing
calls to the children.

References: https://gitlab.freedesktop.org/drm/intel/issues/1241
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 tests/i915/gem_ctx_persistence.c | 47 ++++++++++++++++++++++----------
 1 file changed, 33 insertions(+), 14 deletions(-)

diff --git a/tests/i915/gem_ctx_persistence.c b/tests/i915/gem_ctx_persistence.c
index feb8fbd01..20007f5c4 100644
--- a/tests/i915/gem_ctx_persistence.c
+++ b/tests/i915/gem_ctx_persistence.c
@@ -804,7 +804,7 @@ static void replace_engines(int i915, const struct intel_execution_engine2 *e)
 	gem_quiescent_gpu(i915);
 }
 
-static void race_set_engines(int i915, int fd)
+static void race_set_engines(int i915, int in, int out)
 {
 	I915_DEFINE_CONTEXT_PARAM_ENGINES(engines, 1) = {
 		.engines = {}
@@ -814,19 +814,31 @@ static void race_set_engines(int i915, int fd)
 		.value = to_user_pointer(&engines),
 		.size = sizeof(engines),
 	};
+	igt_spin_t *spin;
+
+	spin = igt_spin_new(i915);
+	igt_spin_end(spin);
 
-	while (read(fd, &param.ctx_id, sizeof(param.ctx_id)) > 0) {
+	while (read(in, &param.ctx_id, sizeof(param.ctx_id)) > 0) {
 		if (!param.ctx_id)
 			break;
+
 		__gem_context_set_param(i915, &param);
+
+		spin->execbuf.rsvd1 = param.ctx_id;
+		__gem_execbuf(i915, &spin->execbuf);
+
+		write(out, &param.ctx_id, sizeof(param.ctx_id));
 	}
+
+	igt_spin_free(i915, spin);
 }
 
 static void close_replace_race(int i915)
 {
 	const int ncpus = sysconf(_SC_NPROCESSORS_ONLN);
 	int fence = -1;
-	int fd[2];
+	int out[2], in[2];
 
 	/*
 	 * If we time the submission of a hanging batch to one set of engines
@@ -838,13 +850,15 @@ static void close_replace_race(int i915)
 	 * Our challenge is try and expose any such race condition.
 	 */
 
-	igt_assert(pipe(fd) == 0);
+	igt_assert(pipe(out) == 0);
+	igt_assert(pipe(in) == 0);
 	igt_fork(child, ncpus) {
-		close(fd[1]);
-		race_set_engines(i915, fd[0]);
+		close(out[1]);
+		close(in[0]);
+		race_set_engines(i915, out[0], in[1]);
 	}
 	for (int i = 0; i < ncpus; i++)
-		close(fd[0]);
+		close(out[0]);
 
 	igt_until_timeout(5) {
 		igt_spin_t *spin;
@@ -855,7 +869,11 @@ static void close_replace_race(int i915)
 
 		spin = igt_spin_new(i915, ctx, .flags = IGT_SPIN_FENCE_OUT);
 		for (int i = 0; i < ncpus; i++)
-			write(fd[1], &ctx, sizeof(ctx));
+			write(out[1], &ctx, sizeof(ctx));
+
+		gem_context_destroy(i915, ctx);
+		for (int i = 0; i < ncpus; i++)
+			read(in[0], &ctx, sizeof(ctx));
 
 		if (fence < 0) {
 			fence = spin->out_fence;
@@ -869,19 +887,20 @@ static void close_replace_race(int i915)
 			fence = tmp;
 		}
 		spin->out_fence = -1;
-
-		gem_context_destroy(i915, ctx);
 	}
+	close(in[0]);
 
 	for (int i = 0; i < ncpus; i++) {
 		uint32_t end = 0;
 
-		write(fd[1], &end, sizeof(end));
+		write(out[1], &end, sizeof(end));
 	}
-	close(fd[1]);
+	close(out[1]);
 
-	igt_debugfs_dump(i915, "i915_engine_info");
-	igt_assert(sync_fence_wait(fence, MSEC_PER_SEC / 2) == 0);
+	if (sync_fence_wait(fence, MSEC_PER_SEC / 2)) {
+		igt_debugfs_dump(i915, "i915_engine_info");
+		igt_assert(sync_fence_wait(fence, MSEC_PER_SEC / 2) == 0);
+	}
 	close(fence);
 
 	igt_waitchildren();
-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
