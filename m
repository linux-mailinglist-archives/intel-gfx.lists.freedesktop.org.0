Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C75CD6FE683
	for <lists+intel-gfx@lfdr.de>; Wed, 10 May 2023 23:58:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A4E310E557;
	Wed, 10 May 2023 21:58:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1553410E557
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 May 2023 21:58:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683755899; x=1715291899;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=+pVmZFBstWNuyRFXpHYffKilzx21Nj16vuW4ceMtpmk=;
 b=Bn31pX8sKQvLHzdE6YnocYy6PsEEUa7YLIQL87vXYa1FydNNIiLPTdye
 jOP2CHTFJfHjHShzo7YHrjZ34icgn/Ed7jEtmMw9q5u6ErwDDPHyBRkRi
 3pQkO1m81Tk071wHBYOxM6uy4oqCczaGF63BdiKL9ZB9ZhZTChNE0WnDf
 CfmmQ9NDZK1SvGf84jX5BfaAH7Wm3VXPIVe7kLjh4J4hCHDzjotkTtllR
 hplq6+UO8g97VthJJ3WEl7M4Y2cOLP9aD57DB35aRyNJSsiWwo/MU87FF
 UUCNfP4ffPBz1SFHDjJ350ooadz1mCCQuuk9Lrj5DzxmoVCug1pxiM0jA w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10706"; a="352533933"
X-IronPort-AV: E=Sophos;i="5.99,265,1677571200"; d="scan'208";a="352533933"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2023 14:58:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10706"; a="702447501"
X-IronPort-AV: E=Sophos;i="5.99,265,1677571200"; d="scan'208";a="702447501"
Received: from msatwood-mobl.jf.intel.com ([10.24.12.141])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2023 14:58:14 -0700
From: Matt Atwood <matthew.s.atwood@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 10 May 2023 14:58:11 -0700
Message-Id: <20230510215811.650160-1-matthew.s.atwood@intel.com>
X-Mailer: git-send-email 2.40.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: RFC: Introduce Wa_14011282866
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

From: Tilak Tangudu <tilak.tangudu@intel.com>

Wa_14011282866 applies to RKL, ADL-S, ADL-P and TGL.

Allocate buffer pinned to GGTT and add WA to restore sampler power
context.

Bspec: 46247

Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
Signed-off-by: Tilak Tangudu <tilak.tangudu@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt_regs.h   |  5 ++
 drivers/gpu/drm/i915/gt/intel_rc6.c       | 88 +++++++++++++++++++++++
 drivers/gpu/drm/i915/gt/intel_rc6_types.h |  3 +
 3 files changed, 96 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
index b8a39c219b60..91cbdd24572f 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
@@ -48,6 +48,11 @@
 /* RCP unit config (Gen8+) */
 #define RCP_CONFIG				_MMIO(0xd08)
 
+#define CTX_WA_PTR				_MMIO(0x2058)
+#define CTX_WA_PTR_ADDR_MASK			REG_GENMASK(31, 12)
+#define CTX_WA_TYPE_MASK			REG_GENMASK(4, 3)
+#define CTX_WA_VALID				REG_BIT(0)
+
 #define RC6_LOCATION				_MMIO(0xd40)
 #define   RC6_CTX_IN_DRAM			(1 << 0)
 #define RC6_CTX_BASE				_MMIO(0xd48)
diff --git a/drivers/gpu/drm/i915/gt/intel_rc6.c b/drivers/gpu/drm/i915/gt/intel_rc6.c
index 908a3d0f2343..9589af2e8ca3 100644
--- a/drivers/gpu/drm/i915/gt/intel_rc6.c
+++ b/drivers/gpu/drm/i915/gt/intel_rc6.c
@@ -12,6 +12,7 @@
 #include "i915_vgpu.h"
 #include "intel_engine_regs.h"
 #include "intel_gt.h"
+#include "intel_gpu_commands.h"
 #include "intel_gt_pm.h"
 #include "intel_gt_regs.h"
 #include "intel_pcode.h"
@@ -38,6 +39,7 @@
  * require higher latency to switch to and wake up.
  */
 
+#define RC6_CTX_WA_BB_SIZE (PAGE_SIZE)
 static struct intel_gt *rc6_to_gt(struct intel_rc6 *rc6)
 {
 	return container_of(rc6, struct intel_gt, rc6);
@@ -53,8 +55,86 @@ static struct drm_i915_private *rc6_to_i915(struct intel_rc6 *rc)
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
+	obj = i915_gem_object_create_shmem(i915, RC6_CTX_WA_BB_SIZE);
+	if (IS_ERR(obj))
+		return PTR_ERR(obj);
+
+	vma = i915_vma_instance(obj, &gt->ggtt->vm, NULL);
+	if (IS_ERR(vma)) {
+		err = PTR_ERR(vma);
+		goto err;
+	}
+	rc6->vma = vma;
+	i915_gem_ww_ctx_init(&ww, true);
+retry:
+	err = i915_gem_object_lock(rc6->vma->obj, &ww);
+	if (!err)
+		err = i915_ggtt_pin(rc6->vma, &ww, 0, PIN_HIGH);
+	if (err)
+		goto err_ww_fini;
+
+	batch = i915_gem_object_pin_map(rc6->vma->obj, I915_MAP_WB);
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
+static void rc6_wa_bb_restore_sampler_power_ctx(struct intel_rc6 *rc6)
+{
+	struct intel_uncore *uncore = rc6_to_uncore(rc6);
+	u32 *rc6_wa_bb;
+
+	if (!rc6->vma->obj)
+		return;
+
+	rc6_wa_bb = rc6->rc6_wa_bb;
+	*rc6_wa_bb++ = MI_NOOP;
+	*rc6_wa_bb++ = MI_LOAD_REGISTER_IMM(1) | MI_LRI_FORCE_POSTED;
+	*rc6_wa_bb++ = i915_mmio_reg_offset(GEN10_SAMPLER_MODE);
+	*rc6_wa_bb++ = _MASKED_BIT_ENABLE(ENABLE_SMALLPL);
+	*rc6_wa_bb++ = MI_NOOP;
+	*rc6_wa_bb++ = MI_BATCH_BUFFER_END;
+
+	i915_gem_object_flush_map(rc6->vma->obj);
+
+	intel_uncore_write(uncore, CTX_WA_PTR,
+			   REG_FIELD_PREP(CTX_WA_PTR_ADDR_MASK,
+					  i915_vma_offset(rc6->vma) & GENMASK(19, 0)) |
+			   CTX_WA_VALID);
+}
+
 static void gen11_rc6_enable(struct intel_rc6 *rc6)
 {
+	struct drm_i915_private *i915 = rc6_to_i915(rc6);
 	struct intel_gt *gt = rc6_to_gt(rc6);
 	struct intel_uncore *uncore = gt->uncore;
 	struct intel_engine_cs *engine;
@@ -103,6 +183,11 @@ static void gen11_rc6_enable(struct intel_rc6 *rc6)
 	intel_uncore_write_fw(uncore, GEN9_MEDIA_PG_IDLE_HYSTERESIS, 60);
 	intel_uncore_write_fw(uncore, GEN9_RENDER_PG_IDLE_HYSTERESIS, 60);
 
+	/* Wa_14011282866 Restore sampler power context */
+	if (IS_DG1(i915) || IS_ROCKETLAKE(i915) || IS_TIGERLAKE(i915) ||
+	    IS_ALDERLAKE_S(i915) || IS_ALDERLAKE_P(i915))
+		rc6_wa_bb_restore_sampler_power_ctx(rc6);
+
 	/* 3a: Enable RC6
 	 *
 	 * With GuCRC, we do not enable bit 31 of RC_CTL,
@@ -610,6 +695,9 @@ void intel_rc6_init(struct intel_rc6 *rc6)
 		err = chv_rc6_init(rc6);
 	else if (IS_VALLEYVIEW(i915))
 		err = vlv_rc6_init(rc6);
+	else if (IS_DG1(i915) || IS_ROCKETLAKE(i915) || IS_TIGERLAKE(i915) ||
+		 IS_ALDERLAKE_S(i915) || IS_ALDERLAKE_P(i915))
+		err = rc6_wa_bb_ctx_init(rc6);
 	else
 		err = 0;
 
diff --git a/drivers/gpu/drm/i915/gt/intel_rc6_types.h b/drivers/gpu/drm/i915/gt/intel_rc6_types.h
index cd4587098162..643fd4e839ad 100644
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
-- 
2.40.0

