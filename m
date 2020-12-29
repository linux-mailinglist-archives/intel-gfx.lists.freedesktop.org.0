Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 050802E6FB9
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Dec 2020 11:52:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EA969892BB;
	Tue, 29 Dec 2020 10:52:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 05F1F892B1;
 Tue, 29 Dec 2020 10:52:44 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23454585-1500050 
 for multiple; Tue, 29 Dec 2020 10:52:38 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 29 Dec 2020 10:52:37 +0000
Message-Id: <20201229105237.273009-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.30.0.rc2
In-Reply-To: <20201229103852.234352-1-chris@chris-wilson.co.uk>
References: <20201229103852.234352-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] i915/gem_ctx_engines: Exercise
 independence across all physical engines
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

Run the 'independent' subtest on all all engines.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 tests/i915/gem_ctx_engines.c | 66 +++++++++++++++++++++++++++++++-----
 1 file changed, 58 insertions(+), 8 deletions(-)

diff --git a/tests/i915/gem_ctx_engines.c b/tests/i915/gem_ctx_engines.c
index 7d4abdb5c..d3e3da700 100644
--- a/tests/i915/gem_ctx_engines.c
+++ b/tests/i915/gem_ctx_engines.c
@@ -30,8 +30,9 @@
 #include <fcntl.h>
 #include <inttypes.h>
 #include <errno.h>
-#include <sys/stat.h>
+#include <sched.h>
 #include <sys/ioctl.h>
+#include <sys/stat.h>
 #include <sys/time.h>
 
 #include <drm.h>
@@ -479,10 +480,11 @@ static uint32_t read_result(int timeline, uint32_t *map, int idx)
 	return map[idx];
 }
 
-static void independent(int i915)
+static void independent(int i915, const struct intel_execution_engine2 *e)
 {
-#define RCS_TIMESTAMP (0x2000 + 0x358)
+#define RCS_TIMESTAMP (mmio_base + 0x358)
 	const unsigned int gen = intel_gen(intel_get_drm_devid(i915));
+	unsigned int mmio_base = gem_engine_mmio_base(i915, e->name);
 	const int has_64bit_reloc = gen >= 8;
 	I915_DEFINE_CONTEXT_PARAM_ENGINES(engines , I915_EXEC_RING_MASK + 1);
 	struct drm_i915_gem_context_param param = {
@@ -499,21 +501,25 @@ static void independent(int i915)
 	int timeline = sw_sync_timeline_create();
 	uint32_t last, *map;
 
-	igt_require(gen >= 6); /* No per-engine TIMESTAMP on older gen */
-	igt_require(gem_scheduler_enabled(i915));
+	igt_require(mmio_base);
 
 	{
 		struct drm_i915_gem_execbuffer2 execbuf = {
 			.buffers_ptr = to_user_pointer(&results),
 			.buffer_count = 1,
 			.rsvd1 = param.ctx_id,
+			.flags = e->flags,
 		};
 		gem_write(i915, results.handle, 0, &bbe, sizeof(bbe));
 		gem_execbuf(i915, &execbuf);
 		results.flags = EXEC_OBJECT_PINNED;
 	}
 
-	memset(&engines, 0, sizeof(engines)); /* All rcs0 */
+	memset(&engines, 0, sizeof(engines));
+	for (int i = 0; i < I915_EXEC_RING_MASK + 1; i++) {
+		engine_class(&engines, i) = e->class;
+		engine_instance(&engines, i) = e->instance;
+	}
 	gem_context_set_param(i915, &param);
 
 	gem_set_caching(i915, results.handle, I915_CACHING_CACHED);
@@ -573,6 +579,39 @@ static void independent(int i915)
 	gem_context_destroy(i915, param.ctx_id);
 }
 
+static void independent_all(int i915)
+{
+	const struct intel_execution_engine2 *e;
+	igt_spin_t *spin = NULL;
+
+	igt_require(gem_scheduler_enabled(i915));
+	igt_require(intel_gen(intel_get_drm_devid(i915) >= 6));
+
+	__for_each_physical_engine(i915, e) {
+		if (spin) {
+			spin->execbuf.flags &= ~63;
+			spin->execbuf.flags |= e->flags;
+			gem_execbuf(i915, &spin->execbuf);
+		} else {
+			spin = igt_spin_new(i915, .engine = e->flags,
+					    .flags = (IGT_SPIN_NO_PREEMPTION |
+						      IGT_SPIN_POLL_RUN));
+		}
+	}
+	igt_require(spin);
+	igt_spin_busywait_until_started(spin);
+
+	__for_each_physical_engine(i915, e) {
+		if (!gem_engine_mmio_base(i915, e->name))
+			continue;
+		igt_fork(child, 1)
+			independent(i915, e);
+	}
+	sched_yield();
+	igt_spin_free(i915, spin);
+	igt_waitchildren();
+}
+
 static void libapi(int i915)
 {
 	I915_DEFINE_CONTEXT_PARAM_ENGINES(engines, 64) = {};
@@ -643,6 +682,7 @@ static void libapi(int i915)
 
 igt_main
 {
+	const struct intel_execution_engine2 *e;
 	int i915 = -1;
 
 	igt_fixture {
@@ -673,8 +713,18 @@ igt_main
 	igt_subtest("execute-allforone")
 		execute_allforone(i915);
 
-	igt_subtest("independent")
-		independent(i915);
+	igt_subtest_with_dynamic("independent") {
+		igt_require(gem_scheduler_enabled(i915));
+		igt_require(intel_gen(intel_get_drm_devid(i915) >= 6));
+		__for_each_physical_engine(i915, e) {
+			igt_dynamic_f("%s", e->name)
+				independent(i915, e);
+		}
+	}
+
+	igt_subtest("independent-all") {
+		independent_all(i915);
+	}
 
 	igt_subtest("libapi")
 		libapi(i915);
-- 
2.30.0.rc2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
