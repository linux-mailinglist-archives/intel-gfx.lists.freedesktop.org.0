Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 78A0F2EFF33
	for <lists+intel-gfx@lfdr.de>; Sat,  9 Jan 2021 12:45:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2D1536E926;
	Sat,  9 Jan 2021 11:44:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F17B16E926
 for <intel-gfx@lists.freedesktop.org>; Sat,  9 Jan 2021 11:44:56 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23546583-1500050 
 for <intel-gfx@lists.freedesktop.org>; Sat, 09 Jan 2021 11:44:53 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sat,  9 Jan 2021 11:44:53 +0000
Message-Id: <20210109114453.27798-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [CI] drm/i915/gt: Exercise lrc_wa_ctx initialisation
 failure
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

Inject a fault into lrc_init_wa_ctx() to ensure that we can tolerate a
failure to construct the workarounds.

v2: Avoid mentioning an error for fault-injection, other CI will
complain about the dmesg spam.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Matt Roper <matthew.d.roper@intel.com>
Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
---
 .../drm/i915/gt/intel_execlists_submission.c  |  8 +----
 drivers/gpu/drm/i915/gt/intel_lrc.c           | 34 +++++++++++--------
 drivers/gpu/drm/i915/gt/intel_lrc.h           |  2 +-
 3 files changed, 22 insertions(+), 22 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
index d857d168adcc..4d7ac81303bb 100644
--- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
@@ -3244,13 +3244,7 @@ int intel_execlists_submission_setup(struct intel_engine_cs *engine)
 	if (engine->class == RENDER_CLASS)
 		rcs_submission_override(engine);
 
-	if (lrc_init_wa_ctx(engine))
-		/*
-		 * We continue even if we fail to initialize WA batch
-		 * because we only expect rare glitches but nothing
-		 * critical to prevent us from using GPU
-		 */
-		drm_err(&i915->drm, "WA batch buffer initialization failed\n");
+	lrc_init_wa_ctx(engine);
 
 	if (HAS_LOGICAL_RING_ELSQ(i915)) {
 		execlists->submit_reg = uncore->regs +
diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index 703d9ecc3f7e..7956cdaf6b5f 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -1460,7 +1460,7 @@ void lrc_fini_wa_ctx(struct intel_engine_cs *engine)
 
 typedef u32 *(*wa_bb_func_t)(struct intel_engine_cs *engine, u32 *batch);
 
-int lrc_init_wa_ctx(struct intel_engine_cs *engine)
+void lrc_init_wa_ctx(struct intel_engine_cs *engine)
 {
 	struct i915_ctx_workarounds *wa_ctx = &engine->wa_ctx;
 	struct i915_wa_ctx_bb *wa_bb[] = {
@@ -1469,15 +1469,15 @@ int lrc_init_wa_ctx(struct intel_engine_cs *engine)
 	wa_bb_func_t wa_bb_fn[ARRAY_SIZE(wa_bb)];
 	void *batch, *batch_ptr;
 	unsigned int i;
-	int ret;
+	int err;
 
 	if (engine->class != RENDER_CLASS)
-		return 0;
+		return;
 
 	switch (INTEL_GEN(engine->i915)) {
 	case 12:
 	case 11:
-		return 0;
+		return;
 	case 10:
 		wa_bb_fn[0] = gen10_init_indirectctx_bb;
 		wa_bb_fn[1] = NULL;
@@ -1492,14 +1492,20 @@ int lrc_init_wa_ctx(struct intel_engine_cs *engine)
 		break;
 	default:
 		MISSING_CASE(INTEL_GEN(engine->i915));
-		return 0;
+		return;
 	}
 
-	ret = lrc_setup_wa_ctx(engine);
-	if (ret) {
-		drm_dbg(&engine->i915->drm,
-			"Failed to setup context WA page: %d\n", ret);
-		return ret;
+	err = lrc_setup_wa_ctx(engine);
+	if (err) {
+		/*
+		 * We continue even if we fail to initialize WA batch
+		 * because we only expect rare glitches but nothing
+		 * critical to prevent us from using GPU
+		 */
+		drm_err(&engine->i915->drm,
+			"Ignoring context switch w/a allocation error:%d\n",
+			err);
+		return;
 	}
 
 	batch = i915_gem_object_pin_map(wa_ctx->vma->obj, I915_MAP_WB);
@@ -1514,7 +1520,7 @@ int lrc_init_wa_ctx(struct intel_engine_cs *engine)
 		wa_bb[i]->offset = batch_ptr - batch;
 		if (GEM_DEBUG_WARN_ON(!IS_ALIGNED(wa_bb[i]->offset,
 						  CACHELINE_BYTES))) {
-			ret = -EINVAL;
+			err = -EINVAL;
 			break;
 		}
 		if (wa_bb_fn[i])
@@ -1525,10 +1531,10 @@ int lrc_init_wa_ctx(struct intel_engine_cs *engine)
 
 	__i915_gem_object_flush_map(wa_ctx->vma->obj, 0, batch_ptr - batch);
 	__i915_gem_object_release_map(wa_ctx->vma->obj);
-	if (ret)
-		lrc_fini_wa_ctx(engine);
 
-	return ret;
+	/* Verify that we can handle failure to setup the wa_ctx */
+	if (err || i915_inject_probe_error(engine->i915, -ENODEV))
+		lrc_fini_wa_ctx(engine);
 }
 
 static void st_update_runtime_underflow(struct intel_context *ce, s32 dt)
diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.h b/drivers/gpu/drm/i915/gt/intel_lrc.h
index 4e006853e815..7f697845c4cf 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.h
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.h
@@ -26,7 +26,7 @@ struct intel_ring;
 #define LRC_PPHWSP_SCRATCH		0x34
 #define LRC_PPHWSP_SCRATCH_ADDR		(LRC_PPHWSP_SCRATCH * sizeof(u32))
 
-int lrc_init_wa_ctx(struct intel_engine_cs *engine);
+void lrc_init_wa_ctx(struct intel_engine_cs *engine);
 void lrc_fini_wa_ctx(struct intel_engine_cs *engine);
 
 int lrc_alloc(struct intel_context *ce,
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
