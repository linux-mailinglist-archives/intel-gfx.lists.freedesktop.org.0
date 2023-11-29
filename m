Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CA3A57FE175
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Nov 2023 21:58:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F52210E67D;
	Wed, 29 Nov 2023 20:58:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 978B710E67A
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Nov 2023 20:58:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701291513; x=1732827513;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=eJsvghcmhBu27mP4CcUqfObXU/ko4CIKvV32AEz/EJc=;
 b=LjNhoRqqnuMxmjj/nY8Hz6nzxAO8/r7Be8UiufG8St3sHmuWzPk79UiW
 uBLkwSIavrvYj/U5vydDQWo4XwBKyPoIQI5oE+mxf+z4CMke2rIZhn7hT
 eDAs2t5U7OMxHD+BxilGiw8OavbYzg7bxZAjs6CPrKd9wvsAA56tq4qis
 FIMJhiKFQAjULhMSSZRxtM4ItJ1xtUKjK7fu5w9TGV7EDerKbGqJSpuw5
 oTZUi/gdl9LCaZ6GXPZn8AjIcNPZC/FeqYwtISWDaemgJP/E87e9bBSJM
 xSO5h+aZp0pquQxl8pEuzok3gEdK18OGB3PsofkJEVAdBoh5JRpwp2UdO A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10909"; a="211739"
X-IronPort-AV: E=Sophos;i="6.04,237,1695711600"; 
   d="scan'208";a="211739"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Nov 2023 12:51:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10909"; a="892575231"
X-IronPort-AV: E=Sophos;i="6.04,237,1695711600"; d="scan'208";a="892575231"
Received: from msatwood-mobl.jf.intel.com ([10.24.12.122])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Nov 2023 12:51:25 -0800
From: Matt Atwood <matthew.s.atwood@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 29 Nov 2023 12:51:22 -0800
Message-Id: <20231129205122.3464299-2-matthew.s.atwood@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20231129205122.3464299-1-matthew.s.atwood@intel.com>
References: <20231129205122.3464299-1-matthew.s.atwood@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [Patch v3 2/2] drm/i915: Introduce Wa_1401127433
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

Wa_14011274333 applies to gen 12.0->12.55. There are regions of
registers that restore to default values on resume from rc6. The
hardware has a built in register (CTX_WA_PTR), that can point to a
region of memory full of commands to restore non default values on rc6
resume.

Based off patch by Tilak Tangudu.

v2: Use correct lineage number, more generically apply workarounds for
all registers impacted, move workaround to gt/intel_workarounds.c
(MattR)

v3: Correctly use intel_engine_cs, intel_engine_regs, use
reg_in_range_table() for wa registers impacted search, move the majority
of functional changes into intel_workarounds.c, free up pinned memory on
engine tear down, be more verbose in commit message and wa comments, use
generic function for platforms applied to. (MattR)

Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_engine_cs.c    |   2 +
 drivers/gpu/drm/i915/gt/intel_engine_regs.h  |   4 +
 drivers/gpu/drm/i915/gt/intel_engine_types.h |   3 +
 drivers/gpu/drm/i915/gt/intel_workarounds.c  | 114 +++++++++++++++++++
 drivers/gpu/drm/i915/gt/intel_workarounds.h  |   1 +
 5 files changed, 124 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index 40687806d22a6..d3628462bfb3e 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -1573,6 +1573,8 @@ void intel_engine_cleanup_common(struct intel_engine_cs *engine)
 	intel_wa_list_free(&engine->ctx_wa_list);
 	intel_wa_list_free(&engine->wa_list);
 	intel_wa_list_free(&engine->whitelist);
+
+	intel_ctx_wa_bb_fini(engine);
 }
 
 /**
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_regs.h b/drivers/gpu/drm/i915/gt/intel_engine_regs.h
index a8eac59e37793..becb466f5910d 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_regs.h
+++ b/drivers/gpu/drm/i915/gt/intel_engine_regs.h
@@ -251,6 +251,10 @@
 #define GEN11_VECS_SFC_USAGE(base)		_MMIO((base) + 0x2014)
 #define   GEN11_VECS_SFC_USAGE_BIT		(1 << 0)
 
+#define CTX_WA_PTR(base)			_MMIO((base) + 0x2058)
+#define   CTX_WA_PTR_ADDR_MASK			REG_GENMASK(31, 12)
+#define   CTX_WA_VALID				REG_BIT(0)
+
 #define RING_HWS_PGA_GEN6(base)	_MMIO((base) + 0x2080)
 
 #define GEN12_HCP_SFC_LOCK_STATUS(base)		_MMIO((base) + 0x2914)
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_types.h b/drivers/gpu/drm/i915/gt/intel_engine_types.h
index 960e6be2042fe..95ff3e1adf11e 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_engine_types.h
@@ -388,6 +388,9 @@ struct intel_engine_cs {
 	u32 context_size;
 	u32 mmio_base;
 
+	u32 *ctx_wa_bb;
+	struct i915_vma *vma;
+
 	struct intel_engine_tlb_inv tlb_inv;
 
 	/*
diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 9bc0654efdc0c..1d33555039725 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -5,6 +5,8 @@
 
 #include "i915_drv.h"
 #include "i915_reg.h"
+#include "i915_perf.h"
+#include "gem/i915_gem_internal.h"
 #include "intel_context.h"
 #include "intel_engine_pm.h"
 #include "intel_engine_regs.h"
@@ -14,6 +16,7 @@
 #include "intel_gt_print.h"
 #include "intel_gt_regs.h"
 #include "intel_ring.h"
+#include "intel_uncore.h"
 #include "intel_workarounds.h"
 
 /**
@@ -2985,6 +2988,105 @@ general_render_compute_wa_init(struct intel_engine_cs *engine, struct i915_wa_li
 	}
 }
 
+static const struct i915_range tdl_power_ctx[] = {
+	{ .start = 0xe100, .end = 0xe100 },
+	{ .start = 0xe180, .end = 0xe194 },
+	{},
+};
+
+static void
+emit_ctx_wa_bb(struct intel_engine_cs *engine, struct i915_wa_list *wal)
+{
+	const struct i915_wa *wa;
+	struct intel_uncore *uncore = engine->gt->uncore;
+	int i, count = 0;
+	u32 *cs = engine->ctx_wa_bb;
+
+	*cs++ = MI_LOAD_REGISTER_IMM(1);
+	for (i = 0, wa = wal->list; i < wal->count; i++, wa++) {
+		if (reg_in_range_table(i915_mmio_reg_offset(wa->mcr_reg), tdl_power_ctx)) {
+			*cs++ = i915_mmio_reg_offset(wa->mcr_reg);
+			*cs++ = wa->set;
+			count++;
+		}
+	}
+	*cs++ = MI_BATCH_BUFFER_END;
+
+	if (count != 0) {
+		i915_gem_object_flush_map(engine->vma->obj);
+		intel_uncore_write(uncore, CTX_WA_PTR(engine->mmio_base),
+				   REG_FIELD_PREP(CTX_WA_PTR_ADDR_MASK,
+						  i915_vma_offset(engine->vma) & GENMASK(31, 12)) |
+				   CTX_WA_VALID);
+	}
+}
+
+static int ctx_wa_bb_init(struct intel_engine_cs *engine)
+{
+	struct drm_i915_private *i915 = engine->i915;
+	struct intel_gt *gt = engine->gt;
+	struct drm_i915_gem_object *obj;
+	struct i915_vma *vma;
+	void *batch;
+	struct i915_gem_ww_ctx ww;
+	int err;
+
+	obj = i915_gem_object_create_internal(i915, PAGE_SIZE);
+	if (IS_ERR(obj))
+		return PTR_ERR(obj);
+
+	vma = i915_vma_instance(obj, &gt->ggtt->vm, NULL);
+	if (IS_ERR(vma)) {
+		err = PTR_ERR(vma);
+		goto err;
+	}
+
+	engine->vma = vma;
+	i915_gem_ww_ctx_init(&ww, true);
+
+retry:
+	err = i915_gem_object_lock(obj, &ww);
+	if (!err)
+		err = i915_ggtt_pin(engine->vma, &ww, 0, PIN_HIGH);
+	if (err)
+		goto err_ww_fini;
+
+	batch = i915_gem_object_pin_map(obj, I915_MAP_WB);
+	if (IS_ERR(batch)) {
+		err = PTR_ERR(batch);
+		goto err_unpin;
+	}
+	engine->ctx_wa_bb = batch;
+
+	return 0;
+
+err_unpin:
+	i915_vma_unpin(engine->vma);
+
+err_ww_fini:
+	if (err == -EDEADLK) {
+		err = i915_gem_ww_ctx_backoff(&ww);
+		if (!err)
+			goto retry;
+	}
+
+	i915_gem_ww_ctx_fini(&ww);
+	i915_vma_put(engine->vma);
+
+err:
+	i915_gem_object_put(obj);
+	return err;
+}
+
+void intel_ctx_wa_bb_fini(struct intel_engine_cs *engine)
+{
+	i915_vma_unpin_and_release(&engine->vma, I915_VMA_RELEASE_MAP);
+}
+
+#define NEEDS_CTX_WABB(engine) ( \
+	IS_GFX_GT_IP_RANGE(engine->gt, IP_VER(12, 0), IP_VER(12, 55)) && \
+	engine->class == RENDER_CLASS)
+
 static void
 engine_init_workarounds(struct intel_engine_cs *engine, struct i915_wa_list *wal)
 {
@@ -3007,6 +3109,18 @@ engine_init_workarounds(struct intel_engine_cs *engine, struct i915_wa_list *wal
 		rcs_engine_wa_init(engine, wal);
 	else
 		xcs_engine_wa_init(engine, wal);
+
+	/* Wa_14011274333
+	 * After the workaround list has been populated some platforms have
+	 * regions of addresses that do not retain their values after resuming
+	 * from rc6. For these platforms, add all workarounds in these regions
+	 * to a batch buffer, this batch buffer is stored in memory and
+	 * executes on every rc6 resume.
+	 */
+	if (NEEDS_CTX_WABB(engine)) {
+		ctx_wa_bb_init(engine);
+		emit_ctx_wa_bb(engine, wal);
+	}
 }
 
 void intel_engine_init_workarounds(struct intel_engine_cs *engine)
diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.h b/drivers/gpu/drm/i915/gt/intel_workarounds.h
index 9beaab77c7f0b..fe8946b0c7b67 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.h
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.h
@@ -36,4 +36,5 @@ void intel_engine_apply_workarounds(struct intel_engine_cs *engine);
 int intel_engine_verify_workarounds(struct intel_engine_cs *engine,
 				    const char *from);
 
+void intel_ctx_wa_bb_fini(struct intel_engine_cs *engine);
 #endif
-- 
2.40.1

