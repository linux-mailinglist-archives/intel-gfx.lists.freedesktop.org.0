Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 855623DF921
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Aug 2021 03:05:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE01789F24;
	Wed,  4 Aug 2021 01:05:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9778189F24;
 Wed,  4 Aug 2021 01:05:14 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10065"; a="274873913"
X-IronPort-AV: E=Sophos;i="5.84,293,1620716400"; d="scan'208";a="274873913"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Aug 2021 18:05:13 -0700
X-IronPort-AV: E=Sophos;i="5.84,293,1620716400"; d="scan'208";a="670732229"
Received: from dhiatt-server.jf.intel.com ([10.54.81.3])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Aug 2021 18:05:12 -0700
From: Matthew Brost <matthew.brost@intel.com>
To: <igt-dev@lists.freedesktop.org>
Cc: <intel-gfx@lists.freedesktop.org>
Date: Tue,  3 Aug 2021 18:23:01 -0700
Message-Id: <20210804012303.158392-2-matthew.brost@intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20210804012303.158392-1-matthew.brost@intel.com>
References: <20210804012303.158392-1-matthew.brost@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t 1/3] i915/gem_exec_schedule: Make
 gem_exec_schedule understand static priority mapping
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The i915 currently has 2k visible priority levels which are currently
unique. This is changing to statically map these 2k levels into 3
buckets:

low: < 0
mid: 0
high: > 0

Update gem_exec_schedule to understand this. This entails updating
promotion test to use 3 levels that will map into different buckets and
also add bit of delay after releasing a cork beforing completing the
spinners.

Also skip any tests that rely on having more than 3 priority levels.

v2: Add a delay between starting releasing spinner and cork in
promotion, add local define for static mapping engine info

Signed-off-by: Matthew Brost <matthew.brost@intel.com>
---
 lib/i915/gem_scheduler.c       | 14 ++++++++
 lib/i915/gem_scheduler.h       |  1 +
 lib/i915/i915_drm_local.h      | 10 ++++++
 tests/i915/gem_exec_schedule.c | 62 +++++++++++++++++++++-------------
 4 files changed, 63 insertions(+), 24 deletions(-)

diff --git a/lib/i915/gem_scheduler.c b/lib/i915/gem_scheduler.c
index cdddf42ad..d006b8676 100644
--- a/lib/i915/gem_scheduler.c
+++ b/lib/i915/gem_scheduler.c
@@ -28,6 +28,7 @@
 #include "igt_core.h"
 #include "ioctl_wrappers.h"
 
+#include "i915/i915_drm_local.h"
 #include "i915/gem_scheduler.h"
 #include "i915/gem_submission.h"
 
@@ -90,6 +91,19 @@ bool gem_scheduler_has_ctx_priority(int fd)
 		I915_SCHEDULER_CAP_PRIORITY;
 }
 
+/**
+ * gem_scheduler_has_static_priority:
+ * @fd: open i915 drm file descriptor
+ *
+ * Feature test macro to query whether the driver supports priority assigned
+ * from user space are statically mapping into 3 buckets.
+ */
+bool gem_scheduler_has_static_priority(int fd)
+{
+	return gem_scheduler_capability(fd) &
+		I915_SCHEDULER_CAP_STATIC_PRIORITY_MAP;
+}
+
 /**
  * gem_scheduler_has_preemption:
  * @fd: open i915 drm file descriptor
diff --git a/lib/i915/gem_scheduler.h b/lib/i915/gem_scheduler.h
index d43e84bd2..b00804f70 100644
--- a/lib/i915/gem_scheduler.h
+++ b/lib/i915/gem_scheduler.h
@@ -29,6 +29,7 @@
 unsigned gem_scheduler_capability(int fd);
 bool gem_scheduler_enabled(int fd);
 bool gem_scheduler_has_ctx_priority(int fd);
+bool gem_scheduler_has_static_priority(int fd);
 bool gem_scheduler_has_preemption(int fd);
 bool gem_scheduler_has_semaphores(int fd);
 bool gem_scheduler_has_engine_busy_stats(int fd);
diff --git a/lib/i915/i915_drm_local.h b/lib/i915/i915_drm_local.h
index dd646aedf..a1527ff21 100644
--- a/lib/i915/i915_drm_local.h
+++ b/lib/i915/i915_drm_local.h
@@ -20,6 +20,16 @@ extern "C" {
  * clean these up when kernel uapi headers are sync'd.
  */
 
+/*
+ * Indicates the 2k user priority levels are statically mapped into 3 buckets as
+ * follows:
+ *
+ * -1k to -1	Low priority
+ * 0		Normal priority
+ * 1 to 1k	Highest priority
+ */
+#define   I915_SCHEDULER_CAP_STATIC_PRIORITY_MAP	(1ul << 5)
+
 #if defined(__cplusplus)
 }
 #endif
diff --git a/tests/i915/gem_exec_schedule.c b/tests/i915/gem_exec_schedule.c
index e5fb45982..bb9fb6c14 100644
--- a/tests/i915/gem_exec_schedule.c
+++ b/tests/i915/gem_exec_schedule.c
@@ -199,7 +199,8 @@ create_highest_priority(int fd, const intel_ctx_cfg_t *cfg)
 
 static void unplug_show_queue(int fd, struct igt_cork *c,
 			      const intel_ctx_cfg_t *cfg,
-			      unsigned int engine)
+			      unsigned int engine,
+			      unsigned usec_delay)
 {
 	igt_spin_t *spin[MAX_ELSP_QLEN];
 	int max = MAX_ELSP_QLEN;
@@ -216,6 +217,7 @@ static void unplug_show_queue(int fd, struct igt_cork *c,
 
 	igt_cork_unplug(c); /* batches will now be queued on the engine */
 	igt_debugfs_dump(fd, "i915_engine_info");
+	usleep(usec_delay);
 
 	for (int n = 0; n < max; n++)
 		igt_spin_free(fd, spin[n]);
@@ -237,7 +239,7 @@ static void fifo(int fd, const intel_ctx_t *ctx, unsigned ring)
 	store_dword_fenced(fd, ctx, ring, scratch, 0, 1, fence, 0);
 	store_dword_fenced(fd, ctx, ring, scratch, 0, 2, fence, 0);
 
-	unplug_show_queue(fd, &cork, &ctx->cfg, ring);
+	unplug_show_queue(fd, &cork, &ctx->cfg, ring, 0);
 	close(fence);
 
 	result =  __sync_read_u32(fd, scratch, 0);
@@ -298,7 +300,7 @@ static void implicit_rw(int i915, const intel_ctx_t *ctx, unsigned int ring,
 				   ring, scratch, 0, ring,
 				   fence, I915_GEM_DOMAIN_RENDER);
 
-	unplug_show_queue(i915, &cork, &ctx->cfg, ring);
+	unplug_show_queue(i915, &cork, &ctx->cfg, ring, 0);
 	close(fence);
 
 	result =  __sync_read_u32(i915, scratch, 0);
@@ -355,7 +357,7 @@ static void independent(int fd, const intel_ctx_t *ctx, unsigned int engine,
 	/* Same priority, but different timeline (as different engine) */
 	batch = __store_dword(fd, ctx, engine, scratch, 0, engine, 0, fence, 0);
 
-	unplug_show_queue(fd, &cork, &ctx->cfg, engine);
+	unplug_show_queue(fd, &cork, &ctx->cfg, engine, 0);
 	close(fence);
 
 	gem_sync(fd, batch);
@@ -1326,7 +1328,7 @@ static void reorder(int fd, const intel_ctx_cfg_t *cfg,
 	store_dword_fenced(fd, ctx[LO], ring, scratch, 0, ctx[LO]->id, fence, 0);
 	store_dword_fenced(fd, ctx[HI], ring, scratch, 0, ctx[HI]->id, fence, 0);
 
-	unplug_show_queue(fd, &cork, cfg, ring);
+	unplug_show_queue(fd, &cork, cfg, ring, 0);
 	close(fence);
 
 	result =  __sync_read_u32(fd, scratch, 0);
@@ -1353,10 +1355,10 @@ static void promotion(int fd, const intel_ctx_cfg_t *cfg, unsigned ring)
 	gem_context_set_priority(fd, ctx[LO]->id, MIN_PRIO);
 
 	ctx[HI] = intel_ctx_create(fd, cfg);
-	gem_context_set_priority(fd, ctx[HI]->id, 0);
+	gem_context_set_priority(fd, ctx[HI]->id, MAX_PRIO);
 
 	ctx[NOISE] = intel_ctx_create(fd, cfg);
-	gem_context_set_priority(fd, ctx[NOISE]->id, MIN_PRIO/2);
+	gem_context_set_priority(fd, ctx[NOISE]->id, 0);
 
 	result = gem_create(fd, 4096);
 	dep = gem_create(fd, 4096);
@@ -1377,7 +1379,7 @@ static void promotion(int fd, const intel_ctx_cfg_t *cfg, unsigned ring)
 
 	store_dword(fd, ctx[HI], ring, result, 0, ctx[HI]->id, 0);
 
-	unplug_show_queue(fd, &cork, cfg, ring);
+	unplug_show_queue(fd, &cork, cfg, ring, 250000);
 	close(fence);
 
 	dep_read = __sync_read_u32(fd, dep, 0);
@@ -1893,7 +1895,7 @@ static void deep(int fd, const intel_ctx_cfg_t *cfg,
 	igt_info("Second deptree: %d requests [%.3fs]\n",
 		 n * XS, 1e-9*igt_nsec_elapsed(&tv));
 
-	unplug_show_queue(fd, &cork, cfg, ring);
+	unplug_show_queue(fd, &cork, cfg, ring, 0);
 	gem_close(fd, plug);
 	igt_require(expected); /* too slow */
 
@@ -1962,7 +1964,7 @@ static void wide(int fd, const intel_ctx_cfg_t *cfg, unsigned ring)
 	igt_info("Submitted %d requests over %d contexts in %.1fms\n",
 		 count, MAX_CONTEXTS, igt_nsec_elapsed(&tv) * 1e-6);
 
-	unplug_show_queue(fd, &cork, cfg, ring);
+	unplug_show_queue(fd, &cork, cfg, ring, 0);
 	close(fence);
 
 	__sync_read_u32_count(fd, result, result_read, sizeof(result_read));
@@ -2067,7 +2069,7 @@ static void reorder_wide(int fd, const intel_ctx_cfg_t *cfg, unsigned ring)
 		intel_ctx_destroy(fd, tmp_ctx);
 	}
 
-	unplug_show_queue(fd, &cork, cfg, ring);
+	unplug_show_queue(fd, &cork, cfg, ring, 0);
 	close(fence);
 
 	__sync_read_u32_count(fd, result, result_read, sizeof(result_read));
@@ -2963,19 +2965,25 @@ igt_main
 			test_each_engine_store("preempt-other-chain", fd, ctx, e)
 				preempt_other(fd, &ctx->cfg, e->flags, CHAIN);
 
-			test_each_engine_store("preempt-queue", fd, ctx, e)
-				preempt_queue(fd, &ctx->cfg, e->flags, 0);
+			test_each_engine_store("preempt-engines", fd, ctx, e)
+				preempt_engines(fd, e, 0);
 
-			test_each_engine_store("preempt-queue-chain", fd, ctx, e)
-				preempt_queue(fd, &ctx->cfg, e->flags, CHAIN);
-			test_each_engine_store("preempt-queue-contexts", fd, ctx, e)
-				preempt_queue(fd, &ctx->cfg, e->flags, CONTEXTS);
+			igt_subtest_group {
+				igt_fixture {
+					igt_require(!gem_scheduler_has_static_priority(fd));
+				}
 
-			test_each_engine_store("preempt-queue-contexts-chain", fd, ctx, e)
-				preempt_queue(fd, &ctx->cfg, e->flags, CONTEXTS | CHAIN);
+				test_each_engine_store("preempt-queue", fd, ctx, e)
+					preempt_queue(fd, &ctx->cfg, e->flags, 0);
 
-			test_each_engine_store("preempt-engines", fd, ctx, e)
-				preempt_engines(fd, e, 0);
+				test_each_engine_store("preempt-queue-chain", fd, ctx, e)
+					preempt_queue(fd, &ctx->cfg, e->flags, CHAIN);
+				test_each_engine_store("preempt-queue-contexts", fd, ctx, e)
+					preempt_queue(fd, &ctx->cfg, e->flags, CONTEXTS);
+
+				test_each_engine_store("preempt-queue-contexts-chain", fd, ctx, e)
+					preempt_queue(fd, &ctx->cfg, e->flags, CONTEXTS | CHAIN);
+			}
 
 			igt_subtest_group {
 				igt_hang_t hang;
@@ -3017,11 +3025,17 @@ igt_main
 		test_each_engine_store("wide", fd, ctx, e)
 			wide(fd, &ctx->cfg, e->flags);
 
-		test_each_engine_store("reorder-wide", fd, ctx, e)
-			reorder_wide(fd, &ctx->cfg, e->flags);
-
 		test_each_engine_store("smoketest", fd, ctx, e)
 			smoketest(fd, &ctx->cfg, e->flags, 5);
+
+		igt_subtest_group {
+			igt_fixture {
+				igt_require(!gem_scheduler_has_static_priority(fd));
+			}
+
+			test_each_engine_store("reorder-wide", fd, ctx, e)
+				reorder_wide(fd, &ctx->cfg, e->flags);
+		}
 	}
 
 	igt_subtest_group {
-- 
2.28.0

