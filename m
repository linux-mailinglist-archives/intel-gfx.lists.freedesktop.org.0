Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C01C4591635
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Aug 2022 22:23:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 50CCE9978F;
	Fri, 12 Aug 2022 20:22:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 65393B2D00
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Aug 2022 20:22:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660335768; x=1691871768;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=qYTY68YvpMv3b8mnEPzHjY+xUAANyB1AvEtGv/eEG8s=;
 b=ILn5yhBh+JhgfHX2GP4CCARwIWRDZoy5k0uKNsl5Z/NgTXpeVCAUYFq6
 NLDnhKjha3trOqekfCwRk+LQ8EaHJsT3HKuSKe7MlAE9BzFYSOjE90+W/
 8vbT/XG2Y3tASSiZy3Kjnn7lTl6+EmY3z68QOUPqbIpmn50eOCyt1zYzx
 Mhswh6BIo3iVHQTKdj4zzst6Qsd5jAjXXSL2Aan+dMDPVbzOr0UNXQoWS
 xiNECZoACgnqF4Jb3KHFZzZR1TTmod/Pc4DRW8EE+PdY4a2YvJOEZC0pk
 cvGYqLCOaN7040TJg/+CijX1x94OP1J9CKpS/5OVzGzl5LhkbynZLFKg4 Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10437"; a="292477394"
X-IronPort-AV: E=Sophos;i="5.93,233,1654585200"; d="scan'208";a="292477394"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Aug 2022 13:22:47 -0700
X-IronPort-AV: E=Sophos;i="5.93,233,1654585200"; d="scan'208";a="634778145"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Aug 2022 13:22:47 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 12 Aug 2022 13:22:40 -0700
Message-Id: <20220812202240.542124-2-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.37.1
In-Reply-To: <20220812202240.542124-1-matthew.d.roper@intel.com>
References: <20220812202240.542124-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/dg2: Add additional tuning settings
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Some additional MMIO tuning settings have appeared in the bspec's
performance tuning guide section.

One of the tuning settings here is also documented as formal workaround
Wa_22012654132 for some steppings of DG2.  However the tuning setting
applies to all DG2 variants and steppings, making it a superset of the
workaround.

Bspec: 68331
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Cc: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt_regs.h     |  8 ++++++
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 27 ++++++++++++++-------
 2 files changed, 26 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
index b3b49f6d6d1c..f64fafe28f72 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
@@ -259,6 +259,9 @@
 #define   GEN9_PREEMPT_GPGPU_COMMAND_LEVEL	GEN9_PREEMPT_GPGPU_LEVEL(1, 0)
 #define   GEN9_PREEMPT_GPGPU_LEVEL_MASK		GEN9_PREEMPT_GPGPU_LEVEL(1, 1)
 
+#define DRAW_WATERMARK				_MMIO(0x26c0)
+#define   VERT_WM_VAL				REG_GENMASK(9, 0)
+
 #define GEN12_GLOBAL_MOCS(i)			_MMIO(0x4000 + (i) * 4) /* Global MOCS regs */
 
 #define RENDER_HWS_PGA_GEN7			_MMIO(0x4080)
@@ -374,6 +377,9 @@
 #define CHICKEN_RASTER_1			_MMIO(0x6204)
 #define   DIS_SF_ROUND_NEAREST_EVEN		REG_BIT(8)
 
+#define CHICKEN_RASTER_2			_MMIO(0x6208)
+#define   TBIMR_FAST_CLIP			REG_BIT(5)
+
 #define VFLSKPD					_MMIO(0x62a8)
 #define   DIS_OVER_FETCH_CACHE			REG_BIT(1)
 #define   DIS_MULT_MISS_RD_SQUASH		REG_BIT(0)
@@ -1124,6 +1130,8 @@
 
 #define RT_CTRL					_MMIO(0xe530)
 #define   DIS_NULL_QUERY			REG_BIT(10)
+#define   STACKID_CTRL				REG_GENMASK(6, 5)
+#define   STACKID_CTRL_512			REG_FIELD_PREP(STACKID_CTRL, 0x2)
 
 #define EU_PERF_CNTL1				_MMIO(0xe558)
 #define EU_PERF_CNTL5				_MMIO(0xe55c)
diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index a68d279b01f0..2db7f7dc3c8c 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -568,6 +568,9 @@ static void icl_ctx_workarounds_init(struct intel_engine_cs *engine,
 static void dg2_ctx_gt_tuning_init(struct intel_engine_cs *engine,
 				   struct i915_wa_list *wal)
 {
+	wa_write_or(wal, CHICKEN_RASTER_2, TBIMR_FAST_CLIP);
+	wa_write_clr_set(wal, DRAW_WATERMARK, VERT_WM_VAL,
+			 REG_FIELD_PREP(VERT_WM_VAL, 0x3FF));
 	wa_write_clr_set(wal, GEN11_L3SQCREG5, L3_PWM_TIMER_INIT_VAL_MASK,
 			 REG_FIELD_PREP(L3_PWM_TIMER_INIT_VAL_MASK, 0x7f));
 	wa_add(wal,
@@ -2195,15 +2198,6 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
 		wa_write_or(wal, XEHP_L3NODEARBCFG, XEHP_LNESPARE);
 	}
 
-	if (IS_DG2_GRAPHICS_STEP(i915, G10, STEP_A0, STEP_C0) ||
-	    IS_DG2_G11(i915)) {
-		/* Wa_22012654132:dg2 */
-		wa_add(wal, GEN10_CACHE_MODE_SS, 0,
-		       _MASKED_BIT_ENABLE(ENABLE_PREFETCH_INTO_IC),
-		       0 /* write-only, so skip validation */,
-		       true);
-	}
-
 	/* Wa_14013202645:dg2 */
 	if (IS_DG2_GRAPHICS_STEP(i915, G10, STEP_B0, STEP_C0) ||
 	    IS_DG2_GRAPHICS_STEP(i915, G11, STEP_A0, STEP_B0))
@@ -2692,6 +2686,21 @@ add_render_compute_tuning_settings(struct drm_i915_private *i915,
 
 	if (IS_DG2(i915)) {
 		wa_write_or(wal, XEHP_L3SCQREG7, BLEND_FILL_CACHING_OPT_DIS);
+		wa_write_clr_set(wal, RT_CTRL, STACKID_CTRL, STACKID_CTRL_512);
+
+		/*
+		 * This is also listed as Wa_22012654132 for certain DG2
+		 * steppings, but the tuning setting programming is a superset
+		 * since it applies to all DG2 variants and steppings.
+		 *
+		 * Note that register 0xE420 is write-only and cannot be read
+		 * back for verification on DG2 (due to Wa_14012342262), so
+		 * we need to explicitly skip the readback.
+		 */
+		wa_add(wal, GEN10_CACHE_MODE_SS, 0,
+		       _MASKED_BIT_ENABLE(ENABLE_PREFETCH_INTO_IC),
+		       0 /* write-only, so skip validation */,
+		       true);
 	}
 }
 
-- 
2.37.1

