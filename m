Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 661967879C1
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Aug 2023 22:56:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 71DCA10E142;
	Thu, 24 Aug 2023 20:56:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0B6C510E142
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Aug 2023 20:56:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692910601; x=1724446601;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=NDOBw6zU9jvF77kPY2k7t+N9iGN6ZehFwSkIyhaMXOw=;
 b=NzbnXFOd6vxWzclPF2zDtmarRUFIFuvTz6zK2UAOXSe7Vu+N2rnJQzdZ
 ZP7vqA8LmyXbsIkG4cQ4LAz4XmcllKKjnQihO5vSCEE7uVu+JumUtDqo1
 x47t4fSr2fyzDhx47QDWCvFi4yqq/JRZeD17+fRodVNSfKuHMQ2kvi3xB
 08NTuyeTKB2yI7zer4IJLebhzgdDtStPNQOY/aYdqhK4mzIFoOyk+hNxT
 XyPWpLBqTt9gw8ySdM2oxjZGTGKXSHwPnqqx5aoDGGc6JhUXerLVmsUuK
 ygstz4RTmfATK0CYxDGiw9UkaMleza4m8ETukg2LSZtT/XaRqHUzPMmre g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10812"; a="438501551"
X-IronPort-AV: E=Sophos;i="6.02,195,1688454000"; d="scan'208";a="438501551"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2023 13:56:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10812"; a="772239229"
X-IronPort-AV: E=Sophos;i="6.02,195,1688454000"; d="scan'208";a="772239229"
Received: from szeng-desk.jf.intel.com ([10.165.21.149])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2023 13:56:40 -0700
From: Oak Zeng <oak.zeng@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 24 Aug 2023 17:03:22 -0400
Message-Id: <20230824210324.1752862-1-oak.zeng@intel.com>
X-Mailer: git-send-email 2.26.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/3] drm/i915: Create a bind context for GGTT
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
Cc: matthew.d.roper@intel.com, andi.shyti@intel.com,
 chris.p.wilson@linux.intel.com, nirmoy.das@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Nirmoy Das <nirmoy.das@intel.com>

Create a separate blitter context if a platform requires
GGTT updates using MI_UPDATE_GTT blitter command.

Subsequent patch will introduce methods to update
GGTT using this blitter context and MI_UPDATE_GTT blitter
command.

v2: Fix a typo in comment. (Oak)
v3: s/blitter_context/bind_context/g (Chris)

Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
Signed-off-by: Oak Zeng <oak.zeng@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_engine.h       |  4 ++
 drivers/gpu/drm/i915/gt/intel_engine_cs.c    | 44 +++++++++++++++++++-
 drivers/gpu/drm/i915/gt/intel_engine_types.h |  3 ++
 drivers/gpu/drm/i915/gt/intel_gtt.c          |  4 ++
 drivers/gpu/drm/i915/gt/intel_gtt.h          |  2 +
 5 files changed, 56 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine.h b/drivers/gpu/drm/i915/gt/intel_engine.h
index b58c30ac8ef0..c3b2ac8bad08 100644
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
 
+void intel_engine_bind_context_set_ready(struct intel_gt *gt, bool ready);
+bool intel_engine_bind_context_ready(struct intel_gt *gt);
 #endif /* _INTEL_RINGBUFFER_H_ */
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index dfb69fc977a0..d316f9eb914a 100644
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
 
+void intel_engine_bind_context_set_ready(struct intel_gt *gt, bool ready)
+{
+	struct intel_engine_cs *engine = gt->engine[BCS0];
+
+	if (engine && engine->bind_context)
+		atomic_set(&engine->bind_context_ready, ready ? 1 : 0);
+}
+
+bool intel_engine_bind_context_ready(struct intel_gt *gt)
+{
+	struct intel_engine_cs *engine = gt->engine[BCS0];
+
+	if (engine)
+		return atomic_read(&engine->bind_context_ready) == 1;
+
+	return false;
+}
+
+static struct intel_context *
+create_ggtt_bind_context(struct intel_engine_cs *engine)
+{
+	static struct lock_class_key kernel;
+
+	/* MI_UPDATE_GTT can insert up to 512 PTE entries so get a bigger ring */
+	return intel_engine_create_pinned_context(engine, engine->gt->vm, SZ_512K,
+						  I915_GEM_HWS_GGTT_BLIT_ADDR,
+						  &kernel, "ggtt_bind_context");
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
+		bce = create_ggtt_bind_context(engine);
+		if (IS_ERR(bce))
+			return PTR_ERR(bce);
+	}
 
 	ret = measure_breadcrumb_dw(ce);
 	if (ret < 0)
@@ -1465,6 +1503,7 @@ static int engine_init_common(struct intel_engine_cs *engine)
 
 	engine->emit_fini_breadcrumb_dw = ret;
 	engine->kernel_context = ce;
+	engine->bind_context = bce;
 
 	return 0;
 
@@ -1537,6 +1576,9 @@ void intel_engine_cleanup_common(struct intel_engine_cs *engine)
 
 	if (engine->kernel_context)
 		intel_engine_destroy_pinned_context(engine->kernel_context);
+	if (engine->bind_context)
+		intel_engine_destroy_pinned_context(engine->bind_context);
+
 
 	GEM_BUG_ON(!llist_empty(&engine->barrier_tasks));
 	cleanup_status_page(engine);
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_types.h b/drivers/gpu/drm/i915/gt/intel_engine_types.h
index e99a6fa03d45..a1fea76698f3 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_engine_types.h
@@ -415,6 +415,9 @@ struct intel_engine_cs {
 	struct llist_head barrier_tasks;
 
 	struct intel_context *kernel_context; /* pinned */
+	struct intel_context *bind_context; /* pinned, only for BCS0 */
+	/* mark the blitter engine's availability status */
+	atomic_t bind_context_ready;
 
 	/**
 	 * pinned_contexts_list: List of pinned contexts. This list is only
diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.c b/drivers/gpu/drm/i915/gt/intel_gtt.c
index 13944a14ea2d..9c77c97670fe 100644
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
index 4d6296cdbcfd..9710eb031fb2 100644
--- a/drivers/gpu/drm/i915/gt/intel_gtt.h
+++ b/drivers/gpu/drm/i915/gt/intel_gtt.h
@@ -688,4 +688,6 @@ static inline struct sgt_dma {
 	return (struct sgt_dma){ sg, addr, addr + sg_dma_len(sg) };
 }
 
+bool i915_ggtt_require_blitter(struct drm_i915_private *i915);
+
 #endif
-- 
2.26.3

