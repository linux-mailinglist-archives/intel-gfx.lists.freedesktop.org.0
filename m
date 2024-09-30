Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A7BD98A370
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Sep 2024 14:50:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ECF8A10E061;
	Mon, 30 Sep 2024 12:50:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EWFhzm9/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B242E10E061
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Sep 2024 12:50:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727700603; x=1759236603;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=pqxbg0TIwL9zs+YsIbqPdb9CTxEy9bHkirYGvFZRe0w=;
 b=EWFhzm9/iLZt52bdpkVJK8AcHkmIqKk2LGAGX9ZYQQD9XRv9dVIivYQ5
 dFhcS6LdK1dF72wBLEA5nBgKsbbdB6WfA7A67dZo1xk9j6K3wvUZVTgfZ
 EenlhCuZycoxtlrJOxBcqqixH6EITqOOHiascUH5jRg5VUfjO+LPE0WrL
 mTqihBBI2EK/wloqQhf726B3e6v7V4OTeQFrKQZ3Zb1I867nf1IlBsDrp
 DVwu+4Q3+wS4SF9znRicf2iQ1MoMDmE+WkQY0b4qUMzRBbjFD9ErnkwNO
 B9d3OMVYFTw4EzMoSBC+v4UUPaEPSR0NkN05FaUez1HeKhld+Jo/G01wg g==;
X-CSE-ConnectionGUID: j3d8esLEQxuIGmjI/oWlog==
X-CSE-MsgGUID: /Z6oiBXcT+ucLw//DKbpQw==
X-IronPort-AV: E=McAfee;i="6700,10204,11210"; a="38170925"
X-IronPort-AV: E=Sophos;i="6.11,165,1725346800"; d="scan'208";a="38170925"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2024 05:50:03 -0700
X-CSE-ConnectionGUID: 7k/PBcmlRzqlmEBskzAzhw==
X-CSE-MsgGUID: pu6EJ3iqRYKVHP6S4faP1Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,165,1725346800"; d="scan'208";a="78044494"
Received: from mklonows-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.93])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2024 05:50:02 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH] drm/i915: remove all IS_<PLATFORM>_GT<N>() macros
Date: Mon, 30 Sep 2024 15:49:48 +0300
Message-Id: <20240930124948.3551980-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
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

There aren't many users for the IS_<PLATFORM>_GT<N>() macros, and many
of them are in fact unused. Even among the users, the platform check is
often redundant. Just remove the macros.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/gt/gen7_renderclear.c  |  3 ++-
 drivers/gpu/drm/i915/gt/intel_gt.c          |  2 +-
 drivers/gpu/drm/i915/gt/intel_workarounds.c |  4 +--
 drivers/gpu/drm/i915/i915_drv.h             | 29 ++-------------------
 drivers/gpu/drm/i915/intel_clock_gating.c   |  2 +-
 5 files changed, 8 insertions(+), 32 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/gen7_renderclear.c b/drivers/gpu/drm/i915/gt/gen7_renderclear.c
index d38b914d1206..6e89112f68ae 100644
--- a/drivers/gpu/drm/i915/gt/gen7_renderclear.c
+++ b/drivers/gpu/drm/i915/gt/gen7_renderclear.c
@@ -399,7 +399,8 @@ static void emit_batch(struct i915_vma * const vma,
 	batch_add(&cmds, MI_LOAD_REGISTER_IMM(2));
 	batch_add(&cmds, i915_mmio_reg_offset(CACHE_MODE_0_GEN7));
 	batch_add(&cmds, 0xffff0000 |
-			((IS_IVB_GT1(i915) || IS_VALLEYVIEW(i915)) ?
+			(((IS_IVYBRIDGE(i915) && INTEL_INFO(i915)->gt == 1) ||
+			  IS_VALLEYVIEW(i915)) ?
 			 HIZ_RAW_STALL_OPT_DISABLE :
 			 0));
 	batch_add(&cmds, i915_mmio_reg_offset(CACHE_MODE_1));
diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
index a6c69a706fd7..d6674aec82fc 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt.c
@@ -185,7 +185,7 @@ int intel_gt_init_hw(struct intel_gt *gt)
 	if (IS_HASWELL(i915))
 		intel_uncore_write(uncore,
 				   HSW_MI_PREDICATE_RESULT_2,
-				   IS_HASWELL_GT3(i915) ?
+				   INTEL_INFO(i915)->gt == 3 ?
 				   LOWER_SLICE_ENABLED : LOWER_SLICE_DISABLED);
 
 	/* Apply the GT workarounds... */
diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index e539a656cfc3..60492c15893d 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -418,7 +418,7 @@ static void bdw_ctx_workarounds_init(struct intel_engine_cs *engine,
 		     /* WaForceContextSaveRestoreNonCoherent:bdw */
 		     HDC_FORCE_CONTEXT_SAVE_RESTORE_NON_COHERENT |
 		     /* WaDisableFenceDestinationToSLM:bdw (pre-prod) */
-		     (IS_BROADWELL_GT3(i915) ? HDC_FENCE_DEST_SLM_DISABLE : 0));
+		     (INTEL_INFO(i915)->gt == 3 ? HDC_FENCE_DEST_SLM_DISABLE : 0));
 }
 
 static void chv_ctx_workarounds_init(struct intel_engine_cs *engine,
@@ -2537,7 +2537,7 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
 				 GEN7_FF_DS_SCHED_HW);
 
 		/* WaDisablePSDDualDispatchEnable:ivb */
-		if (IS_IVB_GT1(i915))
+		if (INTEL_INFO(i915)->gt == 1)
 			wa_masked_en(wal,
 				     GEN7_HALF_SLICE_CHICKEN1,
 				     GEN7_PSD_SINGLE_PORT_DISPATCH_ENABLE);
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index def3ca135406..49e03c9d38ba 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -507,8 +507,6 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 	(IS_PLATFORM(i915, INTEL_IRONLAKE) && IS_MOBILE(i915))
 #define IS_SANDYBRIDGE(i915) IS_PLATFORM(i915, INTEL_SANDYBRIDGE)
 #define IS_IVYBRIDGE(i915)	IS_PLATFORM(i915, INTEL_IVYBRIDGE)
-#define IS_IVB_GT1(i915)	(IS_IVYBRIDGE(i915) && \
-				 INTEL_INFO(i915)->gt == 1)
 #define IS_VALLEYVIEW(i915)	IS_PLATFORM(i915, INTEL_VALLEYVIEW)
 #define IS_CHERRYVIEW(i915)	IS_PLATFORM(i915, INTEL_CHERRYVIEW)
 #define IS_HASWELL(i915)	IS_PLATFORM(i915, INTEL_HASWELL)
@@ -561,14 +559,8 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 	IS_SUBPLATFORM(i915, INTEL_BROADWELL, INTEL_SUBPLATFORM_ULT)
 #define IS_BROADWELL_ULX(i915) \
 	IS_SUBPLATFORM(i915, INTEL_BROADWELL, INTEL_SUBPLATFORM_ULX)
-#define IS_BROADWELL_GT3(i915)	(IS_BROADWELL(i915) && \
-				 INTEL_INFO(i915)->gt == 3)
 #define IS_HASWELL_ULT(i915) \
 	IS_SUBPLATFORM(i915, INTEL_HASWELL, INTEL_SUBPLATFORM_ULT)
-#define IS_HASWELL_GT3(i915)	(IS_HASWELL(i915) && \
-				 INTEL_INFO(i915)->gt == 3)
-#define IS_HASWELL_GT1(i915)	(IS_HASWELL(i915) && \
-				 INTEL_INFO(i915)->gt == 1)
 /* ULX machines are also considered ULT. */
 #define IS_HASWELL_ULX(i915) \
 	IS_SUBPLATFORM(i915, INTEL_HASWELL, INTEL_SUBPLATFORM_ULX)
@@ -580,31 +572,14 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 	IS_SUBPLATFORM(i915, INTEL_KABYLAKE, INTEL_SUBPLATFORM_ULT)
 #define IS_KABYLAKE_ULX(i915) \
 	IS_SUBPLATFORM(i915, INTEL_KABYLAKE, INTEL_SUBPLATFORM_ULX)
-#define IS_SKYLAKE_GT2(i915)	(IS_SKYLAKE(i915) && \
-				 INTEL_INFO(i915)->gt == 2)
-#define IS_SKYLAKE_GT3(i915)	(IS_SKYLAKE(i915) && \
-				 INTEL_INFO(i915)->gt == 3)
-#define IS_SKYLAKE_GT4(i915)	(IS_SKYLAKE(i915) && \
-				 INTEL_INFO(i915)->gt == 4)
-#define IS_KABYLAKE_GT2(i915)	(IS_KABYLAKE(i915) && \
-				 INTEL_INFO(i915)->gt == 2)
-#define IS_KABYLAKE_GT3(i915)	(IS_KABYLAKE(i915) && \
-				 INTEL_INFO(i915)->gt == 3)
 #define IS_COFFEELAKE_ULT(i915) \
 	IS_SUBPLATFORM(i915, INTEL_COFFEELAKE, INTEL_SUBPLATFORM_ULT)
 #define IS_COFFEELAKE_ULX(i915) \
 	IS_SUBPLATFORM(i915, INTEL_COFFEELAKE, INTEL_SUBPLATFORM_ULX)
-#define IS_COFFEELAKE_GT2(i915)	(IS_COFFEELAKE(i915) && \
-				 INTEL_INFO(i915)->gt == 2)
-#define IS_COFFEELAKE_GT3(i915)	(IS_COFFEELAKE(i915) && \
-				 INTEL_INFO(i915)->gt == 3)
-
 #define IS_COMETLAKE_ULT(i915) \
 	IS_SUBPLATFORM(i915, INTEL_COMETLAKE, INTEL_SUBPLATFORM_ULT)
 #define IS_COMETLAKE_ULX(i915) \
 	IS_SUBPLATFORM(i915, INTEL_COMETLAKE, INTEL_SUBPLATFORM_ULX)
-#define IS_COMETLAKE_GT2(i915)	(IS_COMETLAKE(i915) && \
-				 INTEL_INFO(i915)->gt == 2)
 
 #define IS_ICL_WITH_PORT_F(i915) \
 	IS_SUBPLATFORM(i915, INTEL_ICELAKE, INTEL_SUBPLATFORM_PORTF)
@@ -678,7 +653,7 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 
 /* WaRsDisableCoarsePowerGating:skl,cnl */
 #define NEEDS_WaRsDisableCoarsePowerGating(i915)			\
-	(IS_SKYLAKE_GT3(i915) || IS_SKYLAKE_GT4(i915))
+	(IS_SKYLAKE(i915) && (INTEL_INFO(i915)->gt == 3 || INTEL_INFO(i915)->gt == 4))
 
 /* With the 945 and later, Y tiling got adjusted so that it was 32 128-byte
  * rows, which changed the alignment requirements and fence programming.
@@ -739,7 +714,7 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 
 /* DPF == dynamic parity feature */
 #define HAS_L3_DPF(i915) (INTEL_INFO(i915)->has_l3_dpf)
-#define NUM_L3_SLICES(i915) (IS_HASWELL_GT3(i915) ? \
+#define NUM_L3_SLICES(i915) (IS_HASWELL(i915) && INTEL_INFO(i915)->gt == 3 ? \
 				 2 : HAS_L3_DPF(i915))
 
 #define HAS_GUC_DEPRIVILEGE(i915) \
diff --git a/drivers/gpu/drm/i915/intel_clock_gating.c b/drivers/gpu/drm/i915/intel_clock_gating.c
index 26c4dbda076e..f76642886569 100644
--- a/drivers/gpu/drm/i915/intel_clock_gating.c
+++ b/drivers/gpu/drm/i915/intel_clock_gating.c
@@ -502,7 +502,7 @@ static void ivb_init_clock_gating(struct drm_i915_private *i915)
 			   CHICKEN3_DGMG_REQ_OUT_FIX_DISABLE |
 			   CHICKEN3_DGMG_DONE_FIX_DISABLE);
 
-	if (IS_IVB_GT1(i915))
+	if (INTEL_INFO(i915)->gt == 1)
 		intel_uncore_write(&i915->uncore, GEN7_ROW_CHICKEN2,
 				   _MASKED_BIT_ENABLE(DOP_CLOCK_GATING_DISABLE));
 	else {
-- 
2.39.5

