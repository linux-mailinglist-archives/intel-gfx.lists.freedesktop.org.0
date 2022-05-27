Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0884753660A
	for <lists+intel-gfx@lfdr.de>; Fri, 27 May 2022 18:34:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3715F10E5FB;
	Fri, 27 May 2022 16:33:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ADBB710E05E;
 Fri, 27 May 2022 16:33:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1653669232; x=1685205232;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=w1vONPN47xOyyKOpmudwJX89R2SeyDcWwVuN5Syjuwc=;
 b=C/4L25ShSYKj7TLFpZmBXDky6Mnu1/fORlfxbW1042o7G96xvg1AvV5h
 4Xz3e4rTuK9jJRFana9e35EshX9TZmQSmi9EfcBJP38+n9Oxdz/amntX5
 1UPScYbiGq70Oz5HDWnOE5o2bPMpTIdSFT7Rb03BhXyF4uQC9Jp78cjIp
 Rld02KnCWzXiYGl0faa78sS2RLbdh6iNtYxy8R7EI7hvhXGdBx2L6YxMk
 4VEmjqWMBV4rxfenXtXDJHT5qpH6XI6SnrbRbggibud8joyI7pLevXkZ5
 CQEVW/e7WNfzsJQakuibtSWhqrbY2597EKHbdDzb59VYb3xqwI9YpKx6W g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10360"; a="262138729"
X-IronPort-AV: E=Sophos;i="5.91,256,1647327600"; d="scan'208";a="262138729"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2022 09:33:52 -0700
X-IronPort-AV: E=Sophos;i="5.91,256,1647327600"; d="scan'208";a="550291706"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2022 09:33:51 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 27 May 2022 09:33:48 -0700
Message-Id: <20220527163348.1936146-3-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.35.3
In-Reply-To: <20220527163348.1936146-1-matthew.d.roper@intel.com>
References: <20220527163348.1936146-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/pvc: Add initial PVC workarounds
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
Cc: dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Stuart Summers <stuart.summers@intel.com>

Bspec: 64027
Signed-off-by: Stuart Summers <stuart.summers@intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_engine_regs.h |  5 +-
 drivers/gpu/drm/i915/gt/intel_gt_regs.h     |  3 +-
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 61 ++++++++++++++++++---
 drivers/gpu/drm/i915/intel_pm.c             | 16 +++++-
 4 files changed, 73 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_regs.h b/drivers/gpu/drm/i915/gt/intel_engine_regs.h
index 75a0c55c5aa5..44de10cf7837 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_regs.h
+++ b/drivers/gpu/drm/i915/gt/intel_engine_regs.h
@@ -196,6 +196,7 @@
 #define RING_CTX_TIMESTAMP(base)		_MMIO((base) + 0x3a8) /* gen8+ */
 #define RING_PREDICATE_RESULT(base)		_MMIO((base) + 0x3b8)
 #define RING_FORCE_TO_NONPRIV(base, i)		_MMIO(((base) + 0x4D0) + (i) * 4)
+#define   RING_FORCE_TO_NONPRIV_DENY		REG_BIT(30)
 #define   RING_FORCE_TO_NONPRIV_ADDRESS_MASK	REG_GENMASK(25, 2)
 #define   RING_FORCE_TO_NONPRIV_ACCESS_RW	(0 << 28)    /* CFL+ & Gen11+ */
 #define   RING_FORCE_TO_NONPRIV_ACCESS_RD	(1 << 28)
@@ -208,7 +209,9 @@
 #define   RING_FORCE_TO_NONPRIV_RANGE_64	(3 << 0)
 #define   RING_FORCE_TO_NONPRIV_RANGE_MASK	(3 << 0)
 #define   RING_FORCE_TO_NONPRIV_MASK_VALID	\
-	(RING_FORCE_TO_NONPRIV_RANGE_MASK | RING_FORCE_TO_NONPRIV_ACCESS_MASK)
+	(RING_FORCE_TO_NONPRIV_RANGE_MASK | \
+	 RING_FORCE_TO_NONPRIV_ACCESS_MASK | \
+	 RING_FORCE_TO_NONPRIV_DENY)
 #define   RING_MAX_NONPRIV_SLOTS  12
 
 #define RING_EXECLIST_SQ_CONTENTS(base)		_MMIO((base) + 0x510)
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
index b4642dcc192f..58e9b464d564 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
@@ -1070,8 +1070,9 @@
 
 #define GEN10_CACHE_MODE_SS			_MMIO(0xe420)
 #define   ENABLE_EU_COUNT_FOR_TDL_FLUSH		REG_BIT(10)
-#define   ENABLE_PREFETCH_INTO_IC		REG_BIT(3)
+#define   DISABLE_ECC				REG_BIT(5)
 #define   FLOAT_BLEND_OPTIMIZATION_ENABLE	REG_BIT(4)
+#define   ENABLE_PREFETCH_INTO_IC		REG_BIT(3)
 
 #define EU_PERF_CNTL0				_MMIO(0xe458)
 #define EU_PERF_CNTL4				_MMIO(0xe45c)
diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 73b59ea6fd3b..a604bc7c0701 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -776,7 +776,9 @@ __intel_engine_init_ctx_wa(struct intel_engine_cs *engine,
 	if (engine->class != RENDER_CLASS)
 		goto done;
 
-	if (IS_DG2(i915))
+	if (IS_PONTEVECCHIO(i915))
+		; /* noop; none at this time */
+	else if (IS_DG2(i915))
 		dg2_ctx_workarounds_init(engine, wal);
 	else if (IS_XEHPSDV(i915))
 		; /* noop; none at this time */
@@ -1494,7 +1496,9 @@ gt_init_workarounds(struct intel_gt *gt, struct i915_wa_list *wal)
 {
 	struct drm_i915_private *i915 = gt->i915;
 
-	if (IS_DG2(i915))
+	if (IS_PONTEVECCHIO(i915))
+		; /* none yet */
+	else if (IS_DG2(i915))
 		dg2_gt_workarounds_init(gt, wal);
 	else if (IS_XEHPSDV(i915))
 		xehpsdv_gt_workarounds_init(gt, wal);
@@ -1924,6 +1928,32 @@ static void dg2_whitelist_build(struct intel_engine_cs *engine)
 	}
 }
 
+static void blacklist_trtt(struct intel_engine_cs *engine)
+{
+	struct i915_wa_list *w = &engine->whitelist;
+
+	/*
+	 * Prevent read/write access to [0x4400, 0x4600) which covers
+	 * the TRTT range across all engines. Note that normally userspace
+	 * cannot access the other engines' trtt control, but for simplicity
+	 * we cover the entire range on each engine.
+	 */
+	whitelist_reg_ext(w, _MMIO(0x4400),
+			  RING_FORCE_TO_NONPRIV_DENY |
+			  RING_FORCE_TO_NONPRIV_RANGE_64);
+	whitelist_reg_ext(w, _MMIO(0x4500),
+			  RING_FORCE_TO_NONPRIV_DENY |
+			  RING_FORCE_TO_NONPRIV_RANGE_64);
+}
+
+static void pvc_whitelist_build(struct intel_engine_cs *engine)
+{
+	allow_read_ctx_timestamp(engine);
+
+	/* Wa_16014440446:pvc */
+	blacklist_trtt(engine);
+}
+
 void intel_engine_init_whitelist(struct intel_engine_cs *engine)
 {
 	struct drm_i915_private *i915 = engine->i915;
@@ -1931,7 +1961,9 @@ void intel_engine_init_whitelist(struct intel_engine_cs *engine)
 
 	wa_init_start(w, "whitelist", engine->name);
 
-	if (IS_DG2(i915))
+	if (IS_PONTEVECCHIO(i915))
+		pvc_whitelist_build(engine);
+	else if (IS_DG2(i915))
 		dg2_whitelist_build(engine);
 	else if (IS_XEHPSDV(i915))
 		xehpsdv_whitelist_build(engine);
@@ -2041,9 +2073,6 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
 	struct drm_i915_private *i915 = engine->i915;
 
 	if (IS_DG2(i915)) {
-		/* Wa_14015227452:dg2 */
-		wa_masked_en(wal, GEN9_ROW_CHICKEN4, XEHP_DIS_BBL_SYSPIPE);
-
 		/* Wa_1509235366:dg2 */
 		wa_write_or(wal, GEN12_GAMCNTRL_CTRL, INVALIDATION_BROADCAST_MODE_DIS |
 			    GLOBAL_INVALIDATION_MODE);
@@ -2611,6 +2640,15 @@ xcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
 	}
 }
 
+static void
+ccs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
+{
+	if (IS_PVC_CT_STEP(engine->i915, STEP_A0, STEP_C0)) {
+		/* Wa_14014999345:pvc */
+		wa_masked_en(wal, GEN10_CACHE_MODE_SS, DISABLE_ECC);
+	}
+}
+
 /*
  * The workarounds in this function apply to shared registers in
  * the general render reset domain that aren't tied to a
@@ -2657,8 +2695,11 @@ general_render_compute_wa_init(struct intel_engine_cs *engine, struct i915_wa_li
 				GLOBAL_INVALIDATION_MODE);
 	}
 
-	if (IS_DG2(i915)) {
-		/* Wa_22014226127:dg2 */
+	if (IS_DG2(i915) || IS_PONTEVECCHIO(i915)) {
+		/* Wa_14015227452:dg2,pvc */
+		wa_masked_en(wal, GEN9_ROW_CHICKEN4, XEHP_DIS_BBL_SYSPIPE);
+
+		/* Wa_22014226127:dg2,pvc */
 		wa_write_or(wal, LSC_CHICKEN_BIT_0, DISABLE_D8_D16_COASLESCE);
 	}
 }
@@ -2679,7 +2720,9 @@ engine_init_workarounds(struct intel_engine_cs *engine, struct i915_wa_list *wal
 	if (engine->flags & I915_ENGINE_FIRST_RENDER_COMPUTE)
 		general_render_compute_wa_init(engine, wal);
 
-	if (engine->class == RENDER_CLASS)
+	if (engine->class == COMPUTE_CLASS)
+		ccs_engine_wa_init(engine, wal);
+	else if (engine->class == RENDER_CLASS)
 		rcs_engine_wa_init(engine, wal);
 	else
 		xcs_engine_wa_init(engine, wal);
diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index 42db41c8e3b3..7a3f023d39e9 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -7526,6 +7526,17 @@ static void dg2_init_clock_gating(struct drm_i915_private *i915)
 				 SGR_DIS | SGGI_DIS);
 }
 
+static void pvc_init_clock_gating(struct drm_i915_private *dev_priv)
+{
+	/* Wa_14012385139:pvc */
+	if (IS_PVC_BD_STEP(dev_priv, STEP_A0, STEP_B0))
+		intel_uncore_rmw(&dev_priv->uncore, XEHP_CLOCK_GATE_DIS, 0, SGR_DIS);
+
+	/* Wa_22010954014:pvc */
+	if (IS_PVC_BD_STEP(dev_priv, STEP_A0, STEP_B0))
+		intel_uncore_rmw(&dev_priv->uncore, XEHP_CLOCK_GATE_DIS, 0, SGSI_SIDECLK_DIS);
+}
+
 static void cnp_init_clock_gating(struct drm_i915_private *dev_priv)
 {
 	if (!HAS_PCH_CNP(dev_priv))
@@ -7942,6 +7953,7 @@ static const struct drm_i915_clock_gating_funcs platform##_clock_gating_funcs =
 	.init_clock_gating = platform##_init_clock_gating,		\
 }
 
+CG_FUNCS(pvc);
 CG_FUNCS(dg2);
 CG_FUNCS(xehpsdv);
 CG_FUNCS(adlp);
@@ -7980,7 +7992,9 @@ CG_FUNCS(nop);
  */
 void intel_init_clock_gating_hooks(struct drm_i915_private *dev_priv)
 {
-	if (IS_DG2(dev_priv))
+	if (IS_PONTEVECCHIO(dev_priv))
+		dev_priv->clock_gating_funcs = &pvc_clock_gating_funcs;
+	else if (IS_DG2(dev_priv))
 		dev_priv->clock_gating_funcs = &dg2_clock_gating_funcs;
 	else if (IS_XEHPSDV(dev_priv))
 		dev_priv->clock_gating_funcs = &xehpsdv_clock_gating_funcs;
-- 
2.35.3

