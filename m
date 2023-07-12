Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 13DDB751488
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jul 2023 01:34:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A357B10E5F8;
	Wed, 12 Jul 2023 23:34:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8687510E5F8
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Jul 2023 23:34:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689204864; x=1720740864;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=MiqWlZZNhPC0UN7B8QxIFS1OtByMxk386C5A3AUj4Zo=;
 b=XcMAqwwqAnVMAJQa2YRyAG+dVfgX1GaH95Rre+wXj1WPei9wI9qiTeHA
 vMe7nHXiA1c7aVIKc+jYG0JdrErGhZb8VOE+ZWalWlMv/qLRfTGRkDCUv
 /p+Xa2VUHnGCF5KdO5Gp66pw3+r+c5NA57fwEjgFxFgB4h2KOestLthYv
 7NRMpPs1+q8V/okGis/+Ju+9mxUDXKxHhgXZ9pN/9gSkRhp+Fq6y82Kwp
 diyIOSel6XLxw3YNZ+yGyIaMlJ0hY8C4XCcDyUWzs1fUaLlxmpL9NKGe/
 zXK/GtEMyLyJDdeRrXoHP1DqVzWSdzV5tA7w34xgPf+K+iz2kWrIOoXLl w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10769"; a="395834542"
X-IronPort-AV: E=Sophos;i="6.01,200,1684825200"; d="scan'208";a="395834542"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jul 2023 16:34:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10769"; a="1052397768"
X-IronPort-AV: E=Sophos;i="6.01,200,1684825200"; d="scan'208";a="1052397768"
Received: from yli47-mobl.ccr.corp.intel.com (HELO
 msatwood-mobl.hsd1.or.comcast.net) ([10.251.18.172])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jul 2023 16:34:22 -0700
From: Matt Atwood <matthew.s.atwood@intel.com>
To: intel-gfx@lists.freedesktop.org,
	matthew.d.roper@intel.com
Date: Wed, 12 Jul 2023 16:34:15 -0700
Message-Id: <20230712233415.49012-1-matthew.s.atwood@intel.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: Introduce Wa_14011274333
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

Wa_14011274333 applies to RKL, ADL-S, ADL-P and TGL. ALlocate buffer
pinned to GGTT and add WA to restore impacted registers.

v2: use correct lineage number, more generically apply workarounds for
all registers impacted, move workaround to gt/intel_workarounds.c
(MattR)

Based off patch by Tilak Tangudu.

Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt_regs.h     |  5 ++
 drivers/gpu/drm/i915/gt/intel_rc6.c         | 63 +++++++++++++++++++++
 drivers/gpu/drm/i915/gt/intel_rc6_types.h   |  3 +
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 40 +++++++++++++
 4 files changed, 111 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
index 718cb2c80f79e..eaee35ecbc8d3 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
@@ -83,6 +83,11 @@
 #define   MTL_MCR_GROUPID			REG_GENMASK(11, 8)
 #define   MTL_MCR_INSTANCEID			REG_GENMASK(3, 0)
 
+#define CTX_WA_PTR				_MMIO(0x2058)
+#define  CTX_WA_PTR_ADDR_MASK			REG_GENMASK(31,12)
+#define  CTX_WA_TYPE_MASK			REG_GENMASK(4,3)
+#define  CTX_WA_VALID				REG_BIT(0)
+
 #define IPEIR_I965				_MMIO(0x2064)
 #define IPEHR_I965				_MMIO(0x2068)
 
diff --git a/drivers/gpu/drm/i915/gt/intel_rc6.c b/drivers/gpu/drm/i915/gt/intel_rc6.c
index 58bb1c55294c9..6baa341814da7 100644
--- a/drivers/gpu/drm/i915/gt/intel_rc6.c
+++ b/drivers/gpu/drm/i915/gt/intel_rc6.c
@@ -14,6 +14,7 @@
 #include "intel_gt.h"
 #include "intel_gt_pm.h"
 #include "intel_gt_regs.h"
+#include "intel_gpu_commands.h"
 #include "intel_pcode.h"
 #include "intel_rc6.h"
 
@@ -53,6 +54,65 @@ static struct drm_i915_private *rc6_to_i915(struct intel_rc6 *rc)
 	return rc6_to_gt(rc)->i915;
 }
 
+static int rc6_wa_bb_ctx_init(struct intel_rc6 *rc6)
+{
+	struct drm_i915_private *i915 = rc6_to_i915(rc6);
+	struct intel_gt *gt = rc6_to_gt(rc6);
+	struct drm_i915_gem_object *obj;
+	struct i915_vma *vma;
+	void *batch;
+	struct i915_gem_ww_ctx ww;
+	int err;
+
+	obj = i915_gem_object_create_shmem(i915, PAGE_SIZE);
+	if (IS_ERR(obj))
+		return PTR_ERR(obj);
+
+	vma = i915_vma_instance(obj, &gt->ggtt->vm, NULL);
+	if (IS_ERR(vma)){
+		err = PTR_ERR(vma);
+		goto err;
+	}
+	rc6->vma=vma;
+	i915_gem_ww_ctx_init(&ww, true);
+retry:
+	err = i915_gem_object_lock(obj, &ww);
+	if (!err)
+		err = i915_ggtt_pin(rc6->vma, &ww, 0, PIN_HIGH);
+	if (err)
+		goto err_ww_fini;
+
+	batch = i915_gem_object_pin_map(obj, I915_MAP_WB);
+	if (IS_ERR(batch)) {
+		err = PTR_ERR(batch);
+		goto err_unpin;
+	}
+	rc6->rc6_wa_bb = batch;
+	return 0;
+err_unpin:
+	if (err)
+		i915_vma_unpin(rc6->vma);
+err_ww_fini:
+	if (err == -EDEADLK) {
+		err = i915_gem_ww_ctx_backoff(&ww);
+		if (!err)
+			goto retry;
+	}
+	i915_gem_ww_ctx_fini(&ww);
+
+	if (err)
+		i915_vma_put(rc6->vma);
+err:
+	i915_gem_object_put(obj);
+	return err;
+}
+
+void rc6_wa_bb_ctx_wa_fini(struct intel_rc6 *rc6)
+{
+	i915_vma_unpin(rc6->vma);
+	i915_vma_put(rc6->vma);
+}
+
 static void gen11_rc6_enable(struct intel_rc6 *rc6)
 {
 	struct intel_gt *gt = rc6_to_gt(rc6);
@@ -616,6 +676,9 @@ void intel_rc6_init(struct intel_rc6 *rc6)
 		err = chv_rc6_init(rc6);
 	else if (IS_VALLEYVIEW(i915))
 		err = vlv_rc6_init(rc6);
+	else if ((GRAPHICS_VER_FULL(i915) >= IP_VER(12, 0)) &&
+		 (GRAPHICS_VER_FULL(i915) <= IP_VER(12, 70)))
+		err = rc6_wa_bb_ctx_init(rc6);
 	else
 		err = 0;
 
diff --git a/drivers/gpu/drm/i915/gt/intel_rc6_types.h b/drivers/gpu/drm/i915/gt/intel_rc6_types.h
index cd4587098162a..643fd4e839ad4 100644
--- a/drivers/gpu/drm/i915/gt/intel_rc6_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_rc6_types.h
@@ -33,6 +33,9 @@ struct intel_rc6 {
 
 	struct drm_i915_gem_object *pctx;
 
+	u32 *rc6_wa_bb;
+	struct i915_vma *vma;
+
 	bool supported : 1;
 	bool enabled : 1;
 	bool manual : 1;
diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 4d2dece960115..d20afb318d857 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -14,6 +14,7 @@
 #include "intel_gt_regs.h"
 #include "intel_ring.h"
 #include "intel_workarounds.h"
+#include "intel_rc6.h"
 
 /**
  * DOC: Hardware workarounds
@@ -3132,6 +3133,41 @@ general_render_compute_wa_init(struct intel_engine_cs *engine, struct i915_wa_li
 			   true);
 }
 
+static void
+populate_wa_bb_ctx(struct intel_engine_cs *engine, struct i915_wa_list *wal)
+{
+	struct intel_rc6 *rc6 = &engine->gt->rc6;
+	struct intel_uncore *uncore = engine->gt->uncore;
+	const struct i915_wa *wa;
+	int i;
+	u32 *rc6_wa_bb;
+
+	if (!rc6->vma->obj) return;
+
+	rc6_wa_bb = rc6->rc6_wa_bb;
+	for (i = 0, wa = wal->list; i < wal->count; i++, wa++) {
+		if (i915_mmio_reg_offset(wa->mcr_reg) ==
+		    i915_mmio_reg_offset(GEN8_HALF_SLICE_CHICKEN1) ||
+		    ((i915_mmio_reg_offset(wa->mcr_reg) >=
+		      i915_mmio_reg_offset(HALF_SLICE_CHICKEN2)) &&
+		     (i915_mmio_reg_offset(wa->mcr_reg) <=
+		      i915_mmio_reg_offset(GEN9_HALF_SLICE_CHICKEN7)))) {
+			*rc6_wa_bb++ = MI_NOOP;
+			*rc6_wa_bb++ = MI_LOAD_REGISTER_IMM(1);
+			*rc6_wa_bb++ = i915_mmio_reg_offset(wa->mcr_reg);
+			*rc6_wa_bb++ = wa->set;
+			*rc6_wa_bb++ = MI_NOOP;
+                }
+	}
+	*rc6_wa_bb++ = MI_BATCH_BUFFER_END;
+
+	i915_gem_object_flush_map(rc6->vma->obj);
+	intel_uncore_write(uncore, CTX_WA_PTR,
+			   REG_FIELD_PREP(CTX_WA_PTR_ADDR_MASK,
+					  i915_vma_offset(rc6->vma) & GENMASK(19, 0)) |
+			   CTX_WA_VALID);
+}
+
 static void
 engine_init_workarounds(struct intel_engine_cs *engine, struct i915_wa_list *wal)
 {
@@ -3154,6 +3190,10 @@ engine_init_workarounds(struct intel_engine_cs *engine, struct i915_wa_list *wal
 		rcs_engine_wa_init(engine, wal);
 	else
 		xcs_engine_wa_init(engine, wal);
+
+	if ((GRAPHICS_VER_FULL(engine->i915) >= IP_VER(12, 0)) &&
+	    (GRAPHICS_VER_FULL(engine->i915) <= IP_VER(12, 70)))
+		populate_wa_bb_ctx(engine, wal);
 }
 
 void intel_engine_init_workarounds(struct intel_engine_cs *engine)
-- 
2.40.1

