Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 61B114BFF47
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Feb 2022 17:51:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B0EA010E8A0;
	Tue, 22 Feb 2022 16:51:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B1DF210E8BA
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Feb 2022 16:51:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645548706; x=1677084706;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=I1sYhI+9uDPvc8ZV8aJ1f0EXzoYtnbKs39sZCP9jutU=;
 b=BScPVW/SKmBBs7F/TwjlXtyelwMZS245Z/GVlaYWfLp5UqgOMWLPvx2n
 KpT7ETbfx12Mw2al/ntWrbAuKkl+Fq9SXDRubH9JbjnNvu9xWpO5yLTht
 VjQt+lh49yTIKulc2OVttMkPRNh/drsgbEvGKMht5G6wpvVW8Y0xJItE2
 p7Rk0RvrOwoJrZSIwDTTiPGI4EDH6iEaqYKfiBRh+oVMhDtNII9ZXmyyu
 kh7ZTlTQn+yV6PZEXd3N3/aRai+gs1LgidonZqCYFN1KH40Rm0ZDWy8BI
 E5YzqXYQZ/Oc1akpdt2PDiS0pF3uDIho02pXTcF6qBgl+gGPc7jfR4mhe w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10266"; a="314985516"
X-IronPort-AV: E=Sophos;i="5.88,387,1635231600"; d="scan'208";a="314985516"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2022 08:51:46 -0800
X-IronPort-AV: E=Sophos;i="5.88,387,1635231600"; d="scan'208";a="547828282"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2022 08:51:44 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 22 Feb 2022 18:51:33 +0200
Message-Id: <20220222165137.1004194-5-imre.deak@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20220222165137.1004194-1-imre.deak@intel.com>
References: <20220222165137.1004194-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 4/8] drm/i915: Move i915_power_well_regs struct
 into i915_power_well_ops
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

Move the i915_power_well_regs struct into i915_power_well_ops. Most of
the power wells use the same ops/regs combination, so this saves some
space and also simplifies the platform power domain->power well
definitions.

Signed-off-by: Imre Deak <imre.deak@intel.com>
Reviewed-by: Jouni Högander <jouni.hogander@intel.com>
---
 .../drm/i915/display/intel_display_power.c    | 256 +++++-------------
 1 file changed, 73 insertions(+), 183 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 857dd9ddba35f..32e4fc6a451e3 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -26,7 +26,15 @@
 #include "intel_vga.h"
 #include "vlv_sideband.h"
 
+struct i915_power_well_regs {
+	i915_reg_t bios;
+	i915_reg_t driver;
+	i915_reg_t kvmr;
+	i915_reg_t debug;
+};
+
 struct i915_power_well_ops {
+	const struct i915_power_well_regs *regs;
 	/*
 	 * Synchronize the well's hw state to match the current sw state, for
 	 * example enable/disable it based on the current refcount. Called
@@ -53,13 +61,6 @@ struct i915_power_well_ops {
 			   struct i915_power_well *power_well);
 };
 
-struct i915_power_well_regs {
-	i915_reg_t bios;
-	i915_reg_t driver;
-	i915_reg_t kvmr;
-	i915_reg_t debug;
-};
-
 /* Power well structure for haswell */
 struct i915_power_well_desc {
 	const char *name;
@@ -83,7 +84,6 @@ struct i915_power_well_desc {
 			enum dpio_phy phy;
 		} bxt;
 		struct {
-			const struct i915_power_well_regs *regs;
 			/*
 			 * request/status flag index in the power well
 			 * constrol/status registers.
@@ -438,7 +438,7 @@ static void hsw_wait_for_power_well_enable(struct drm_i915_private *dev_priv,
 					   struct i915_power_well *power_well,
 					   bool timeout_expected)
 {
-	const struct i915_power_well_regs *regs = power_well->desc->hsw.regs;
+	const struct i915_power_well_regs *regs = power_well->desc->ops->regs;
 	int pw_idx = power_well->desc->hsw.idx;
 	int enable_delay = power_well->desc->hsw.fixed_enable_delay;
 
@@ -482,7 +482,7 @@ static u32 hsw_power_well_requesters(struct drm_i915_private *dev_priv,
 static void hsw_wait_for_power_well_disable(struct drm_i915_private *dev_priv,
 					    struct i915_power_well *power_well)
 {
-	const struct i915_power_well_regs *regs = power_well->desc->hsw.regs;
+	const struct i915_power_well_regs *regs = power_well->desc->ops->regs;
 	int pw_idx = power_well->desc->hsw.idx;
 	bool disabled;
 	u32 reqs;
@@ -520,7 +520,7 @@ static void gen9_wait_for_power_well_fuses(struct drm_i915_private *dev_priv,
 static void hsw_power_well_enable(struct drm_i915_private *dev_priv,
 				  struct i915_power_well *power_well)
 {
-	const struct i915_power_well_regs *regs = power_well->desc->hsw.regs;
+	const struct i915_power_well_regs *regs = power_well->desc->ops->regs;
 	int pw_idx = power_well->desc->hsw.idx;
 	u32 val;
 
@@ -567,7 +567,7 @@ static void hsw_power_well_enable(struct drm_i915_private *dev_priv,
 static void hsw_power_well_disable(struct drm_i915_private *dev_priv,
 				   struct i915_power_well *power_well)
 {
-	const struct i915_power_well_regs *regs = power_well->desc->hsw.regs;
+	const struct i915_power_well_regs *regs = power_well->desc->ops->regs;
 	int pw_idx = power_well->desc->hsw.idx;
 	u32 val;
 
@@ -584,7 +584,7 @@ static void
 icl_combo_phy_aux_power_well_enable(struct drm_i915_private *dev_priv,
 				    struct i915_power_well *power_well)
 {
-	const struct i915_power_well_regs *regs = power_well->desc->hsw.regs;
+	const struct i915_power_well_regs *regs = power_well->desc->ops->regs;
 	int pw_idx = power_well->desc->hsw.idx;
 	enum phy phy = icl_aux_pw_to_phy(dev_priv, power_well);
 	u32 val;
@@ -616,7 +616,7 @@ static void
 icl_combo_phy_aux_power_well_disable(struct drm_i915_private *dev_priv,
 				     struct i915_power_well *power_well)
 {
-	const struct i915_power_well_regs *regs = power_well->desc->hsw.regs;
+	const struct i915_power_well_regs *regs = power_well->desc->ops->regs;
 	int pw_idx = power_well->desc->hsw.idx;
 	enum phy phy = icl_aux_pw_to_phy(dev_priv, power_well);
 	u32 val;
@@ -688,7 +688,7 @@ icl_tc_phy_aux_power_well_enable(struct drm_i915_private *dev_priv,
 {
 	enum aux_ch aux_ch = icl_aux_pw_to_ch(power_well);
 	struct intel_digital_port *dig_port = aux_ch_to_digital_port(dev_priv, aux_ch);
-	const struct i915_power_well_regs *regs = power_well->desc->hsw.regs;
+	const struct i915_power_well_regs *regs = power_well->desc->ops->regs;
 	bool is_tbt = power_well->desc->hsw.is_tc_tbt;
 	bool timeout_expected;
 	u32 val;
@@ -768,7 +768,7 @@ icl_aux_power_well_disable(struct drm_i915_private *dev_priv,
 static bool hsw_power_well_enabled(struct drm_i915_private *dev_priv,
 				   struct i915_power_well *power_well)
 {
-	const struct i915_power_well_regs *regs = power_well->desc->hsw.regs;
+	const struct i915_power_well_regs *regs = power_well->desc->ops->regs;
 	enum i915_power_well_id id = power_well->desc->id;
 	int pw_idx = power_well->desc->hsw.idx;
 	u32 mask = HSW_PWR_WELL_CTL_REQ(pw_idx) |
@@ -1178,7 +1178,7 @@ static void skl_enable_dc6(struct drm_i915_private *dev_priv)
 static void hsw_power_well_sync_hw(struct drm_i915_private *dev_priv,
 				   struct i915_power_well *power_well)
 {
-	const struct i915_power_well_regs *regs = power_well->desc->hsw.regs;
+	const struct i915_power_well_regs *regs = power_well->desc->ops->regs;
 	int pw_idx = power_well->desc->hsw.idx;
 	u32 mask = HSW_PWR_WELL_CTL_REQ(pw_idx);
 	u32 bios_req = intel_de_read(dev_priv, regs->bios);
@@ -3250,7 +3250,15 @@ static const struct i915_power_well_desc i830_power_wells[] = {
 	},
 };
 
+static const struct i915_power_well_regs hsw_power_well_regs = {
+	.bios	= HSW_PWR_WELL_CTL1,
+	.driver	= HSW_PWR_WELL_CTL2,
+	.kvmr	= HSW_PWR_WELL_CTL3,
+	.debug	= HSW_PWR_WELL_CTL4,
+};
+
 static const struct i915_power_well_ops hsw_power_well_ops = {
+	.regs = &hsw_power_well_regs,
 	.sync_hw = hsw_power_well_sync_hw,
 	.enable = hsw_power_well_enable,
 	.disable = hsw_power_well_disable,
@@ -3271,13 +3279,6 @@ static const struct i915_power_well_ops bxt_dpio_cmn_power_well_ops = {
 	.is_enabled = bxt_dpio_cmn_power_well_enabled,
 };
 
-static const struct i915_power_well_regs hsw_power_well_regs = {
-	.bios	= HSW_PWR_WELL_CTL1,
-	.driver	= HSW_PWR_WELL_CTL2,
-	.kvmr	= HSW_PWR_WELL_CTL3,
-	.debug	= HSW_PWR_WELL_CTL4,
-};
-
 static const struct i915_power_well_desc hsw_power_wells[] = {
 	{
 		.name = "always-on",
@@ -3292,7 +3293,6 @@ static const struct i915_power_well_desc hsw_power_wells[] = {
 		.ops = &hsw_power_well_ops,
 		.id = HSW_DISP_PW_GLOBAL,
 		{
-			.hsw.regs = &hsw_power_well_regs,
 			.hsw.idx = HSW_PW_CTL_IDX_GLOBAL,
 			.hsw.has_vga = true,
 		},
@@ -3313,7 +3313,6 @@ static const struct i915_power_well_desc bdw_power_wells[] = {
 		.ops = &hsw_power_well_ops,
 		.id = HSW_DISP_PW_GLOBAL,
 		{
-			.hsw.regs = &hsw_power_well_regs,
 			.hsw.idx = HSW_PW_CTL_IDX_GLOBAL,
 			.hsw.irq_pipe_mask = BIT(PIPE_B) | BIT(PIPE_C),
 			.hsw.has_vga = true,
@@ -3485,7 +3484,6 @@ static const struct i915_power_well_desc skl_power_wells[] = {
 		.ops = &hsw_power_well_ops,
 		.id = SKL_DISP_PW_1,
 		{
-			.hsw.regs = &hsw_power_well_regs,
 			.hsw.idx = SKL_PW_CTL_IDX_PW_1,
 			.hsw.has_fuses = true,
 		},
@@ -3498,7 +3496,6 @@ static const struct i915_power_well_desc skl_power_wells[] = {
 		.ops = &hsw_power_well_ops,
 		.id = SKL_DISP_PW_MISC_IO,
 		{
-			.hsw.regs = &hsw_power_well_regs,
 			.hsw.idx = SKL_PW_CTL_IDX_MISC_IO,
 		},
 	},
@@ -3514,7 +3511,6 @@ static const struct i915_power_well_desc skl_power_wells[] = {
 		.ops = &hsw_power_well_ops,
 		.id = SKL_DISP_PW_2,
 		{
-			.hsw.regs = &hsw_power_well_regs,
 			.hsw.idx = SKL_PW_CTL_IDX_PW_2,
 			.hsw.irq_pipe_mask = BIT(PIPE_B) | BIT(PIPE_C),
 			.hsw.has_vga = true,
@@ -3527,7 +3523,6 @@ static const struct i915_power_well_desc skl_power_wells[] = {
 		.ops = &hsw_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &hsw_power_well_regs,
 			.hsw.idx = SKL_PW_CTL_IDX_DDI_A_E,
 		},
 	},
@@ -3537,7 +3532,6 @@ static const struct i915_power_well_desc skl_power_wells[] = {
 		.ops = &hsw_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &hsw_power_well_regs,
 			.hsw.idx = SKL_PW_CTL_IDX_DDI_B,
 		},
 	},
@@ -3547,7 +3541,6 @@ static const struct i915_power_well_desc skl_power_wells[] = {
 		.ops = &hsw_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &hsw_power_well_regs,
 			.hsw.idx = SKL_PW_CTL_IDX_DDI_C,
 		},
 	},
@@ -3557,7 +3550,6 @@ static const struct i915_power_well_desc skl_power_wells[] = {
 		.ops = &hsw_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &hsw_power_well_regs,
 			.hsw.idx = SKL_PW_CTL_IDX_DDI_D,
 		},
 	},
@@ -3579,7 +3571,6 @@ static const struct i915_power_well_desc bxt_power_wells[] = {
 		.ops = &hsw_power_well_ops,
 		.id = SKL_DISP_PW_1,
 		{
-			.hsw.regs = &hsw_power_well_regs,
 			.hsw.idx = SKL_PW_CTL_IDX_PW_1,
 			.hsw.has_fuses = true,
 		},
@@ -3596,7 +3587,6 @@ static const struct i915_power_well_desc bxt_power_wells[] = {
 		.ops = &hsw_power_well_ops,
 		.id = SKL_DISP_PW_2,
 		{
-			.hsw.regs = &hsw_power_well_regs,
 			.hsw.idx = SKL_PW_CTL_IDX_PW_2,
 			.hsw.irq_pipe_mask = BIT(PIPE_B) | BIT(PIPE_C),
 			.hsw.has_vga = true,
@@ -3639,7 +3629,6 @@ static const struct i915_power_well_desc glk_power_wells[] = {
 		.ops = &hsw_power_well_ops,
 		.id = SKL_DISP_PW_1,
 		{
-			.hsw.regs = &hsw_power_well_regs,
 			.hsw.idx = SKL_PW_CTL_IDX_PW_1,
 			.hsw.has_fuses = true,
 		},
@@ -3656,7 +3645,6 @@ static const struct i915_power_well_desc glk_power_wells[] = {
 		.ops = &hsw_power_well_ops,
 		.id = SKL_DISP_PW_2,
 		{
-			.hsw.regs = &hsw_power_well_regs,
 			.hsw.idx = SKL_PW_CTL_IDX_PW_2,
 			.hsw.irq_pipe_mask = BIT(PIPE_B) | BIT(PIPE_C),
 			.hsw.has_vga = true,
@@ -3696,7 +3684,6 @@ static const struct i915_power_well_desc glk_power_wells[] = {
 		.ops = &hsw_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &hsw_power_well_regs,
 			.hsw.idx = GLK_PW_CTL_IDX_AUX_A,
 		},
 	},
@@ -3706,7 +3693,6 @@ static const struct i915_power_well_desc glk_power_wells[] = {
 		.ops = &hsw_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &hsw_power_well_regs,
 			.hsw.idx = GLK_PW_CTL_IDX_AUX_B,
 		},
 	},
@@ -3716,7 +3702,6 @@ static const struct i915_power_well_desc glk_power_wells[] = {
 		.ops = &hsw_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &hsw_power_well_regs,
 			.hsw.idx = GLK_PW_CTL_IDX_AUX_C,
 		},
 	},
@@ -3726,7 +3711,6 @@ static const struct i915_power_well_desc glk_power_wells[] = {
 		.ops = &hsw_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &hsw_power_well_regs,
 			.hsw.idx = GLK_PW_CTL_IDX_DDI_A,
 		},
 	},
@@ -3736,7 +3720,6 @@ static const struct i915_power_well_desc glk_power_wells[] = {
 		.ops = &hsw_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &hsw_power_well_regs,
 			.hsw.idx = SKL_PW_CTL_IDX_DDI_B,
 		},
 	},
@@ -3746,31 +3729,39 @@ static const struct i915_power_well_desc glk_power_wells[] = {
 		.ops = &hsw_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &hsw_power_well_regs,
 			.hsw.idx = SKL_PW_CTL_IDX_DDI_C,
 		},
 	},
 };
 
-static const struct i915_power_well_ops icl_aux_power_well_ops = {
-	.sync_hw = hsw_power_well_sync_hw,
-	.enable = icl_aux_power_well_enable,
-	.disable = icl_aux_power_well_disable,
-	.is_enabled = hsw_power_well_enabled,
-};
-
 static const struct i915_power_well_regs icl_aux_power_well_regs = {
 	.bios	= ICL_PWR_WELL_CTL_AUX1,
 	.driver	= ICL_PWR_WELL_CTL_AUX2,
 	.debug	= ICL_PWR_WELL_CTL_AUX4,
 };
 
+static const struct i915_power_well_ops icl_aux_power_well_ops = {
+	.regs = &icl_aux_power_well_regs,
+	.sync_hw = hsw_power_well_sync_hw,
+	.enable = icl_aux_power_well_enable,
+	.disable = icl_aux_power_well_disable,
+	.is_enabled = hsw_power_well_enabled,
+};
+
 static const struct i915_power_well_regs icl_ddi_power_well_regs = {
 	.bios	= ICL_PWR_WELL_CTL_DDI1,
 	.driver	= ICL_PWR_WELL_CTL_DDI2,
 	.debug	= ICL_PWR_WELL_CTL_DDI4,
 };
 
+static const struct i915_power_well_ops icl_ddi_power_well_ops = {
+	.regs = &icl_ddi_power_well_regs,
+	.sync_hw = hsw_power_well_sync_hw,
+	.enable = hsw_power_well_enable,
+	.disable = hsw_power_well_disable,
+	.is_enabled = hsw_power_well_enabled,
+};
+
 static const struct i915_power_well_desc icl_power_wells[] = {
 	{
 		.name = "always-on",
@@ -3787,7 +3778,6 @@ static const struct i915_power_well_desc icl_power_wells[] = {
 		.ops = &hsw_power_well_ops,
 		.id = SKL_DISP_PW_1,
 		{
-			.hsw.regs = &hsw_power_well_regs,
 			.hsw.idx = ICL_PW_CTL_IDX_PW_1,
 			.hsw.has_fuses = true,
 		},
@@ -3804,7 +3794,6 @@ static const struct i915_power_well_desc icl_power_wells[] = {
 		.ops = &hsw_power_well_ops,
 		.id = SKL_DISP_PW_2,
 		{
-			.hsw.regs = &hsw_power_well_regs,
 			.hsw.idx = ICL_PW_CTL_IDX_PW_2,
 			.hsw.has_fuses = true,
 		},
@@ -3815,7 +3804,6 @@ static const struct i915_power_well_desc icl_power_wells[] = {
 		.ops = &hsw_power_well_ops,
 		.id = ICL_DISP_PW_3,
 		{
-			.hsw.regs = &hsw_power_well_regs,
 			.hsw.idx = ICL_PW_CTL_IDX_PW_3,
 			.hsw.irq_pipe_mask = BIT(PIPE_B),
 			.hsw.has_vga = true,
@@ -3825,60 +3813,54 @@ static const struct i915_power_well_desc icl_power_wells[] = {
 	{
 		.name = "DDI A IO",
 		.domains = ICL_DDI_IO_A_POWER_DOMAINS,
-		.ops = &hsw_power_well_ops,
+		.ops = &icl_ddi_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &icl_ddi_power_well_regs,
 			.hsw.idx = ICL_PW_CTL_IDX_DDI_A,
 		},
 	},
 	{
 		.name = "DDI B IO",
 		.domains = ICL_DDI_IO_B_POWER_DOMAINS,
-		.ops = &hsw_power_well_ops,
+		.ops = &icl_ddi_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &icl_ddi_power_well_regs,
 			.hsw.idx = ICL_PW_CTL_IDX_DDI_B,
 		},
 	},
 	{
 		.name = "DDI C IO",
 		.domains = ICL_DDI_IO_C_POWER_DOMAINS,
-		.ops = &hsw_power_well_ops,
+		.ops = &icl_ddi_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &icl_ddi_power_well_regs,
 			.hsw.idx = ICL_PW_CTL_IDX_DDI_C,
 		},
 	},
 	{
 		.name = "DDI D IO",
 		.domains = ICL_DDI_IO_D_POWER_DOMAINS,
-		.ops = &hsw_power_well_ops,
+		.ops = &icl_ddi_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &icl_ddi_power_well_regs,
 			.hsw.idx = ICL_PW_CTL_IDX_DDI_D,
 		},
 	},
 	{
 		.name = "DDI E IO",
 		.domains = ICL_DDI_IO_E_POWER_DOMAINS,
-		.ops = &hsw_power_well_ops,
+		.ops = &icl_ddi_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &icl_ddi_power_well_regs,
 			.hsw.idx = ICL_PW_CTL_IDX_DDI_E,
 		},
 	},
 	{
 		.name = "DDI F IO",
 		.domains = ICL_DDI_IO_F_POWER_DOMAINS,
-		.ops = &hsw_power_well_ops,
+		.ops = &icl_ddi_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &icl_ddi_power_well_regs,
 			.hsw.idx = ICL_PW_CTL_IDX_DDI_F,
 		},
 	},
@@ -3888,7 +3870,6 @@ static const struct i915_power_well_desc icl_power_wells[] = {
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &icl_aux_power_well_regs,
 			.hsw.idx = ICL_PW_CTL_IDX_AUX_A,
 		},
 	},
@@ -3898,7 +3879,6 @@ static const struct i915_power_well_desc icl_power_wells[] = {
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &icl_aux_power_well_regs,
 			.hsw.idx = ICL_PW_CTL_IDX_AUX_B,
 		},
 	},
@@ -3908,7 +3888,6 @@ static const struct i915_power_well_desc icl_power_wells[] = {
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &icl_aux_power_well_regs,
 			.hsw.idx = ICL_PW_CTL_IDX_AUX_C,
 			.hsw.is_tc_tbt = false,
 		},
@@ -3919,7 +3898,6 @@ static const struct i915_power_well_desc icl_power_wells[] = {
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &icl_aux_power_well_regs,
 			.hsw.idx = ICL_PW_CTL_IDX_AUX_D,
 			.hsw.is_tc_tbt = false,
 		},
@@ -3930,7 +3908,6 @@ static const struct i915_power_well_desc icl_power_wells[] = {
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &icl_aux_power_well_regs,
 			.hsw.idx = ICL_PW_CTL_IDX_AUX_E,
 			.hsw.is_tc_tbt = false,
 		},
@@ -3941,7 +3918,6 @@ static const struct i915_power_well_desc icl_power_wells[] = {
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &icl_aux_power_well_regs,
 			.hsw.idx = ICL_PW_CTL_IDX_AUX_F,
 			.hsw.is_tc_tbt = false,
 		},
@@ -3952,7 +3928,6 @@ static const struct i915_power_well_desc icl_power_wells[] = {
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &icl_aux_power_well_regs,
 			.hsw.idx = ICL_PW_CTL_IDX_AUX_TBT1,
 			.hsw.is_tc_tbt = true,
 		},
@@ -3963,7 +3938,6 @@ static const struct i915_power_well_desc icl_power_wells[] = {
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &icl_aux_power_well_regs,
 			.hsw.idx = ICL_PW_CTL_IDX_AUX_TBT2,
 			.hsw.is_tc_tbt = true,
 		},
@@ -3974,7 +3948,6 @@ static const struct i915_power_well_desc icl_power_wells[] = {
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &icl_aux_power_well_regs,
 			.hsw.idx = ICL_PW_CTL_IDX_AUX_TBT3,
 			.hsw.is_tc_tbt = true,
 		},
@@ -3985,7 +3958,6 @@ static const struct i915_power_well_desc icl_power_wells[] = {
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &icl_aux_power_well_regs,
 			.hsw.idx = ICL_PW_CTL_IDX_AUX_TBT4,
 			.hsw.is_tc_tbt = true,
 		},
@@ -3996,7 +3968,6 @@ static const struct i915_power_well_desc icl_power_wells[] = {
 		.ops = &hsw_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &hsw_power_well_regs,
 			.hsw.idx = ICL_PW_CTL_IDX_PW_4,
 			.hsw.has_fuses = true,
 			.hsw.irq_pipe_mask = BIT(PIPE_C),
@@ -4104,7 +4075,6 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
 		.ops = &hsw_power_well_ops,
 		.id = SKL_DISP_PW_1,
 		{
-			.hsw.regs = &hsw_power_well_regs,
 			.hsw.idx = ICL_PW_CTL_IDX_PW_1,
 			.hsw.has_fuses = true,
 		},
@@ -4121,7 +4091,6 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
 		.ops = &hsw_power_well_ops,
 		.id = SKL_DISP_PW_2,
 		{
-			.hsw.regs = &hsw_power_well_regs,
 			.hsw.idx = ICL_PW_CTL_IDX_PW_2,
 			.hsw.has_fuses = true,
 		},
@@ -4132,7 +4101,6 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
 		.ops = &hsw_power_well_ops,
 		.id = ICL_DISP_PW_3,
 		{
-			.hsw.regs = &hsw_power_well_regs,
 			.hsw.idx = ICL_PW_CTL_IDX_PW_3,
 			.hsw.irq_pipe_mask = BIT(PIPE_B),
 			.hsw.has_vga = true,
@@ -4142,90 +4110,81 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
 	{
 		.name = "DDI A IO",
 		.domains = ICL_DDI_IO_A_POWER_DOMAINS,
-		.ops = &hsw_power_well_ops,
+		.ops = &icl_ddi_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &icl_ddi_power_well_regs,
 			.hsw.idx = ICL_PW_CTL_IDX_DDI_A,
 		}
 	},
 	{
 		.name = "DDI B IO",
 		.domains = ICL_DDI_IO_B_POWER_DOMAINS,
-		.ops = &hsw_power_well_ops,
+		.ops = &icl_ddi_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &icl_ddi_power_well_regs,
 			.hsw.idx = ICL_PW_CTL_IDX_DDI_B,
 		}
 	},
 	{
 		.name = "DDI C IO",
 		.domains = ICL_DDI_IO_C_POWER_DOMAINS,
-		.ops = &hsw_power_well_ops,
+		.ops = &icl_ddi_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &icl_ddi_power_well_regs,
 			.hsw.idx = ICL_PW_CTL_IDX_DDI_C,
 		}
 	},
 	{
 		.name = "DDI IO TC1",
 		.domains = TGL_DDI_IO_TC1_POWER_DOMAINS,
-		.ops = &hsw_power_well_ops,
+		.ops = &icl_ddi_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &icl_ddi_power_well_regs,
 			.hsw.idx = TGL_PW_CTL_IDX_DDI_TC1,
 		},
 	},
 	{
 		.name = "DDI IO TC2",
 		.domains = TGL_DDI_IO_TC2_POWER_DOMAINS,
-		.ops = &hsw_power_well_ops,
+		.ops = &icl_ddi_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &icl_ddi_power_well_regs,
 			.hsw.idx = TGL_PW_CTL_IDX_DDI_TC2,
 		},
 	},
 	{
 		.name = "DDI IO TC3",
 		.domains = TGL_DDI_IO_TC3_POWER_DOMAINS,
-		.ops = &hsw_power_well_ops,
+		.ops = &icl_ddi_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &icl_ddi_power_well_regs,
 			.hsw.idx = TGL_PW_CTL_IDX_DDI_TC3,
 		},
 	},
 	{
 		.name = "DDI IO TC4",
 		.domains = TGL_DDI_IO_TC4_POWER_DOMAINS,
-		.ops = &hsw_power_well_ops,
+		.ops = &icl_ddi_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &icl_ddi_power_well_regs,
 			.hsw.idx = TGL_PW_CTL_IDX_DDI_TC4,
 		},
 	},
 	{
 		.name = "DDI IO TC5",
 		.domains = TGL_DDI_IO_TC5_POWER_DOMAINS,
-		.ops = &hsw_power_well_ops,
+		.ops = &icl_ddi_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &icl_ddi_power_well_regs,
 			.hsw.idx = TGL_PW_CTL_IDX_DDI_TC5,
 		},
 	},
 	{
 		.name = "DDI IO TC6",
 		.domains = TGL_DDI_IO_TC6_POWER_DOMAINS,
-		.ops = &hsw_power_well_ops,
+		.ops = &icl_ddi_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &icl_ddi_power_well_regs,
 			.hsw.idx = TGL_PW_CTL_IDX_DDI_TC6,
 		},
 	},
@@ -4241,7 +4200,6 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &icl_aux_power_well_regs,
 			.hsw.idx = ICL_PW_CTL_IDX_AUX_A,
 		},
 	},
@@ -4251,7 +4209,6 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &icl_aux_power_well_regs,
 			.hsw.idx = ICL_PW_CTL_IDX_AUX_B,
 		},
 	},
@@ -4261,7 +4218,6 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &icl_aux_power_well_regs,
 			.hsw.idx = ICL_PW_CTL_IDX_AUX_C,
 		},
 	},
@@ -4271,7 +4227,6 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &icl_aux_power_well_regs,
 			.hsw.idx = TGL_PW_CTL_IDX_AUX_TC1,
 			.hsw.is_tc_tbt = false,
 		},
@@ -4282,7 +4237,6 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &icl_aux_power_well_regs,
 			.hsw.idx = TGL_PW_CTL_IDX_AUX_TC2,
 			.hsw.is_tc_tbt = false,
 		},
@@ -4293,7 +4247,6 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &icl_aux_power_well_regs,
 			.hsw.idx = TGL_PW_CTL_IDX_AUX_TC3,
 			.hsw.is_tc_tbt = false,
 		},
@@ -4304,7 +4257,6 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &icl_aux_power_well_regs,
 			.hsw.idx = TGL_PW_CTL_IDX_AUX_TC4,
 			.hsw.is_tc_tbt = false,
 		},
@@ -4315,7 +4267,6 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &icl_aux_power_well_regs,
 			.hsw.idx = TGL_PW_CTL_IDX_AUX_TC5,
 			.hsw.is_tc_tbt = false,
 		},
@@ -4326,7 +4277,6 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &icl_aux_power_well_regs,
 			.hsw.idx = TGL_PW_CTL_IDX_AUX_TC6,
 			.hsw.is_tc_tbt = false,
 		},
@@ -4337,7 +4287,6 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &icl_aux_power_well_regs,
 			.hsw.idx = TGL_PW_CTL_IDX_AUX_TBT1,
 			.hsw.is_tc_tbt = true,
 		},
@@ -4348,7 +4297,6 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &icl_aux_power_well_regs,
 			.hsw.idx = TGL_PW_CTL_IDX_AUX_TBT2,
 			.hsw.is_tc_tbt = true,
 		},
@@ -4359,7 +4307,6 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &icl_aux_power_well_regs,
 			.hsw.idx = TGL_PW_CTL_IDX_AUX_TBT3,
 			.hsw.is_tc_tbt = true,
 		},
@@ -4370,7 +4317,6 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &icl_aux_power_well_regs,
 			.hsw.idx = TGL_PW_CTL_IDX_AUX_TBT4,
 			.hsw.is_tc_tbt = true,
 		},
@@ -4381,7 +4327,6 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &icl_aux_power_well_regs,
 			.hsw.idx = TGL_PW_CTL_IDX_AUX_TBT5,
 			.hsw.is_tc_tbt = true,
 		},
@@ -4392,7 +4337,6 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &icl_aux_power_well_regs,
 			.hsw.idx = TGL_PW_CTL_IDX_AUX_TBT6,
 			.hsw.is_tc_tbt = true,
 		},
@@ -4403,7 +4347,6 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
 		.ops = &hsw_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &hsw_power_well_regs,
 			.hsw.idx = ICL_PW_CTL_IDX_PW_4,
 			.hsw.has_fuses = true,
 			.hsw.irq_pipe_mask = BIT(PIPE_C),
@@ -4415,7 +4358,6 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
 		.ops = &hsw_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &hsw_power_well_regs,
 			.hsw.idx = TGL_PW_CTL_IDX_PW_5,
 			.hsw.has_fuses = true,
 			.hsw.irq_pipe_mask = BIT(PIPE_D),
@@ -4439,7 +4381,6 @@ static const struct i915_power_well_desc rkl_power_wells[] = {
 		.ops = &hsw_power_well_ops,
 		.id = SKL_DISP_PW_1,
 		{
-			.hsw.regs = &hsw_power_well_regs,
 			.hsw.idx = ICL_PW_CTL_IDX_PW_1,
 			.hsw.has_fuses = true,
 		},
@@ -4456,7 +4397,6 @@ static const struct i915_power_well_desc rkl_power_wells[] = {
 		.ops = &hsw_power_well_ops,
 		.id = ICL_DISP_PW_3,
 		{
-			.hsw.regs = &hsw_power_well_regs,
 			.hsw.idx = ICL_PW_CTL_IDX_PW_3,
 			.hsw.irq_pipe_mask = BIT(PIPE_B),
 			.hsw.has_vga = true,
@@ -4469,7 +4409,6 @@ static const struct i915_power_well_desc rkl_power_wells[] = {
 		.ops = &hsw_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &hsw_power_well_regs,
 			.hsw.idx = ICL_PW_CTL_IDX_PW_4,
 			.hsw.has_fuses = true,
 			.hsw.irq_pipe_mask = BIT(PIPE_C),
@@ -4478,40 +4417,36 @@ static const struct i915_power_well_desc rkl_power_wells[] = {
 	{
 		.name = "DDI A IO",
 		.domains = ICL_DDI_IO_A_POWER_DOMAINS,
-		.ops = &hsw_power_well_ops,
+		.ops = &icl_ddi_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &icl_ddi_power_well_regs,
 			.hsw.idx = ICL_PW_CTL_IDX_DDI_A,
 		}
 	},
 	{
 		.name = "DDI B IO",
 		.domains = ICL_DDI_IO_B_POWER_DOMAINS,
-		.ops = &hsw_power_well_ops,
+		.ops = &icl_ddi_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &icl_ddi_power_well_regs,
 			.hsw.idx = ICL_PW_CTL_IDX_DDI_B,
 		}
 	},
 	{
 		.name = "DDI IO TC1",
 		.domains = TGL_DDI_IO_TC1_POWER_DOMAINS,
-		.ops = &hsw_power_well_ops,
+		.ops = &icl_ddi_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &icl_ddi_power_well_regs,
 			.hsw.idx = TGL_PW_CTL_IDX_DDI_TC1,
 		},
 	},
 	{
 		.name = "DDI IO TC2",
 		.domains = TGL_DDI_IO_TC2_POWER_DOMAINS,
-		.ops = &hsw_power_well_ops,
+		.ops = &icl_ddi_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &icl_ddi_power_well_regs,
 			.hsw.idx = TGL_PW_CTL_IDX_DDI_TC2,
 		},
 	},
@@ -4521,7 +4456,6 @@ static const struct i915_power_well_desc rkl_power_wells[] = {
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &icl_aux_power_well_regs,
 			.hsw.idx = ICL_PW_CTL_IDX_AUX_A,
 		},
 	},
@@ -4531,7 +4465,6 @@ static const struct i915_power_well_desc rkl_power_wells[] = {
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &icl_aux_power_well_regs,
 			.hsw.idx = ICL_PW_CTL_IDX_AUX_B,
 		},
 	},
@@ -4541,7 +4474,6 @@ static const struct i915_power_well_desc rkl_power_wells[] = {
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &icl_aux_power_well_regs,
 			.hsw.idx = TGL_PW_CTL_IDX_AUX_TC1,
 		},
 	},
@@ -4551,7 +4483,6 @@ static const struct i915_power_well_desc rkl_power_wells[] = {
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &icl_aux_power_well_regs,
 			.hsw.idx = TGL_PW_CTL_IDX_AUX_TC2,
 		},
 	},
@@ -4573,7 +4504,6 @@ static const struct i915_power_well_desc dg1_power_wells[] = {
 		.ops = &hsw_power_well_ops,
 		.id = SKL_DISP_PW_1,
 		{
-			.hsw.regs = &hsw_power_well_regs,
 			.hsw.idx = ICL_PW_CTL_IDX_PW_1,
 			.hsw.has_fuses = true,
 		},
@@ -4590,7 +4520,6 @@ static const struct i915_power_well_desc dg1_power_wells[] = {
 		.ops = &hsw_power_well_ops,
 		.id = SKL_DISP_PW_2,
 		{
-			.hsw.regs = &hsw_power_well_regs,
 			.hsw.idx = ICL_PW_CTL_IDX_PW_2,
 			.hsw.has_fuses = true,
 		},
@@ -4601,7 +4530,6 @@ static const struct i915_power_well_desc dg1_power_wells[] = {
 		.ops = &hsw_power_well_ops,
 		.id = ICL_DISP_PW_3,
 		{
-			.hsw.regs = &hsw_power_well_regs,
 			.hsw.idx = ICL_PW_CTL_IDX_PW_3,
 			.hsw.irq_pipe_mask = BIT(PIPE_B),
 			.hsw.has_vga = true,
@@ -4611,40 +4539,36 @@ static const struct i915_power_well_desc dg1_power_wells[] = {
 	{
 		.name = "DDI A IO",
 		.domains = ICL_DDI_IO_A_POWER_DOMAINS,
-		.ops = &hsw_power_well_ops,
+		.ops = &icl_ddi_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &icl_ddi_power_well_regs,
 			.hsw.idx = ICL_PW_CTL_IDX_DDI_A,
 		}
 	},
 	{
 		.name = "DDI B IO",
 		.domains = ICL_DDI_IO_B_POWER_DOMAINS,
-		.ops = &hsw_power_well_ops,
+		.ops = &icl_ddi_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &icl_ddi_power_well_regs,
 			.hsw.idx = ICL_PW_CTL_IDX_DDI_B,
 		}
 	},
 	{
 		.name = "DDI IO TC1",
 		.domains = TGL_DDI_IO_TC1_POWER_DOMAINS,
-		.ops = &hsw_power_well_ops,
+		.ops = &icl_ddi_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &icl_ddi_power_well_regs,
 			.hsw.idx = TGL_PW_CTL_IDX_DDI_TC1,
 		},
 	},
 	{
 		.name = "DDI IO TC2",
 		.domains = TGL_DDI_IO_TC2_POWER_DOMAINS,
-		.ops = &hsw_power_well_ops,
+		.ops = &icl_ddi_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &icl_ddi_power_well_regs,
 			.hsw.idx = TGL_PW_CTL_IDX_DDI_TC2,
 		},
 	},
@@ -4654,7 +4578,6 @@ static const struct i915_power_well_desc dg1_power_wells[] = {
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &icl_aux_power_well_regs,
 			.hsw.idx = ICL_PW_CTL_IDX_AUX_A,
 		},
 	},
@@ -4664,7 +4587,6 @@ static const struct i915_power_well_desc dg1_power_wells[] = {
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &icl_aux_power_well_regs,
 			.hsw.idx = ICL_PW_CTL_IDX_AUX_B,
 		},
 	},
@@ -4674,7 +4596,6 @@ static const struct i915_power_well_desc dg1_power_wells[] = {
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &icl_aux_power_well_regs,
 			.hsw.idx = TGL_PW_CTL_IDX_AUX_TC1,
 			.hsw.is_tc_tbt = false,
 		},
@@ -4685,7 +4606,6 @@ static const struct i915_power_well_desc dg1_power_wells[] = {
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &icl_aux_power_well_regs,
 			.hsw.idx = TGL_PW_CTL_IDX_AUX_TC2,
 			.hsw.is_tc_tbt = false,
 		},
@@ -4696,7 +4616,6 @@ static const struct i915_power_well_desc dg1_power_wells[] = {
 		.ops = &hsw_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &hsw_power_well_regs,
 			.hsw.idx = ICL_PW_CTL_IDX_PW_4,
 			.hsw.has_fuses = true,
 			.hsw.irq_pipe_mask = BIT(PIPE_C),
@@ -4708,7 +4627,6 @@ static const struct i915_power_well_desc dg1_power_wells[] = {
 		.ops = &hsw_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &hsw_power_well_regs,
 			.hsw.idx = TGL_PW_CTL_IDX_PW_5,
 			.hsw.has_fuses = true,
 			.hsw.irq_pipe_mask = BIT(PIPE_D),
@@ -4732,7 +4650,6 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
 		.ops = &hsw_power_well_ops,
 		.id = SKL_DISP_PW_1,
 		{
-			.hsw.regs = &hsw_power_well_regs,
 			.hsw.idx = ICL_PW_CTL_IDX_PW_1,
 			.hsw.has_fuses = true,
 		},
@@ -4749,7 +4666,6 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
 		.ops = &hsw_power_well_ops,
 		.id = SKL_DISP_PW_2,
 		{
-			.hsw.regs = &hsw_power_well_regs,
 			.hsw.idx = ICL_PW_CTL_IDX_PW_2,
 			.hsw.has_vga = true,
 			.hsw.has_fuses = true,
@@ -4761,7 +4677,6 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
 		.ops = &hsw_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &hsw_power_well_regs,
 			.hsw.idx = XELPD_PW_CTL_IDX_PW_A,
 			.hsw.irq_pipe_mask = BIT(PIPE_A),
 			.hsw.has_fuses = true,
@@ -4773,7 +4688,6 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
 		.ops = &hsw_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &hsw_power_well_regs,
 			.hsw.idx = XELPD_PW_CTL_IDX_PW_B,
 			.hsw.irq_pipe_mask = BIT(PIPE_B),
 			.hsw.has_fuses = true,
@@ -4785,7 +4699,6 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
 		.ops = &hsw_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &hsw_power_well_regs,
 			.hsw.idx = XELPD_PW_CTL_IDX_PW_C,
 			.hsw.irq_pipe_mask = BIT(PIPE_C),
 			.hsw.has_fuses = true,
@@ -4797,7 +4710,6 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
 		.ops = &hsw_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &hsw_power_well_regs,
 			.hsw.idx = XELPD_PW_CTL_IDX_PW_D,
 			.hsw.irq_pipe_mask = BIT(PIPE_D),
 			.hsw.has_fuses = true,
@@ -4806,90 +4718,81 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
 	{
 		.name = "DDI A IO",
 		.domains = ICL_DDI_IO_A_POWER_DOMAINS,
-		.ops = &hsw_power_well_ops,
+		.ops = &icl_ddi_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &icl_ddi_power_well_regs,
 			.hsw.idx = ICL_PW_CTL_IDX_DDI_A,
 		}
 	},
 	{
 		.name = "DDI B IO",
 		.domains = ICL_DDI_IO_B_POWER_DOMAINS,
-		.ops = &hsw_power_well_ops,
+		.ops = &icl_ddi_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &icl_ddi_power_well_regs,
 			.hsw.idx = ICL_PW_CTL_IDX_DDI_B,
 		}
 	},
 	{
 		.name = "DDI C IO",
 		.domains = ICL_DDI_IO_C_POWER_DOMAINS,
-		.ops = &hsw_power_well_ops,
+		.ops = &icl_ddi_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &icl_ddi_power_well_regs,
 			.hsw.idx = ICL_PW_CTL_IDX_DDI_C,
 		}
 	},
 	{
 		.name = "DDI IO D_XELPD",
 		.domains = XELPD_DDI_IO_D_XELPD_POWER_DOMAINS,
-		.ops = &hsw_power_well_ops,
+		.ops = &icl_ddi_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &icl_ddi_power_well_regs,
 			.hsw.idx = XELPD_PW_CTL_IDX_DDI_D,
 		}
 	},
 	{
 		.name = "DDI IO E_XELPD",
 		.domains = XELPD_DDI_IO_E_XELPD_POWER_DOMAINS,
-		.ops = &hsw_power_well_ops,
+		.ops = &icl_ddi_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &icl_ddi_power_well_regs,
 			.hsw.idx = XELPD_PW_CTL_IDX_DDI_E,
 		}
 	},
 	{
 		.name = "DDI IO TC1",
 		.domains = XELPD_DDI_IO_TC1_POWER_DOMAINS,
-		.ops = &hsw_power_well_ops,
+		.ops = &icl_ddi_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &icl_ddi_power_well_regs,
 			.hsw.idx = TGL_PW_CTL_IDX_DDI_TC1,
 		}
 	},
 	{
 		.name = "DDI IO TC2",
 		.domains = XELPD_DDI_IO_TC2_POWER_DOMAINS,
-		.ops = &hsw_power_well_ops,
+		.ops = &icl_ddi_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &icl_ddi_power_well_regs,
 			.hsw.idx = TGL_PW_CTL_IDX_DDI_TC2,
 		}
 	},
 	{
 		.name = "DDI IO TC3",
 		.domains = XELPD_DDI_IO_TC3_POWER_DOMAINS,
-		.ops = &hsw_power_well_ops,
+		.ops = &icl_ddi_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &icl_ddi_power_well_regs,
 			.hsw.idx = TGL_PW_CTL_IDX_DDI_TC3,
 		}
 	},
 	{
 		.name = "DDI IO TC4",
 		.domains = XELPD_DDI_IO_TC4_POWER_DOMAINS,
-		.ops = &hsw_power_well_ops,
+		.ops = &icl_ddi_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &icl_ddi_power_well_regs,
 			.hsw.idx = TGL_PW_CTL_IDX_DDI_TC4,
 		}
 	},
@@ -4899,7 +4802,6 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &icl_aux_power_well_regs,
 			.hsw.idx = ICL_PW_CTL_IDX_AUX_A,
 			.hsw.fixed_enable_delay = 600,
 		},
@@ -4910,7 +4812,6 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &icl_aux_power_well_regs,
 			.hsw.idx = ICL_PW_CTL_IDX_AUX_B,
 			.hsw.fixed_enable_delay = 600,
 		},
@@ -4921,7 +4822,6 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &icl_aux_power_well_regs,
 			.hsw.idx = ICL_PW_CTL_IDX_AUX_C,
 			.hsw.fixed_enable_delay = 600,
 		},
@@ -4932,7 +4832,6 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &icl_aux_power_well_regs,
 			.hsw.idx = XELPD_PW_CTL_IDX_AUX_D,
 			.hsw.fixed_enable_delay = 600,
 		},
@@ -4943,7 +4842,6 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &icl_aux_power_well_regs,
 			.hsw.idx = XELPD_PW_CTL_IDX_AUX_E,
 		},
 	},
@@ -4953,7 +4851,6 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &icl_aux_power_well_regs,
 			.hsw.idx = TGL_PW_CTL_IDX_AUX_TC1,
 			.hsw.fixed_enable_delay = 600,
 		},
@@ -4964,7 +4861,6 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &icl_aux_power_well_regs,
 			.hsw.idx = TGL_PW_CTL_IDX_AUX_TC2,
 		},
 	},
@@ -4974,7 +4870,6 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &icl_aux_power_well_regs,
 			.hsw.idx = TGL_PW_CTL_IDX_AUX_TC3,
 		},
 	},
@@ -4984,7 +4879,6 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &icl_aux_power_well_regs,
 			.hsw.idx = TGL_PW_CTL_IDX_AUX_TC4,
 		},
 	},
@@ -4994,7 +4888,6 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &icl_aux_power_well_regs,
 			.hsw.idx = TGL_PW_CTL_IDX_AUX_TBT1,
 			.hsw.is_tc_tbt = true,
 		},
@@ -5005,7 +4898,6 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &icl_aux_power_well_regs,
 			.hsw.idx = TGL_PW_CTL_IDX_AUX_TBT2,
 			.hsw.is_tc_tbt = true,
 		},
@@ -5016,7 +4908,6 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &icl_aux_power_well_regs,
 			.hsw.idx = TGL_PW_CTL_IDX_AUX_TBT3,
 			.hsw.is_tc_tbt = true,
 		},
@@ -5027,7 +4918,6 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &icl_aux_power_well_regs,
 			.hsw.idx = TGL_PW_CTL_IDX_AUX_TBT4,
 			.hsw.is_tc_tbt = true,
 		},
-- 
2.27.0

