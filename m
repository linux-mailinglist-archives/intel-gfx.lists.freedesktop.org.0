Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DF0228DF0E
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Oct 2020 12:40:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 07C6D6EA39;
	Wed, 14 Oct 2020 10:40:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D0A256EA3E;
 Wed, 14 Oct 2020 10:40:47 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 22711491-1500050 
 for multiple; Wed, 14 Oct 2020 11:40:41 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: igt-dev@lists.freedesktop.org
Date: Wed, 14 Oct 2020 11:40:32 +0100
Message-Id: <20201014104038.2554985-4-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201014104038.2554985-1-chris@chris-wilson.co.uk>
References: <20201014104038.2554985-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 04/10] i915/gem_exec_schedule: Include
 userptr scheduling tests
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
Cc: intel-gfx@lists.freedesktop.org, Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

In practice, it turns out that compute likes to use userptr for
everything, and so in turn so must we.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 tests/i915/gem_exec_schedule.c | 79 ++++++++++++++++++++++++----------
 1 file changed, 57 insertions(+), 22 deletions(-)

diff --git a/tests/i915/gem_exec_schedule.c b/tests/i915/gem_exec_schedule.c
index e316cf4d7..53462c425 100644
--- a/tests/i915/gem_exec_schedule.c
+++ b/tests/i915/gem_exec_schedule.c
@@ -308,7 +308,7 @@ static void implicit_rw(int i915, unsigned ring, enum implicit_dir dir)
 		igt_assert_eq_u32(result, ring);
 }
 
-static void independent(int fd, unsigned int engine)
+static void independent(int fd, unsigned int engine, unsigned long flags)
 {
 	const struct intel_execution_engine2 *e;
 	IGT_CORK_FENCE(cork);
@@ -332,7 +332,9 @@ static void independent(int fd, unsigned int engine)
 			continue;
 
 		if (spin == NULL) {
-			spin = __igt_spin_new(fd, .engine = e->flags);
+			spin = __igt_spin_new(fd,
+					      .engine = e->flags,
+					      .flags = flags);
 		} else {
 			struct drm_i915_gem_execbuffer2 eb = {
 				.buffer_count = 1,
@@ -628,7 +630,7 @@ static void timesliceN(int i915, unsigned int engine, int count)
 	munmap(result, sz);
 }
 
-static void lateslice(int i915, unsigned int engine)
+static void lateslice(int i915, unsigned int engine, unsigned long flags)
 {
 	igt_spin_t *spin[3];
 	uint32_t ctx;
@@ -640,7 +642,8 @@ static void lateslice(int i915, unsigned int engine)
 	ctx = gem_context_create(i915);
 	spin[0] = igt_spin_new(i915, .ctx = ctx, .engine = engine,
 			       .flags = (IGT_SPIN_POLL_RUN |
-					 IGT_SPIN_FENCE_OUT));
+					 IGT_SPIN_FENCE_OUT |
+					 flags));
 	gem_context_destroy(i915, ctx);
 
 	igt_spin_busywait_until_started(spin[0]);
@@ -649,7 +652,8 @@ static void lateslice(int i915, unsigned int engine)
 	spin[1] = igt_spin_new(i915, .ctx = ctx, .engine = engine,
 			       .fence = spin[0]->out_fence,
 			       .flags = (IGT_SPIN_POLL_RUN |
-					 IGT_SPIN_FENCE_IN));
+					 IGT_SPIN_FENCE_IN |
+					 flags));
 	gem_context_destroy(i915, ctx);
 
 	usleep(5000); /* give some time for the new spinner to be scheduled */
@@ -663,7 +667,7 @@ static void lateslice(int i915, unsigned int engine)
 
 	ctx = gem_context_create(i915);
 	spin[2] = igt_spin_new(i915, .ctx = ctx, .engine = engine,
-			       .flags = IGT_SPIN_POLL_RUN);
+			       .flags = IGT_SPIN_POLL_RUN | flags);
 	gem_context_destroy(i915, ctx);
 
 	igt_spin_busywait_until_started(spin[2]);
@@ -722,6 +726,7 @@ static void submit_slice(int i915,
 			 unsigned int flags)
 #define EARLY_SUBMIT 0x1
 #define LATE_SUBMIT 0x2
+#define USERPTR 0x4
 {
 	I915_DEFINE_CONTEXT_PARAM_ENGINES(engines , 1) = {};
 	const struct intel_execution_engine2 *cancel;
@@ -766,6 +771,7 @@ static void submit_slice(int i915,
 				    .flags =
 				    IGT_SPIN_POLL_RUN |
 				    (flags & LATE_SUBMIT ? IGT_SPIN_FENCE_IN : 0) |
+				    (flags & USERPTR ? IGT_SPIN_USERPTR : 0) |
 				    IGT_SPIN_FENCE_OUT);
 		if (fence != -1)
 			close(fence);
@@ -805,7 +811,7 @@ static uint32_t batch_create(int i915)
 	return __batch_create(i915, 0);
 }
 
-static void semaphore_userlock(int i915)
+static void semaphore_userlock(int i915, unsigned long flags)
 {
 	const struct intel_execution_engine2 *e;
 	struct drm_i915_gem_exec_object2 obj = {
@@ -828,7 +834,8 @@ static void semaphore_userlock(int i915)
 		if (!spin) {
 			spin = igt_spin_new(i915,
 					    .dependency = scratch,
-					    .engine = e->flags);
+					    .engine = e->flags,
+					    .flags = flags);
 		} else {
 			uint64_t saved = spin->execbuf.flags;
 
@@ -869,7 +876,7 @@ static void semaphore_userlock(int i915)
 	igt_spin_free(i915, spin);
 }
 
-static void semaphore_codependency(int i915)
+static void semaphore_codependency(int i915, unsigned long flags)
 {
 	const struct intel_execution_engine2 *e;
 	struct {
@@ -903,7 +910,7 @@ static void semaphore_codependency(int i915)
 			__igt_spin_new(i915,
 				       .ctx = ctx,
 				       .engine = e->flags,
-				       .flags = IGT_SPIN_POLL_RUN);
+				       .flags = IGT_SPIN_POLL_RUN | flags);
 		igt_spin_busywait_until_started(task[i].xcs);
 
 		/* Common rcs tasks will be queued in FIFO */
@@ -925,13 +932,18 @@ static void semaphore_codependency(int i915)
 	igt_spin_end(task[1].rcs);
 	gem_sync(i915, task[1].rcs->handle); /* to hang if task[0] hogs rcs */
 
+	for (i = 0; i < ARRAY_SIZE(task); i++) {
+		igt_spin_end(task[i].xcs);
+		igt_spin_end(task[i].rcs);
+	}
+
 	for (i = 0; i < ARRAY_SIZE(task); i++) {
 		igt_spin_free(i915, task[i].xcs);
 		igt_spin_free(i915, task[i].rcs);
 	}
 }
 
-static void semaphore_resolve(int i915)
+static void semaphore_resolve(int i915, unsigned long flags)
 {
 	const struct intel_execution_engine2 *e;
 	const uint32_t SEMAPHORE_ADDR = 64 << 10;
@@ -966,7 +978,7 @@ static void semaphore_resolve(int i915)
 		if (!gem_class_can_store_dword(i915, e->class))
 			continue;
 
-		spin = __igt_spin_new(i915, .engine = e->flags);
+		spin = __igt_spin_new(i915, .engine = e->flags, .flags = flags);
 		igt_spin_end(spin); /* we just want its address for later */
 		gem_sync(i915, spin->handle);
 		igt_spin_reset(spin);
@@ -1060,7 +1072,7 @@ static void semaphore_resolve(int i915)
 	gem_context_destroy(i915, outer);
 }
 
-static void semaphore_noskip(int i915)
+static void semaphore_noskip(int i915, unsigned long flags)
 {
 	const int gen = intel_gen(intel_get_drm_devid(i915));
 	const struct intel_execution_engine2 *outer, *inner;
@@ -1081,9 +1093,9 @@ static void semaphore_noskip(int i915)
 		    !gem_class_can_store_dword(i915, inner->class))
 			continue;
 
-		chain = __igt_spin_new(i915, .engine = outer->flags);
+		chain = __igt_spin_new(i915, .engine = outer->flags, .flags = flags);
 
-		spin = __igt_spin_new(i915, .engine = inner->flags);
+		spin = __igt_spin_new(i915, .engine = inner->flags, .flags = flags);
 		igt_spin_end(spin); /* we just want its address for later */
 		gem_sync(i915, spin->handle);
 		igt_spin_reset(spin);
@@ -1274,7 +1286,8 @@ static void preempt(int fd, const struct intel_execution_engine2 *e, unsigned fl
 		}
 		spin[n] = __igt_spin_new(fd,
 					 .ctx = ctx[LO],
-					 .engine = e->flags);
+					 .engine = e->flags,
+					 .flags = flags & USERPTR ? IGT_SPIN_USERPTR : 0);
 		igt_debug("spin[%d].handle=%d\n", n, spin[n]->handle);
 
 		store_dword(fd, ctx[HI], e->flags, result, 0, n + 1, I915_GEM_DOMAIN_RENDER);
@@ -2561,7 +2574,9 @@ igt_main
 			implicit_rw(fd, e->flags, READ_WRITE | WRITE_READ);
 
 		test_each_engine_store("independent", fd, e)
-			independent(fd, e->flags);
+			independent(fd, e->flags, 0);
+		test_each_engine_store("u-independent", fd, e)
+			independent(fd, e->flags, IGT_SPIN_USERPTR);
 	}
 
 	igt_subtest_group {
@@ -2582,23 +2597,40 @@ igt_main
 			timesliceN(fd, e->flags, 67);
 
 		test_each_engine("lateslice", fd, e)
-			lateslice(fd, e->flags);
+			lateslice(fd, e->flags, 0);
+		test_each_engine("u-lateslice", fd, e)
+			lateslice(fd, e->flags, IGT_SPIN_USERPTR);
 
 		test_each_engine("submit-early-slice", fd, e)
 			submit_slice(fd, e, EARLY_SUBMIT);
+		test_each_engine("u-submit-early-slice", fd, e)
+			submit_slice(fd, e, EARLY_SUBMIT | USERPTR);
 		test_each_engine("submit-golden-slice", fd, e)
 			submit_slice(fd, e, 0);
+		test_each_engine("u-submit-golden-slice", fd, e)
+			submit_slice(fd, e, USERPTR);
 		test_each_engine("submit-late-slice", fd, e)
 			submit_slice(fd, e, LATE_SUBMIT);
+		test_each_engine("u-submit-late-slice", fd, e)
+			submit_slice(fd, e, LATE_SUBMIT | USERPTR);
 
 		igt_subtest("semaphore-user")
-			semaphore_userlock(fd);
+			semaphore_userlock(fd, 0);
 		igt_subtest("semaphore-codependency")
-			semaphore_codependency(fd);
+			semaphore_codependency(fd, 0);
 		igt_subtest("semaphore-resolve")
-			semaphore_resolve(fd);
+			semaphore_resolve(fd, 0);
 		igt_subtest("semaphore-noskip")
-			semaphore_noskip(fd);
+			semaphore_noskip(fd, 0);
+
+		igt_subtest("u-semaphore-user")
+			semaphore_userlock(fd, IGT_SPIN_USERPTR);
+		igt_subtest("u-semaphore-codependency")
+			semaphore_codependency(fd, IGT_SPIN_USERPTR);
+		igt_subtest("u-semaphore-resolve")
+			semaphore_resolve(fd, IGT_SPIN_USERPTR);
+		igt_subtest("u-semaphore-noskip")
+			semaphore_noskip(fd, IGT_SPIN_USERPTR);
 
 		igt_subtest("smoketest-all")
 			smoketest(fd, ALL_ENGINES, 30);
@@ -2623,6 +2655,9 @@ igt_main
 			test_each_engine_store("preempt-contexts", fd, e)
 				preempt(fd, e, NEW_CTX);
 
+			test_each_engine_store("preempt-user", fd, e)
+				preempt(fd, e, USERPTR);
+
 			test_each_engine_store("preempt-self", fd, e)
 				preempt_self(fd, e->flags);
 
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
