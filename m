Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7930B2E6FB0
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Dec 2020 11:39:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1444589192;
	Tue, 29 Dec 2020 10:39:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0298389192;
 Tue, 29 Dec 2020 10:38:59 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23454469-1500050 
 for multiple; Tue, 29 Dec 2020 10:38:53 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 29 Dec 2020 10:38:52 +0000
Message-Id: <20201229103852.234352-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.30.0.rc2
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
 tests/i915/gem_ctx_engines.c | 26 +++++++++++++++++++-------
 1 file changed, 19 insertions(+), 7 deletions(-)

diff --git a/tests/i915/gem_ctx_engines.c b/tests/i915/gem_ctx_engines.c
index 7d4abdb5c..4d4b028b0 100644
--- a/tests/i915/gem_ctx_engines.c
+++ b/tests/i915/gem_ctx_engines.c
@@ -479,10 +479,11 @@ static uint32_t read_result(int timeline, uint32_t *map, int idx)
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
@@ -499,21 +500,25 @@ static void independent(int i915)
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
@@ -643,6 +648,7 @@ static void libapi(int i915)
 
 igt_main
 {
+	const struct intel_execution_engine2 *e;
 	int i915 = -1;
 
 	igt_fixture {
@@ -673,8 +679,14 @@ igt_main
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
 
 	igt_subtest("libapi")
 		libapi(i915);
-- 
2.30.0.rc2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
