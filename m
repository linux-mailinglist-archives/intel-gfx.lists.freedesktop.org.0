Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 666A613B6ED
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jan 2020 02:32:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D0546E81F;
	Wed, 15 Jan 2020 01:32:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 966546E81D
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Jan 2020 01:32:38 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Jan 2020 17:32:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,320,1574150400"; d="scan'208";a="305337586"
Received: from dceraolo-linux.fm.intel.com ([10.1.27.145])
 by orsmga001.jf.intel.com with ESMTP; 14 Jan 2020 17:32:38 -0800
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 14 Jan 2020 17:31:42 -0800
Message-Id: <20200115013143.34961-7-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200115013143.34961-1-daniele.ceraolospurio@intel.com>
References: <20200115013143.34961-1-daniele.ceraolospurio@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 6/7] drm/i915/guc: Start considering GuC
 submission a proper back-end
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

Now that we commit early to using GuC, we can start setting up the
engine for GuC submission during engine_init, instead of initializing it
for execlists submission first and updating it later. Note that the
change is still mostly cosmetic, since the new GuC submission setup
function internally calls execlists code, with the only differences being
part of the execlists-only setup being skipped and a different irq mask.

The GuC submission setup is expect to change and diverge from the
execlists one with the new GuC interface.

Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Cc: Michal Wajdeczko <michal.wajdeczko@intel.com>
Cc: John Harrison <John.C.Harrison@Intel.com>
Cc: Matthew Brost <matthew.brost@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_engine_cs.c     | 10 +++-
 drivers/gpu/drm/i915/gt/intel_lrc.c           | 42 ++++++++++-------
 drivers/gpu/drm/i915/gt/intel_lrc.h           |  2 +
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 47 ++++++++++++++-----
 .../gpu/drm/i915/gt/uc/intel_guc_submission.h |  4 +-
 5 files changed, 71 insertions(+), 34 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index f451ef376548..3e05d7b8c8a6 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -39,6 +39,8 @@
 #include "intel_reset.h"
 #include "intel_ring.h"
 
+#include "uc/intel_guc_submission.h"
+
 /* Haswell does have the CXT_SIZE register however it does not appear to be
  * valid. Now, docs explain in dwords what is in the context object. The full
  * size is 70720 bytes, however, the power context and execlist context will
@@ -766,7 +768,9 @@ int intel_engines_init(struct intel_gt *gt)
 	enum intel_engine_id id;
 	int err;
 
-	if (HAS_EXECLISTS(gt->i915))
+	if (intel_uc_uses_guc_submission(&gt->uc))
+		setup = intel_guc_submission_setup;
+	else if (HAS_EXECLISTS(gt->i915))
 		setup = intel_execlists_submission_setup;
 	else
 		setup = intel_ring_submission_setup;
@@ -1303,7 +1307,9 @@ static void intel_engine_print_registers(struct intel_engine_cs *engine,
 		drm_printf(m, "\tIPEHR: 0x%08x\n", ENGINE_READ(engine, IPEHR));
 	}
 
-	if (HAS_EXECLISTS(dev_priv)) {
+	if (intel_engine_in_guc_submission_mode(engine)) {
+		/* nothing to print yet */
+	} else if (HAS_EXECLISTS(dev_priv)) {
 		struct i915_request * const *port, *rq;
 		const u32 *hws =
 			&engine->status_page.addr[I915_HWS_CSB_BUF0_INDEX];
diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index 9e430590fb3a..ffb61e513c51 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -2941,7 +2941,7 @@ static void lrc_destroy_wa_ctx(struct intel_engine_cs *engine)
 
 typedef u32 *(*wa_bb_func_t)(struct intel_engine_cs *engine, u32 *batch);
 
-static int intel_init_workaround_bb(struct intel_engine_cs *engine)
+void intel_logical_ring_init_workaround_bb(struct intel_engine_cs *engine)
 {
 	struct i915_ctx_workarounds *wa_ctx = &engine->wa_ctx;
 	struct i915_wa_ctx_bb *wa_bb[2] = { &wa_ctx->indirect_ctx,
@@ -2953,12 +2953,12 @@ static int intel_init_workaround_bb(struct intel_engine_cs *engine)
 	int ret;
 
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
@@ -2973,13 +2973,13 @@ static int intel_init_workaround_bb(struct intel_engine_cs *engine)
 		break;
 	default:
 		MISSING_CASE(INTEL_GEN(engine->i915));
-		return 0;
+		return;
 	}
 
 	ret = lrc_setup_wa_ctx(engine);
 	if (ret) {
 		DRM_DEBUG_DRIVER("Failed to setup context WA page: %d\n", ret);
-		return ret;
+		goto out;
 	}
 
 	page = i915_gem_object_get_dirty_page(wa_ctx->vma->obj, 0);
@@ -3008,7 +3008,16 @@ static int intel_init_workaround_bb(struct intel_engine_cs *engine)
 	if (ret)
 		lrc_destroy_wa_ctx(engine);
 
-	return ret;
+out:
+	/*
+	 * We continue even if we fail to initialize WA batch
+	 * because we only expect rare glitches but nothing
+	 * critical to prevent us from using GPU
+	 */
+	if (ret)
+		DRM_ERROR("WA batch buffer initialization failed\n");
+
+	return;
 }
 
 static void enable_execlists(struct intel_engine_cs *engine)
@@ -3974,6 +3983,14 @@ static void rcs_submission_override(struct intel_engine_cs *engine)
 	}
 }
 
+void intel_execlists_submission_vfuncs(struct intel_engine_cs *engine)
+{
+	logical_ring_default_vfuncs(engine);
+
+	if (engine->class == RENDER_CLASS)
+		rcs_submission_override(engine);
+}
+
 int intel_execlists_submission_setup(struct intel_engine_cs *engine)
 {
 	struct intel_engine_execlists * const execlists = &engine->execlists;
@@ -3986,19 +4003,10 @@ int intel_execlists_submission_setup(struct intel_engine_cs *engine)
 	timer_setup(&engine->execlists.timer, execlists_timeslice, 0);
 	timer_setup(&engine->execlists.preempt, execlists_preempt, 0);
 
-	logical_ring_default_vfuncs(engine);
+	intel_execlists_submission_vfuncs(engine);
 	logical_ring_default_irqs(engine);
 
-	if (engine->class == RENDER_CLASS)
-		rcs_submission_override(engine);
-
-	if (intel_init_workaround_bb(engine))
-		/*
-		 * We continue even if we fail to initialize WA batch
-		 * because we only expect rare glitches but nothing
-		 * critical to prevent us from using GPU
-		 */
-		DRM_ERROR("WA batch buffer initialization failed\n");
+	intel_logical_ring_init_workaround_bb(engine);
 
 	if (HAS_LOGICAL_RING_ELSQ(i915)) {
 		execlists->submit_reg = uncore->regs +
diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.h b/drivers/gpu/drm/i915/gt/intel_lrc.h
index dfbc214e14f5..354bb900da68 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.h
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.h
@@ -80,9 +80,11 @@ enum {
 };
 
 /* Logical Rings */
+void intel_logical_ring_init_workaround_bb(struct intel_engine_cs *engine);
 void intel_logical_ring_cleanup(struct intel_engine_cs *engine);
 
 int intel_execlists_submission_setup(struct intel_engine_cs *engine);
+void intel_execlists_submission_vfuncs(struct intel_engine_cs *engine);
 
 /* Logical Ring Contexts */
 /* At the start of the context image is its per-process HWS page */
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
index 1beaa77f9bb6..b6fecead9697 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
@@ -605,21 +605,47 @@ static void guc_set_default_submission(struct intel_engine_cs *engine)
 
 	engine->flags &= ~I915_ENGINE_SUPPORTS_STATS;
 	engine->flags |= I915_ENGINE_NEEDS_BREADCRUMB_TASKLET;
+}
+
+static inline void guc_default_irqs(struct intel_engine_cs *engine)
+{
+	/*
+	 * Pre-gen11 irqs share registers across engines and therefore need a
+	 * shift, but we don't support GuC submission pre-gen11 so we don't
+	 * bother.
+	 */
+	GEM_BUG_ON(INTEL_GEN(engine->i915) < 11);
 
 	/*
-	 * For the breadcrumb irq to work we need the interrupts to stay
-	 * enabled. However, on all platforms on which we'll have support for
-	 * GuC submission we don't allow disabling the interrupts at runtime, so
-	 * we're always safe with the current flow.
+	 * We're emulating execlists but we don't get the ctx switch interrupt,
+	 * so we instead use the user interrupt to re-schedule the tasklet and
+	 * therefore need to keep it enabled.
+	 * We should be able to drop this with the new interface after we remove
+	 * the execlists emulation.
 	 */
-	GEM_BUG_ON(engine->irq_enable || engine->irq_disable);
+	engine->irq_keep_mask = GT_RENDER_USER_INTERRUPT;
+}
+
+int intel_guc_submission_setup(struct intel_engine_cs *engine)
+{
+	GEM_BUG_ON(!intel_uc_uses_guc_submission(&engine->gt->uc));
+
+	tasklet_init(&engine->execlists.tasklet,
+		     guc_submission_tasklet, (unsigned long)engine);
+
+	/* XXX: still mirroring execlists. Will diverge with new interface */
+	intel_execlists_submission_vfuncs(engine);
+	engine->set_default_submission = guc_set_default_submission;
+
+	guc_default_irqs(engine);
+	intel_logical_ring_init_workaround_bb(engine);
+
+	return 0;
 }
 
 void intel_guc_submission_enable(struct intel_guc *guc)
 {
 	struct intel_gt *gt = guc_to_gt(guc);
-	struct intel_engine_cs *engine;
-	enum intel_engine_id id;
 
 	/*
 	 * We're using GuC work items for submitting work through GuC. Since
@@ -630,7 +656,7 @@ void intel_guc_submission_enable(struct intel_guc *guc)
 	 * and it is guaranteed that it will remove the work item from the
 	 * queue before our request is completed.
 	 */
-	BUILD_BUG_ON(ARRAY_SIZE(engine->execlists.inflight) *
+	BUILD_BUG_ON(EXECLIST_MAX_PORTS *
 		     sizeof(struct guc_wq_item) *
 		     I915_NUM_ENGINES > GUC_WQ_SIZE);
 
@@ -639,11 +665,6 @@ void intel_guc_submission_enable(struct intel_guc *guc)
 
 	/* Take over from manual control of ELSP (execlists) */
 	guc_interrupts_capture(gt);
-
-	for_each_engine(engine, gt, id) {
-		engine->set_default_submission = guc_set_default_submission;
-		engine->set_default_submission(engine);
-	}
 }
 
 void intel_guc_submission_disable(struct intel_guc *guc)
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.h
index e402a2932592..696b03e3c515 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.h
@@ -16,8 +16,8 @@ int intel_guc_submission_init(struct intel_guc *guc);
 void intel_guc_submission_enable(struct intel_guc *guc);
 void intel_guc_submission_disable(struct intel_guc *guc);
 void intel_guc_submission_fini(struct intel_guc *guc);
-int intel_guc_preempt_work_create(struct intel_guc *guc);
-void intel_guc_preempt_work_destroy(struct intel_guc *guc);
+
+int intel_guc_submission_setup(struct intel_engine_cs *engine);
 bool intel_engine_in_guc_submission_mode(const struct intel_engine_cs *engine);
 
 #endif
-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
