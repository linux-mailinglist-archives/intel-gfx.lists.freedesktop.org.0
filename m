Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9233B2CFAD0
	for <lists+intel-gfx@lfdr.de>; Sat,  5 Dec 2020 10:25:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 900B56E41D;
	Sat,  5 Dec 2020 09:25:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BA0186E418
 for <intel-gfx@lists.freedesktop.org>; Sat,  5 Dec 2020 09:25:48 +0000 (UTC)
IronPort-SDR: y2zUUO7p9XO2SoC3xXrh9AoHKgEmqLpHlJtAHKqpOu8cTCQE4xbrZrPlXJr4UMfFOFOJMiRaX1
 RSoKCE8zRrKA==
X-IronPort-AV: E=McAfee;i="6000,8403,9825"; a="169991258"
X-IronPort-AV: E=Sophos;i="5.78,395,1599548400"; d="scan'208";a="169991258"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2020 01:25:48 -0800
IronPort-SDR: IjWVK7rHD2GBpURzUlM81H9CtkSRUJsQT2kG4rK77LG6k21BLBoAwFfRuj0H5u/kiWAmpXJyAc
 a8uK8ve87JNw==
X-IronPort-AV: E=Sophos;i="5.78,395,1599548400"; d="scan'208";a="362441887"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.202])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2020 01:25:48 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sat,  5 Dec 2020 01:25:41 -0800
Message-Id: <20201205092542.2325477-3-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20201205092542.2325477-1-lucas.demarchi@intel.com>
References: <20201205092542.2325477-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/4] drm/i915: remove WA_CLR_BIT_MASKED()
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

Just ommitting the list it's operating on doesn't save much typing
and adds another way to do the same thing. Just replace it with
wa_masked_dis().

Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 17 +++++++----------
 1 file changed, 7 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index b359eaed2da2..0d8ae0096e8c 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -229,9 +229,6 @@ wa_masked_dis(struct i915_wa_list *wal, i915_reg_t reg, u32 val)
 	wa_add(wal, reg, 0, _MASKED_BIT_DISABLE(val), val);
 }
 
-#define WA_CLR_BIT_MASKED(addr, mask) \
-	wa_masked_dis(wal, (addr), (mask))
-
 #define WA_SET_FIELD_MASKED(addr, mask, value) \
 	wa_write_masked_or(wal, (addr), 0, _MASKED_FIELD((mask), (value)))
 
@@ -277,7 +274,7 @@ static void gen8_ctx_workarounds_init(struct intel_engine_cs *engine,
 	 *
 	 * This optimization is off by default for BDW and CHV; turn it on.
 	 */
-	WA_CLR_BIT_MASKED(CACHE_MODE_0_GEN7, HIZ_RAW_STALL_OPT_DISABLE);
+	wa_masked_dis(wal, CACHE_MODE_0_GEN7, HIZ_RAW_STALL_OPT_DISABLE);
 
 	/* Wa4x4STCOptimizationDisable:bdw,chv */
 	wa_masked_en(wal, CACHE_MODE_1, GEN8_4x4_STC_OPTIMIZATION_DISABLE);
@@ -371,8 +368,8 @@ static void gen9_ctx_workarounds_init(struct intel_engine_cs *engine,
 		     GEN9_PARTIAL_RESOLVE_IN_VC_DISABLE);
 
 	/* WaCcsTlbPrefetchDisable:skl,bxt,kbl,glk,cfl */
-	WA_CLR_BIT_MASKED(GEN9_HALF_SLICE_CHICKEN5,
-			  GEN9_CCS_TLB_PREFETCH_ENABLE);
+	wa_masked_dis(wal, GEN9_HALF_SLICE_CHICKEN5,
+		      GEN9_CCS_TLB_PREFETCH_ENABLE);
 
 	/* WaForceContextSaveRestoreNonCoherent:skl,bxt,kbl,cfl */
 	wa_masked_en(wal, HDC_CHICKEN0,
@@ -419,7 +416,7 @@ static void gen9_ctx_workarounds_init(struct intel_engine_cs *engine,
 	 */
 
 	/* WaDisable3DMidCmdPreemption:skl,bxt,glk,cfl,[cnl] */
-	WA_CLR_BIT_MASKED(GEN8_CS_CHICKEN1, GEN9_PREEMPT_3D_OBJECT_LEVEL);
+	wa_masked_dis(wal, GEN8_CS_CHICKEN1, GEN9_PREEMPT_3D_OBJECT_LEVEL);
 
 	/* WaDisableGPGPUMidCmdPreemption:skl,bxt,blk,cfl,[cnl] */
 	WA_SET_FIELD_MASKED(GEN8_CS_CHICKEN1,
@@ -551,7 +548,7 @@ static void cnl_ctx_workarounds_init(struct intel_engine_cs *engine,
 	wa_masked_en(wal, HALF_SLICE_CHICKEN3, CNL_FAST_ANISO_L1_BANKING_FIX);
 
 	/* WaDisable3DMidCmdPreemption:cnl */
-	WA_CLR_BIT_MASKED(GEN8_CS_CHICKEN1, GEN9_PREEMPT_3D_OBJECT_LEVEL);
+	wa_masked_dis(wal, GEN8_CS_CHICKEN1, GEN9_PREEMPT_3D_OBJECT_LEVEL);
 
 	/* WaDisableGPGPUMidCmdPreemption:cnl */
 	WA_SET_FIELD_MASKED(GEN8_CS_CHICKEN1,
@@ -677,8 +674,8 @@ static void dg1_ctx_workarounds_init(struct intel_engine_cs *engine,
 	gen12_ctx_workarounds_init(engine, wal);
 
 	/* Wa_1409044764 */
-	WA_CLR_BIT_MASKED(GEN11_COMMON_SLICE_CHICKEN3,
-			  DG1_FLOAT_POINT_BLEND_OPT_STRICT_MODE_EN);
+	wa_masked_dis(wal, GEN11_COMMON_SLICE_CHICKEN3,
+		      DG1_FLOAT_POINT_BLEND_OPT_STRICT_MODE_EN);
 
 	/* Wa_22010493298 */
 	wa_masked_en(wal, HIZ_CHICKEN,
-- 
2.29.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
