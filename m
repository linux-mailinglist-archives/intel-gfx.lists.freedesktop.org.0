Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2062B2F418A
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Jan 2021 03:14:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3AF5489B95;
	Wed, 13 Jan 2021 02:14:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5B16D89B96
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Jan 2021 02:14:02 +0000 (UTC)
IronPort-SDR: kOR57EaNJd5nuEh3Y34B3cuGmsy6t1pptp3H60H4b4yKCGtUUmztQs8URdI5wgtWupDvXGpjmS
 9iFubnaD67Ew==
X-IronPort-AV: E=McAfee;i="6000,8403,9862"; a="165815290"
X-IronPort-AV: E=Sophos;i="5.79,343,1602572400"; d="scan'208";a="165815290"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2021 18:14:02 -0800
IronPort-SDR: aIoevYwsxA/E0nIhIgeM1vbk0TC6hfyUbvxoA5D6mBzBuGjrVK2PpBZuZVpIFEZquSk/lx+87C
 ikPbRndvcC1Q==
X-IronPort-AV: E=Sophos;i="5.79,343,1602572400"; d="scan'208";a="464739739"
Received: from dceraolo-linux.fm.intel.com ([10.1.27.145])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2021 18:14:02 -0800
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 12 Jan 2021 18:12:35 -0800
Message-Id: <20210113021236.8164-4-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210113021236.8164-1-daniele.ceraolospurio@intel.com>
References: <20210113021236.8164-1-daniele.ceraolospurio@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 3/4] drm/i915/guc: init engine directly in
 GuC submission mode
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

Instead of starting the engine in execlists submission mode and then
switching to GuC, start directly in GuC submission mode. The initial
setup functions have been copied over from the execlists code
and simplified by removing the execlists submission-specific parts.

v2: remove unneeded unexpected starting state check (Chris)

Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Cc: Matthew Brost <matthew.brost@intel.com>
Cc: John Harrison <john.c.harrison@intel.com>
Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_engine_cs.c     |   5 +-
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 224 +++++++++++++++++-
 .../gpu/drm/i915/gt/uc/intel_guc_submission.h |   1 +
 3 files changed, 219 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index f62303bf80b8..6b4483b72c3f 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -40,6 +40,7 @@
 #include "intel_lrc_reg.h"
 #include "intel_reset.h"
 #include "intel_ring.h"
+#include "uc/intel_guc_submission.h"
 
 /* Haswell does have the CXT_SIZE register however it does not appear to be
  * valid. Now, docs explain in dwords what is in the context object. The full
@@ -907,7 +908,9 @@ int intel_engines_init(struct intel_gt *gt)
 	enum intel_engine_id id;
 	int err;
 
-	if (HAS_EXECLISTS(gt->i915))
+	if (intel_uc_uses_guc_submission(&gt->uc))
+		setup = intel_guc_submission_setup;
+	else if (HAS_EXECLISTS(gt->i915))
 		setup = intel_execlists_submission_setup;
 	else
 		setup = intel_ring_submission_setup;
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
index d4f88d2379e9..29d58e1c9694 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
@@ -6,12 +6,15 @@
 #include <linux/circ_buf.h>
 
 #include "gem/i915_gem_context.h"
+#include "gt/gen8_engine_cs.h"
+#include "gt/intel_breadcrumbs.h"
 #include "gt/intel_context.h"
 #include "gt/intel_engine_pm.h"
 #include "gt/intel_execlists_submission.h" /* XXX */
 #include "gt/intel_gt.h"
 #include "gt/intel_gt_pm.h"
 #include "gt/intel_lrc.h"
+#include "gt/intel_mocs.h"
 #include "gt/intel_ring.h"
 
 #include "intel_guc_submission.h"
@@ -55,6 +58,8 @@
  *
  */
 
+#define GUC_REQUEST_SIZE 64 /* bytes */
+
 static inline struct i915_priolist *to_priolist(struct rb_node *rb)
 {
 	return rb_entry(rb, struct i915_priolist, node);
@@ -446,6 +451,134 @@ static void guc_interrupts_release(struct intel_gt *gt)
 	intel_uncore_rmw(uncore, GEN11_VCS_VECS_INTR_ENABLE, 0, dmask);
 }
 
+static int guc_context_alloc(struct intel_context *ce)
+{
+	return lrc_alloc(ce, ce->engine);
+}
+
+static int guc_context_pre_pin(struct intel_context *ce,
+				     struct i915_gem_ww_ctx *ww,
+				     void **vaddr)
+{
+	return lrc_pre_pin(ce, ce->engine, ww, vaddr);
+}
+
+static int guc_context_pin(struct intel_context *ce, void *vaddr)
+{
+	return lrc_pin(ce, ce->engine, vaddr);
+}
+
+static const struct intel_context_ops guc_context_ops = {
+	.alloc = guc_context_alloc,
+
+	.pre_pin = guc_context_pre_pin,
+	.pin = guc_context_pin,
+	.unpin = lrc_unpin,
+	.post_unpin = lrc_post_unpin,
+
+	.enter = intel_context_enter_engine,
+	.exit = intel_context_exit_engine,
+
+	.reset = lrc_reset,
+	.destroy = lrc_destroy,
+};
+
+static int guc_request_alloc(struct i915_request *request)
+{
+	int ret;
+
+	GEM_BUG_ON(!intel_context_is_pinned(request->context));
+
+	/*
+	 * Flush enough space to reduce the likelihood of waiting after
+	 * we start building the request - in which case we will just
+	 * have to repeat work.
+	 */
+	request->reserved_space += GUC_REQUEST_SIZE;
+
+	/*
+	 * Note that after this point, we have committed to using
+	 * this request as it is being used to both track the
+	 * state of engine initialisation and liveness of the
+	 * golden renderstate above. Think twice before you try
+	 * to cancel/unwind this request now.
+	 */
+
+	/* Unconditionally invalidate GPU caches and TLBs. */
+	ret = request->engine->emit_flush(request, EMIT_INVALIDATE);
+	if (ret)
+		return ret;
+
+	request->reserved_space -= GUC_REQUEST_SIZE;
+	return 0;
+}
+
+static void sanitize_hwsp(struct intel_engine_cs *engine)
+{
+	struct intel_timeline *tl;
+
+	list_for_each_entry(tl, &engine->status_page.timelines, engine_link)
+		intel_timeline_reset_seqno(tl);
+}
+
+static void guc_sanitize(struct intel_engine_cs *engine)
+{
+	/*
+	 * Poison residual state on resume, in case the suspend didn't!
+	 *
+	 * We have to assume that across suspend/resume (or other loss
+	 * of control) that the contents of our pinned buffers has been
+	 * lost, replaced by garbage. Since this doesn't always happen,
+	 * let's poison such state so that we more quickly spot when
+	 * we falsely assume it has been preserved.
+	 */
+	if (IS_ENABLED(CONFIG_DRM_I915_DEBUG_GEM))
+		memset(engine->status_page.addr, POISON_INUSE, PAGE_SIZE);
+
+	/*
+	 * The kernel_context HWSP is stored in the status_page. As above,
+	 * that may be lost on resume/initialisation, and so we need to
+	 * reset the value in the HWSP.
+	 */
+	sanitize_hwsp(engine);
+
+	/* And scrub the dirty cachelines for the HWSP */
+	clflush_cache_range(engine->status_page.addr, PAGE_SIZE);
+}
+
+static void setup_hwsp(struct intel_engine_cs *engine)
+{
+	intel_engine_set_hwsp_writemask(engine, ~0u); /* HWSTAM */
+
+	ENGINE_WRITE_FW(engine,
+			RING_HWS_PGA,
+			i915_ggtt_offset(engine->status_page.vma));
+}
+
+static void start_engine(struct intel_engine_cs *engine)
+{
+	ENGINE_WRITE_FW(engine,
+			RING_MODE_GEN7,
+			_MASKED_BIT_ENABLE(GEN11_GFX_DISABLE_LEGACY_MODE));
+
+	ENGINE_WRITE_FW(engine, RING_MI_MODE, _MASKED_BIT_DISABLE(STOP_RING));
+	ENGINE_POSTING_READ(engine, RING_MI_MODE);
+}
+
+static int guc_resume(struct intel_engine_cs *engine)
+{
+	assert_forcewakes_active(engine->uncore, FORCEWAKE_ALL);
+
+	intel_mocs_init_engine(engine);
+
+	intel_breadcrumbs_reset(engine->breadcrumbs);
+
+	setup_hwsp(engine);
+	start_engine(engine);
+
+	return 0;
+}
+
 static void guc_set_default_submission(struct intel_engine_cs *engine)
 {
 	/*
@@ -483,23 +616,94 @@ static void guc_set_default_submission(struct intel_engine_cs *engine)
 	GEM_BUG_ON(engine->irq_enable || engine->irq_disable);
 }
 
-void intel_guc_submission_enable(struct intel_guc *guc)
+static void guc_release(struct intel_engine_cs *engine)
 {
-	struct intel_gt *gt = guc_to_gt(guc);
-	struct intel_engine_cs *engine;
-	enum intel_engine_id id;
+	engine->sanitize = NULL; /* no longer in control, nothing to sanitize */
 
-	guc_stage_desc_init(guc);
+	tasklet_kill(&engine->execlists.tasklet);
 
-	/* Take over from manual control of ELSP (execlists) */
-	guc_interrupts_capture(gt);
+	intel_engine_cleanup_common(engine);
+	lrc_fini_wa_ctx(engine);
+}
+
+static void guc_default_vfuncs(struct intel_engine_cs *engine)
+{
+	/* Default vfuncs which can be overriden by each engine. */
+
+	engine->resume = guc_resume;
+
+	engine->cops = &guc_context_ops;
+	engine->request_alloc = guc_request_alloc;
+
+	engine->emit_flush = gen8_emit_flush_xcs;
+	engine->emit_init_breadcrumb = gen8_emit_init_breadcrumb;
+	engine->emit_fini_breadcrumb = gen8_emit_fini_breadcrumb_xcs;
+	if (INTEL_GEN(engine->i915) >= 12) {
+		engine->emit_fini_breadcrumb = gen12_emit_fini_breadcrumb_xcs;
+		engine->emit_flush = gen12_emit_flush_xcs;
+	}
+	engine->set_default_submission = guc_set_default_submission;
+}
 
-	for_each_engine(engine, gt, id) {
-		engine->set_default_submission = guc_set_default_submission;
-		engine->set_default_submission(engine);
+static void rcs_submission_override(struct intel_engine_cs *engine)
+{
+	switch (INTEL_GEN(engine->i915)) {
+	case 12:
+		engine->emit_flush = gen12_emit_flush_rcs;
+		engine->emit_fini_breadcrumb = gen12_emit_fini_breadcrumb_rcs;
+		break;
+	case 11:
+		engine->emit_flush = gen11_emit_flush_rcs;
+		engine->emit_fini_breadcrumb = gen11_emit_fini_breadcrumb_rcs;
+		break;
+	default:
+		engine->emit_flush = gen8_emit_flush_rcs;
+		engine->emit_fini_breadcrumb = gen8_emit_fini_breadcrumb_rcs;
+		break;
 	}
 }
 
+static inline void guc_default_irqs(struct intel_engine_cs *engine)
+{
+	engine->irq_keep_mask = GT_RENDER_USER_INTERRUPT;
+}
+
+int intel_guc_submission_setup(struct intel_engine_cs *engine)
+{
+	struct drm_i915_private *i915 = engine->i915;
+
+	/*
+	 * The setup relies on several assumptions (e.g. irqs always enabled)
+	 * that are only valid on gen11+
+	 */
+	GEM_BUG_ON(INTEL_GEN(i915) < 11);
+
+	tasklet_init(&engine->execlists.tasklet,
+		     guc_submission_tasklet, (unsigned long)engine);
+
+	guc_default_vfuncs(engine);
+	guc_default_irqs(engine);
+
+	if (engine->class == RENDER_CLASS)
+		rcs_submission_override(engine);
+
+	lrc_init_wa_ctx(engine);
+
+	/* Finally, take ownership and responsibility for cleanup! */
+	engine->sanitize = guc_sanitize;
+	engine->release = guc_release;
+
+	return 0;
+}
+
+void intel_guc_submission_enable(struct intel_guc *guc)
+{
+	guc_stage_desc_init(guc);
+
+	/* Take over from manual control of ELSP (execlists) */
+	guc_interrupts_capture(guc_to_gt(guc));
+}
+
 void intel_guc_submission_disable(struct intel_guc *guc)
 {
 	struct intel_gt *gt = guc_to_gt(guc);
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.h
index 4cf9d3e50263..5f7b9e6347d0 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.h
@@ -19,6 +19,7 @@ void intel_guc_submission_disable(struct intel_guc *guc);
 void intel_guc_submission_fini(struct intel_guc *guc);
 int intel_guc_preempt_work_create(struct intel_guc *guc);
 void intel_guc_preempt_work_destroy(struct intel_guc *guc);
+int intel_guc_submission_setup(struct intel_engine_cs *engine);
 bool intel_engine_in_guc_submission_mode(const struct intel_engine_cs *engine);
 
 static inline bool intel_guc_submission_is_supported(struct intel_guc *guc)
-- 
2.29.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
