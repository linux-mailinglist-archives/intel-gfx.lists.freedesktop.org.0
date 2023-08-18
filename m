Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FF6A78139E
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Aug 2023 21:43:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 90C1710E0ED;
	Fri, 18 Aug 2023 19:42:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2BE4A10E0ED
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Aug 2023 19:42:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692387778; x=1723923778;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=3SZ6JR9GxEqBwRaY6OYndq5T5qXRFJb7xYSXSaFBlH8=;
 b=C0fInuIfJ42y68aUAICRWuvrlzOIpP95Vf83QSUZd6hGW3ogvrM0xDl1
 fInXLEnHtEeK5wrx9adRwWCQD4Ujlwoy7Tfq+ZWm374/KiYJFTP7RSvNd
 8XB0V7MJ65ztCL7UCesEtvgCW6sebsRw3/YUaTN8I6beAvoGrstB1hXy4
 +oLhsRNziCZgVyql8PEwKIbq+usYVI1XoJYEcK3EG8O3iLMVm1S8s2pjF
 QY9PwmSLz1y4Dr5eFH3o9IosdSLrFa/DK3BO/gKcWr1h7F90iqWb12SWO
 D2CR76kX0HHYGxrPWwlft4to2kBVpYHqn23KD1XjZtqaiktJ6EMGj5VAi w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10806"; a="375959536"
X-IronPort-AV: E=Sophos;i="6.01,184,1684825200"; d="scan'208";a="375959536"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2023 12:42:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10806"; a="728714037"
X-IronPort-AV: E=Sophos;i="6.01,184,1684825200"; d="scan'208";a="728714037"
Received: from esavax-mobl.ger.corp.intel.com (HELO intel.com) ([10.249.41.4])
 by orsmga007-auth.jf.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 18 Aug 2023 12:42:56 -0700
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Jonathan Cavitt <jonathan.cavitt@intel.com>
Date: Fri, 18 Aug 2023 21:42:46 +0200
Message-Id: <20230818194249.1014022-1-andi.shyti@linux.intel.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/3] drm/i915: Create a blitter context for GGTT
 updates
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
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Nirmoy Das <nirmoy.das@intel.com>

Create a separate blitter context if a platform requires
GGTT updates using MI_UPDATE_GTT blitter command.

Subsequent patch will introduce methods to update
GGTT using this blitter context and MI_UPDATE_GTT blitter
command.

Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_engine.h       |  4 ++
 drivers/gpu/drm/i915/gt/intel_engine_cs.c    | 44 +++++++++++++++++++-
 drivers/gpu/drm/i915/gt/intel_engine_types.h |  3 ++
 drivers/gpu/drm/i915/gt/intel_gtt.c          |  4 ++
 drivers/gpu/drm/i915/gt/intel_gtt.h          |  2 +
 5 files changed, 56 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine.h b/drivers/gpu/drm/i915/gt/intel_engine.h
index b58c30ac8ef02..ee36db2fdaa7c 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine.h
+++ b/drivers/gpu/drm/i915/gt/intel_engine.h
@@ -170,6 +170,8 @@ intel_write_status_page(struct intel_engine_cs *engine, int reg, u32 value)
 #define I915_GEM_HWS_SEQNO		0x40
 #define I915_GEM_HWS_SEQNO_ADDR		(I915_GEM_HWS_SEQNO * sizeof(u32))
 #define I915_GEM_HWS_MIGRATE		(0x42 * sizeof(u32))
+#define I915_GEM_HWS_GGTT_BLIT		0x46
+#define I915_GEM_HWS_GGTT_BLIT_ADDR	(I915_GEM_HWS_GGTT_BLIT * sizeof(u32))
 #define I915_GEM_HWS_PXP		0x60
 #define I915_GEM_HWS_PXP_ADDR		(I915_GEM_HWS_PXP * sizeof(u32))
 #define I915_GEM_HWS_GSC		0x62
@@ -356,4 +358,6 @@ u64 intel_clamp_preempt_timeout_ms(struct intel_engine_cs *engine, u64 value);
 u64 intel_clamp_stop_timeout_ms(struct intel_engine_cs *engine, u64 value);
 u64 intel_clamp_timeslice_duration_ms(struct intel_engine_cs *engine, u64 value);
 
+void intel_engine_blitter_context_set_ready(struct intel_gt *gt, bool ready);
+bool intel_engine_blitter_context_ready(struct intel_gt *gt);
 #endif /* _INTEL_RINGBUFFER_H_ */
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index ee15486fed0da..9871ee5ab754b 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -27,6 +27,7 @@
 #include "intel_gt_mcr.h"
 #include "intel_gt_pm.h"
 #include "intel_gt_requests.h"
+#include "intel_gtt.h"
 #include "intel_lrc.h"
 #include "intel_lrc_reg.h"
 #include "intel_reset.h"
@@ -1419,6 +1420,34 @@ void intel_engine_destroy_pinned_context(struct intel_context *ce)
 	intel_context_put(ce);
 }
 
+void intel_engine_blitter_context_set_ready(struct intel_gt *gt, bool ready)
+{
+	struct intel_engine_cs *engine = gt->engine[BCS0];
+
+	if (engine && engine->blitter_context)
+		atomic_set(&engine->blitter_context_ready, ready ? 1 : 0);
+}
+
+bool intel_engine_blitter_context_ready(struct intel_gt *gt)
+{
+	struct intel_engine_cs *engine = gt->engine[BCS0];
+
+	if (engine)
+		return atomic_read(&engine->blitter_context_ready) == 1;
+
+	return false;
+}
+
+static struct intel_context *
+create_ggtt_blitter_context(struct intel_engine_cs *engine)
+{
+	static struct lock_class_key kernel;
+
+	/* MI_UPDATE_GTT can insert upto 512 PTE entries so get a bigger ring */
+	return intel_engine_create_pinned_context(engine, engine->gt->vm, SZ_512K,
+						  I915_GEM_HWS_GGTT_BLIT_ADDR,
+						  &kernel, "ggtt_blitter_context");
+}
 static struct intel_context *
 create_kernel_context(struct intel_engine_cs *engine)
 {
@@ -1442,7 +1471,7 @@ create_kernel_context(struct intel_engine_cs *engine)
  */
 static int engine_init_common(struct intel_engine_cs *engine)
 {
-	struct intel_context *ce;
+	struct intel_context *ce, *bce = NULL;
 	int ret;
 
 	engine->set_default_submission(engine);
@@ -1458,6 +1487,15 @@ static int engine_init_common(struct intel_engine_cs *engine)
 	ce = create_kernel_context(engine);
 	if (IS_ERR(ce))
 		return PTR_ERR(ce);
+	/*
+	 * Create a separate pinned context for GGTT update using blitter
+	 * if a platform require such service.
+	 */
+	if (i915_ggtt_require_blitter(engine->i915) && engine->id == BCS0) {
+		bce = create_ggtt_blitter_context(engine);
+		if (IS_ERR(bce))
+			return PTR_ERR(bce);
+	}
 
 	ret = measure_breadcrumb_dw(ce);
 	if (ret < 0)
@@ -1465,6 +1503,7 @@ static int engine_init_common(struct intel_engine_cs *engine)
 
 	engine->emit_fini_breadcrumb_dw = ret;
 	engine->kernel_context = ce;
+	engine->blitter_context = bce;
 
 	return 0;
 
@@ -1537,6 +1576,9 @@ void intel_engine_cleanup_common(struct intel_engine_cs *engine)
 
 	if (engine->kernel_context)
 		intel_engine_destroy_pinned_context(engine->kernel_context);
+	if (engine->blitter_context)
+		intel_engine_destroy_pinned_context(engine->blitter_context);
+
 
 	GEM_BUG_ON(!llist_empty(&engine->barrier_tasks));
 	cleanup_status_page(engine);
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_types.h b/drivers/gpu/drm/i915/gt/intel_engine_types.h
index e99a6fa03d453..62095c0d8783d 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_engine_types.h
@@ -415,6 +415,9 @@ struct intel_engine_cs {
 	struct llist_head barrier_tasks;
 
 	struct intel_context *kernel_context; /* pinned */
+	struct intel_context *blitter_context; /* pinned, only for BCS0 */
+	/* mark the blitter engine's availability status */
+	atomic_t blitter_context_ready;
 
 	/**
 	 * pinned_contexts_list: List of pinned contexts. This list is only
diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.c b/drivers/gpu/drm/i915/gt/intel_gtt.c
index 13944a14ea2d1..9c77c97670fea 100644
--- a/drivers/gpu/drm/i915/gt/intel_gtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gtt.c
@@ -21,6 +21,10 @@
 #include "intel_gt_regs.h"
 #include "intel_gtt.h"
 
+bool i915_ggtt_require_blitter(struct drm_i915_private *i915)
+{
+	return IS_METEORLAKE(i915);
+}
 
 static bool intel_ggtt_update_needs_vtd_wa(struct drm_i915_private *i915)
 {
diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.h b/drivers/gpu/drm/i915/gt/intel_gtt.h
index 4d6296cdbcfdd..9710eb031fb2c 100644
--- a/drivers/gpu/drm/i915/gt/intel_gtt.h
+++ b/drivers/gpu/drm/i915/gt/intel_gtt.h
@@ -688,4 +688,6 @@ static inline struct sgt_dma {
 	return (struct sgt_dma){ sg, addr, addr + sg_dma_len(sg) };
 }
 
+bool i915_ggtt_require_blitter(struct drm_i915_private *i915);
+
 #endif
-- 
2.40.1

