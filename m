Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AD8FE49F8AA
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Jan 2022 12:49:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 77C7F10E813;
	Fri, 28 Jan 2022 11:49:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5D5A110E714
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Jan 2022 11:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643370562; x=1674906562;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=+48owvErcoVuu8H01G41Ys4L8rL7Sa4ENcx8zkKh3zw=;
 b=TRhzZ7Xi1XdVo0h7Hxut4jNI56ntNCx0J4ZMKdkw8EjntBKkVqaUolPS
 FN5wmAapScXKNhK4417KhFVEpa8C5SunKApm8dHm5eA2TEDxFR/BubXpU
 kLRC7SGHYJ4wejfaLVgPcgI2r6SyBpr/DVwfXmRppww6gPPRm4BUeUhhs
 plxoYE69oBPiltEr02uPuPlujl5a+Wk3aDBqIBFYVZT6jasVohUNUoCgS
 nsPtUwaLv5rbZ4P2zE82oY9s89QUnInctEO43dnXfyqyhfRv7fhokM3Z8
 64MS/isEt0lsupO0zaRdf/PYiKPnVOQ3xHbT3BNf8M+t4YIiOyrvPUQXP w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10240"; a="310420919"
X-IronPort-AV: E=Sophos;i="5.88,323,1635231600"; d="scan'208";a="310420919"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2022 03:49:22 -0800
X-IronPort-AV: E=Sophos;i="5.88,323,1635231600"; d="scan'208";a="480712819"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2022 03:49:20 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 28 Jan 2022 13:48:58 +0200
Message-Id: <20220128114914.2339526-4-imre.deak@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20220128114914.2339526-1-imre.deak@intel.com>
References: <20220128114914.2339526-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 03/19] drm/i915: Move the i915_power_well_regs
 struct into i915_power_well_ops
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
---
 .../drm/i915/display/intel_display_power.c    | 256 +++++-------------
 1 file changed, 73 insertions(+), 183 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index b500cc94ded75..72e8eb82f3c74 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -45,7 +45,15 @@
 	for_each_power_well_reverse(__dev_priv, __power_well)		        \
 		for_each_if((__power_well)->desc->domains & (__domain_mask))
 
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
@@ -72,13 +80,6 @@ struct i915_power_well_ops {
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
@@ -102,7 +103,6 @@ struct i915_power_well_desc {
 			enum dpio_phy phy;
 		} bxt;
 		struct {
-			const struct i915_power_well_regs *regs;
 			/*
 			 * request/status flag index in the power well
 			 * constrol/status registers.
@@ -457,7 +457,7 @@ static void hsw_wait_for_power_well_enable(struct drm_i915_private *dev_priv,
 					   struct i915_power_well *power_well,
 					   bool timeout_expected)
 {
-	const struct i915_power_well_regs *regs = power_well->desc->hsw.regs;
+	const struct i915_power_well_regs *regs = power_well->desc->ops->regs;
 	int pw_idx = power_well->desc->hsw.idx;
 	int enable_delay = power_well->desc->hsw.fixed_enable_delay;
 
@@ -501,7 +501,7 @@ static u32 hsw_power_well_requesters(struct drm_i915_private *dev_priv,
 static void hsw_wait_for_power_well_disable(struct drm_i915_private *dev_priv,
 					    struct i915_power_well *power_well)
 {
-	const struct i915_power_well_regs *regs = power_well->desc->hsw.regs;
+	const struct i915_power_well_regs *regs = power_well->desc->ops->regs;
 	int pw_idx = power_well->desc->hsw.idx;
 	bool disabled;
 	u32 reqs;
@@ -539,7 +539,7 @@ static void gen9_wait_for_power_well_fuses(struct drm_i915_private *dev_priv,
 static void hsw_power_well_enable(struct drm_i915_private *dev_priv,
 				  struct i915_power_well *power_well)
 {
-	const struct i915_power_well_regs *regs = power_well->desc->hsw.regs;
+	const struct i915_power_well_regs *regs = power_well->desc->ops->regs;
 	int pw_idx = power_well->desc->hsw.idx;
 	u32 val;
 
@@ -586,7 +586,7 @@ static void hsw_power_well_enable(struct drm_i915_private *dev_priv,
 static void hsw_power_well_disable(struct drm_i915_private *dev_priv,
 				   struct i915_power_well *power_well)
 {
-	const struct i915_power_well_regs *regs = power_well->desc->hsw.regs;
+	const struct i915_power_well_regs *regs = power_well->desc->ops->regs;
 	int pw_idx = power_well->desc->hsw.idx;
 	u32 val;
 
@@ -603,7 +603,7 @@ static void
 icl_combo_phy_aux_power_well_enable(struct drm_i915_private *dev_priv,
 				    struct i915_power_well *power_well)
 {
-	const struct i915_power_well_regs *regs = power_well->desc->hsw.regs;
+	const struct i915_power_well_regs *regs = power_well->desc->ops->regs;
 	int pw_idx = power_well->desc->hsw.idx;
 	enum phy phy = icl_aux_pw_to_phy(dev_priv, power_well);
 	u32 val;
@@ -635,7 +635,7 @@ static void
 icl_combo_phy_aux_power_well_disable(struct drm_i915_private *dev_priv,
 				     struct i915_power_well *power_well)
 {
-	const struct i915_power_well_regs *regs = power_well->desc->hsw.regs;
+	const struct i915_power_well_regs *regs = power_well->desc->ops->regs;
 	int pw_idx = power_well->desc->hsw.idx;
 	enum phy phy = icl_aux_pw_to_phy(dev_priv, power_well);
 	u32 val;
@@ -725,7 +725,7 @@ icl_tc_phy_aux_power_well_enable(struct drm_i915_private *dev_priv,
 {
 	enum aux_ch aux_ch = icl_aux_pw_to_ch(power_well);
 	struct intel_digital_port *dig_port = aux_ch_to_digital_port(dev_priv, aux_ch);
-	const struct i915_power_well_regs *regs = power_well->desc->hsw.regs;
+	const struct i915_power_well_regs *regs = power_well->desc->ops->regs;
 	bool is_tbt = power_well->desc->hsw.is_tc_tbt;
 	bool timeout_expected;
 	u32 val;
@@ -817,7 +817,7 @@ icl_aux_power_well_disable(struct drm_i915_private *dev_priv,
 static bool hsw_power_well_enabled(struct drm_i915_private *dev_priv,
 				   struct i915_power_well *power_well)
 {
-	const struct i915_power_well_regs *regs = power_well->desc->hsw.regs;
+	const struct i915_power_well_regs *regs = power_well->desc->ops->regs;
 	enum i915_power_well_id id = power_well->desc->id;
 	int pw_idx = power_well->desc->hsw.idx;
 	u32 mask = HSW_PWR_WELL_CTL_REQ(pw_idx) |
@@ -1227,7 +1227,7 @@ static void skl_enable_dc6(struct drm_i915_private *dev_priv)
 static void hsw_power_well_sync_hw(struct drm_i915_private *dev_priv,
 				   struct i915_power_well *power_well)
 {
-	const struct i915_power_well_regs *regs = power_well->desc->hsw.regs;
+	const struct i915_power_well_regs *regs = power_well->desc->ops->regs;
 	int pw_idx = power_well->desc->hsw.idx;
 	u32 mask = HSW_PWR_WELL_CTL_REQ(pw_idx);
 	u32 bios_req = intel_de_read(dev_priv, regs->bios);
@@ -3299,7 +3299,15 @@ static const struct i915_power_well_desc i830_power_wells[] = {
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
@@ -3320,13 +3328,6 @@ static const struct i915_power_well_ops bxt_dpio_cmn_power_well_ops = {
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
@@ -3341,7 +3342,6 @@ static const struct i915_power_well_desc hsw_power_wells[] = {
 		.ops = &hsw_power_well_ops,
 		.id = HSW_DISP_PW_GLOBAL,
 		{
-			.hsw.regs = &hsw_power_well_regs,
 			.hsw.idx = HSW_PW_CTL_IDX_GLOBAL,
 			.hsw.has_vga = true,
 		},
@@ -3362,7 +3362,6 @@ static const struct i915_power_well_desc bdw_power_wells[] = {
 		.ops = &hsw_power_well_ops,
 		.id = HSW_DISP_PW_GLOBAL,
 		{
-			.hsw.regs = &hsw_power_well_regs,
 			.hsw.idx = HSW_PW_CTL_IDX_GLOBAL,
 			.hsw.irq_pipe_mask = BIT(PIPE_B) | BIT(PIPE_C),
 			.hsw.has_vga = true,
@@ -3534,7 +3533,6 @@ static const struct i915_power_well_desc skl_power_wells[] = {
 		.ops = &hsw_power_well_ops,
 		.id = SKL_DISP_PW_1,
 		{
-			.hsw.regs = &hsw_power_well_regs,
 			.hsw.idx = SKL_PW_CTL_IDX_PW_1,
 			.hsw.has_fuses = true,
 		},
@@ -3547,7 +3545,6 @@ static const struct i915_power_well_desc skl_power_wells[] = {
 		.ops = &hsw_power_well_ops,
 		.id = SKL_DISP_PW_MISC_IO,
 		{
-			.hsw.regs = &hsw_power_well_regs,
 			.hsw.idx = SKL_PW_CTL_IDX_MISC_IO,
 		},
 	},
@@ -3563,7 +3560,6 @@ static const struct i915_power_well_desc skl_power_wells[] = {
 		.ops = &hsw_power_well_ops,
 		.id = SKL_DISP_PW_2,
 		{
-			.hsw.regs = &hsw_power_well_regs,
 			.hsw.idx = SKL_PW_CTL_IDX_PW_2,
 			.hsw.irq_pipe_mask = BIT(PIPE_B) | BIT(PIPE_C),
 			.hsw.has_vga = true,
@@ -3576,7 +3572,6 @@ static const struct i915_power_well_desc skl_power_wells[] = {
 		.ops = &hsw_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &hsw_power_well_regs,
 			.hsw.idx = SKL_PW_CTL_IDX_DDI_A_E,
 		},
 	},
@@ -3586,7 +3581,6 @@ static const struct i915_power_well_desc skl_power_wells[] = {
 		.ops = &hsw_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &hsw_power_well_regs,
 			.hsw.idx = SKL_PW_CTL_IDX_DDI_B,
 		},
 	},
@@ -3596,7 +3590,6 @@ static const struct i915_power_well_desc skl_power_wells[] = {
 		.ops = &hsw_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &hsw_power_well_regs,
 			.hsw.idx = SKL_PW_CTL_IDX_DDI_C,
 		},
 	},
@@ -3606,7 +3599,6 @@ static const struct i915_power_well_desc skl_power_wells[] = {
 		.ops = &hsw_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &hsw_power_well_regs,
 			.hsw.idx = SKL_PW_CTL_IDX_DDI_D,
 		},
 	},
@@ -3628,7 +3620,6 @@ static const struct i915_power_well_desc bxt_power_wells[] = {
 		.ops = &hsw_power_well_ops,
 		.id = SKL_DISP_PW_1,
 		{
-			.hsw.regs = &hsw_power_well_regs,
 			.hsw.idx = SKL_PW_CTL_IDX_PW_1,
 			.hsw.has_fuses = true,
 		},
@@ -3645,7 +3636,6 @@ static const struct i915_power_well_desc bxt_power_wells[] = {
 		.ops = &hsw_power_well_ops,
 		.id = SKL_DISP_PW_2,
 		{
-			.hsw.regs = &hsw_power_well_regs,
 			.hsw.idx = SKL_PW_CTL_IDX_PW_2,
 			.hsw.irq_pipe_mask = BIT(PIPE_B) | BIT(PIPE_C),
 			.hsw.has_vga = true,
@@ -3688,7 +3678,6 @@ static const struct i915_power_well_desc glk_power_wells[] = {
 		.ops = &hsw_power_well_ops,
 		.id = SKL_DISP_PW_1,
 		{
-			.hsw.regs = &hsw_power_well_regs,
 			.hsw.idx = SKL_PW_CTL_IDX_PW_1,
 			.hsw.has_fuses = true,
 		},
@@ -3705,7 +3694,6 @@ static const struct i915_power_well_desc glk_power_wells[] = {
 		.ops = &hsw_power_well_ops,
 		.id = SKL_DISP_PW_2,
 		{
-			.hsw.regs = &hsw_power_well_regs,
 			.hsw.idx = SKL_PW_CTL_IDX_PW_2,
 			.hsw.irq_pipe_mask = BIT(PIPE_B) | BIT(PIPE_C),
 			.hsw.has_vga = true,
@@ -3745,7 +3733,6 @@ static const struct i915_power_well_desc glk_power_wells[] = {
 		.ops = &hsw_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &hsw_power_well_regs,
 			.hsw.idx = GLK_PW_CTL_IDX_AUX_A,
 		},
 	},
@@ -3755,7 +3742,6 @@ static const struct i915_power_well_desc glk_power_wells[] = {
 		.ops = &hsw_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &hsw_power_well_regs,
 			.hsw.idx = GLK_PW_CTL_IDX_AUX_B,
 		},
 	},
@@ -3765,7 +3751,6 @@ static const struct i915_power_well_desc glk_power_wells[] = {
 		.ops = &hsw_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &hsw_power_well_regs,
 			.hsw.idx = GLK_PW_CTL_IDX_AUX_C,
 		},
 	},
@@ -3775,7 +3760,6 @@ static const struct i915_power_well_desc glk_power_wells[] = {
 		.ops = &hsw_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &hsw_power_well_regs,
 			.hsw.idx = GLK_PW_CTL_IDX_DDI_A,
 		},
 	},
@@ -3785,7 +3769,6 @@ static const struct i915_power_well_desc glk_power_wells[] = {
 		.ops = &hsw_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &hsw_power_well_regs,
 			.hsw.idx = SKL_PW_CTL_IDX_DDI_B,
 		},
 	},
@@ -3795,31 +3778,39 @@ static const struct i915_power_well_desc glk_power_wells[] = {
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
@@ -3836,7 +3827,6 @@ static const struct i915_power_well_desc icl_power_wells[] = {
 		.ops = &hsw_power_well_ops,
 		.id = SKL_DISP_PW_1,
 		{
-			.hsw.regs = &hsw_power_well_regs,
 			.hsw.idx = ICL_PW_CTL_IDX_PW_1,
 			.hsw.has_fuses = true,
 		},
@@ -3853,7 +3843,6 @@ static const struct i915_power_well_desc icl_power_wells[] = {
 		.ops = &hsw_power_well_ops,
 		.id = SKL_DISP_PW_2,
 		{
-			.hsw.regs = &hsw_power_well_regs,
 			.hsw.idx = ICL_PW_CTL_IDX_PW_2,
 			.hsw.has_fuses = true,
 		},
@@ -3864,7 +3853,6 @@ static const struct i915_power_well_desc icl_power_wells[] = {
 		.ops = &hsw_power_well_ops,
 		.id = ICL_DISP_PW_3,
 		{
-			.hsw.regs = &hsw_power_well_regs,
 			.hsw.idx = ICL_PW_CTL_IDX_PW_3,
 			.hsw.irq_pipe_mask = BIT(PIPE_B),
 			.hsw.has_vga = true,
@@ -3874,60 +3862,54 @@ static const struct i915_power_well_desc icl_power_wells[] = {
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
@@ -3937,7 +3919,6 @@ static const struct i915_power_well_desc icl_power_wells[] = {
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &icl_aux_power_well_regs,
 			.hsw.idx = ICL_PW_CTL_IDX_AUX_A,
 		},
 	},
@@ -3947,7 +3928,6 @@ static const struct i915_power_well_desc icl_power_wells[] = {
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &icl_aux_power_well_regs,
 			.hsw.idx = ICL_PW_CTL_IDX_AUX_B,
 		},
 	},
@@ -3957,7 +3937,6 @@ static const struct i915_power_well_desc icl_power_wells[] = {
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &icl_aux_power_well_regs,
 			.hsw.idx = ICL_PW_CTL_IDX_AUX_C,
 			.hsw.is_tc_tbt = false,
 		},
@@ -3968,7 +3947,6 @@ static const struct i915_power_well_desc icl_power_wells[] = {
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &icl_aux_power_well_regs,
 			.hsw.idx = ICL_PW_CTL_IDX_AUX_D,
 			.hsw.is_tc_tbt = false,
 		},
@@ -3979,7 +3957,6 @@ static const struct i915_power_well_desc icl_power_wells[] = {
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &icl_aux_power_well_regs,
 			.hsw.idx = ICL_PW_CTL_IDX_AUX_E,
 			.hsw.is_tc_tbt = false,
 		},
@@ -3990,7 +3967,6 @@ static const struct i915_power_well_desc icl_power_wells[] = {
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &icl_aux_power_well_regs,
 			.hsw.idx = ICL_PW_CTL_IDX_AUX_F,
 			.hsw.is_tc_tbt = false,
 		},
@@ -4001,7 +3977,6 @@ static const struct i915_power_well_desc icl_power_wells[] = {
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &icl_aux_power_well_regs,
 			.hsw.idx = ICL_PW_CTL_IDX_AUX_TBT1,
 			.hsw.is_tc_tbt = true,
 		},
@@ -4012,7 +3987,6 @@ static const struct i915_power_well_desc icl_power_wells[] = {
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &icl_aux_power_well_regs,
 			.hsw.idx = ICL_PW_CTL_IDX_AUX_TBT2,
 			.hsw.is_tc_tbt = true,
 		},
@@ -4023,7 +3997,6 @@ static const struct i915_power_well_desc icl_power_wells[] = {
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &icl_aux_power_well_regs,
 			.hsw.idx = ICL_PW_CTL_IDX_AUX_TBT3,
 			.hsw.is_tc_tbt = true,
 		},
@@ -4034,7 +4007,6 @@ static const struct i915_power_well_desc icl_power_wells[] = {
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &icl_aux_power_well_regs,
 			.hsw.idx = ICL_PW_CTL_IDX_AUX_TBT4,
 			.hsw.is_tc_tbt = true,
 		},
@@ -4045,7 +4017,6 @@ static const struct i915_power_well_desc icl_power_wells[] = {
 		.ops = &hsw_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &hsw_power_well_regs,
 			.hsw.idx = ICL_PW_CTL_IDX_PW_4,
 			.hsw.has_fuses = true,
 			.hsw.irq_pipe_mask = BIT(PIPE_C),
@@ -4153,7 +4124,6 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
 		.ops = &hsw_power_well_ops,
 		.id = SKL_DISP_PW_1,
 		{
-			.hsw.regs = &hsw_power_well_regs,
 			.hsw.idx = ICL_PW_CTL_IDX_PW_1,
 			.hsw.has_fuses = true,
 		},
@@ -4170,7 +4140,6 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
 		.ops = &hsw_power_well_ops,
 		.id = SKL_DISP_PW_2,
 		{
-			.hsw.regs = &hsw_power_well_regs,
 			.hsw.idx = ICL_PW_CTL_IDX_PW_2,
 			.hsw.has_fuses = true,
 		},
@@ -4181,7 +4150,6 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
 		.ops = &hsw_power_well_ops,
 		.id = ICL_DISP_PW_3,
 		{
-			.hsw.regs = &hsw_power_well_regs,
 			.hsw.idx = ICL_PW_CTL_IDX_PW_3,
 			.hsw.irq_pipe_mask = BIT(PIPE_B),
 			.hsw.has_vga = true,
@@ -4191,90 +4159,81 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
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
@@ -4290,7 +4249,6 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &icl_aux_power_well_regs,
 			.hsw.idx = ICL_PW_CTL_IDX_AUX_A,
 		},
 	},
@@ -4300,7 +4258,6 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &icl_aux_power_well_regs,
 			.hsw.idx = ICL_PW_CTL_IDX_AUX_B,
 		},
 	},
@@ -4310,7 +4267,6 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &icl_aux_power_well_regs,
 			.hsw.idx = ICL_PW_CTL_IDX_AUX_C,
 		},
 	},
@@ -4320,7 +4276,6 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &icl_aux_power_well_regs,
 			.hsw.idx = TGL_PW_CTL_IDX_AUX_TC1,
 			.hsw.is_tc_tbt = false,
 		},
@@ -4331,7 +4286,6 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &icl_aux_power_well_regs,
 			.hsw.idx = TGL_PW_CTL_IDX_AUX_TC2,
 			.hsw.is_tc_tbt = false,
 		},
@@ -4342,7 +4296,6 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &icl_aux_power_well_regs,
 			.hsw.idx = TGL_PW_CTL_IDX_AUX_TC3,
 			.hsw.is_tc_tbt = false,
 		},
@@ -4353,7 +4306,6 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &icl_aux_power_well_regs,
 			.hsw.idx = TGL_PW_CTL_IDX_AUX_TC4,
 			.hsw.is_tc_tbt = false,
 		},
@@ -4364,7 +4316,6 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &icl_aux_power_well_regs,
 			.hsw.idx = TGL_PW_CTL_IDX_AUX_TC5,
 			.hsw.is_tc_tbt = false,
 		},
@@ -4375,7 +4326,6 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &icl_aux_power_well_regs,
 			.hsw.idx = TGL_PW_CTL_IDX_AUX_TC6,
 			.hsw.is_tc_tbt = false,
 		},
@@ -4386,7 +4336,6 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &icl_aux_power_well_regs,
 			.hsw.idx = TGL_PW_CTL_IDX_AUX_TBT1,
 			.hsw.is_tc_tbt = true,
 		},
@@ -4397,7 +4346,6 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &icl_aux_power_well_regs,
 			.hsw.idx = TGL_PW_CTL_IDX_AUX_TBT2,
 			.hsw.is_tc_tbt = true,
 		},
@@ -4408,7 +4356,6 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &icl_aux_power_well_regs,
 			.hsw.idx = TGL_PW_CTL_IDX_AUX_TBT3,
 			.hsw.is_tc_tbt = true,
 		},
@@ -4419,7 +4366,6 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &icl_aux_power_well_regs,
 			.hsw.idx = TGL_PW_CTL_IDX_AUX_TBT4,
 			.hsw.is_tc_tbt = true,
 		},
@@ -4430,7 +4376,6 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &icl_aux_power_well_regs,
 			.hsw.idx = TGL_PW_CTL_IDX_AUX_TBT5,
 			.hsw.is_tc_tbt = true,
 		},
@@ -4441,7 +4386,6 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &icl_aux_power_well_regs,
 			.hsw.idx = TGL_PW_CTL_IDX_AUX_TBT6,
 			.hsw.is_tc_tbt = true,
 		},
@@ -4452,7 +4396,6 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
 		.ops = &hsw_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &hsw_power_well_regs,
 			.hsw.idx = ICL_PW_CTL_IDX_PW_4,
 			.hsw.has_fuses = true,
 			.hsw.irq_pipe_mask = BIT(PIPE_C),
@@ -4464,7 +4407,6 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
 		.ops = &hsw_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &hsw_power_well_regs,
 			.hsw.idx = TGL_PW_CTL_IDX_PW_5,
 			.hsw.has_fuses = true,
 			.hsw.irq_pipe_mask = BIT(PIPE_D),
@@ -4488,7 +4430,6 @@ static const struct i915_power_well_desc rkl_power_wells[] = {
 		.ops = &hsw_power_well_ops,
 		.id = SKL_DISP_PW_1,
 		{
-			.hsw.regs = &hsw_power_well_regs,
 			.hsw.idx = ICL_PW_CTL_IDX_PW_1,
 			.hsw.has_fuses = true,
 		},
@@ -4505,7 +4446,6 @@ static const struct i915_power_well_desc rkl_power_wells[] = {
 		.ops = &hsw_power_well_ops,
 		.id = ICL_DISP_PW_3,
 		{
-			.hsw.regs = &hsw_power_well_regs,
 			.hsw.idx = ICL_PW_CTL_IDX_PW_3,
 			.hsw.irq_pipe_mask = BIT(PIPE_B),
 			.hsw.has_vga = true,
@@ -4518,7 +4458,6 @@ static const struct i915_power_well_desc rkl_power_wells[] = {
 		.ops = &hsw_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &hsw_power_well_regs,
 			.hsw.idx = ICL_PW_CTL_IDX_PW_4,
 			.hsw.has_fuses = true,
 			.hsw.irq_pipe_mask = BIT(PIPE_C),
@@ -4527,40 +4466,36 @@ static const struct i915_power_well_desc rkl_power_wells[] = {
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
@@ -4570,7 +4505,6 @@ static const struct i915_power_well_desc rkl_power_wells[] = {
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &icl_aux_power_well_regs,
 			.hsw.idx = ICL_PW_CTL_IDX_AUX_A,
 		},
 	},
@@ -4580,7 +4514,6 @@ static const struct i915_power_well_desc rkl_power_wells[] = {
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &icl_aux_power_well_regs,
 			.hsw.idx = ICL_PW_CTL_IDX_AUX_B,
 		},
 	},
@@ -4590,7 +4523,6 @@ static const struct i915_power_well_desc rkl_power_wells[] = {
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &icl_aux_power_well_regs,
 			.hsw.idx = TGL_PW_CTL_IDX_AUX_TC1,
 		},
 	},
@@ -4600,7 +4532,6 @@ static const struct i915_power_well_desc rkl_power_wells[] = {
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &icl_aux_power_well_regs,
 			.hsw.idx = TGL_PW_CTL_IDX_AUX_TC2,
 		},
 	},
@@ -4622,7 +4553,6 @@ static const struct i915_power_well_desc dg1_power_wells[] = {
 		.ops = &hsw_power_well_ops,
 		.id = SKL_DISP_PW_1,
 		{
-			.hsw.regs = &hsw_power_well_regs,
 			.hsw.idx = ICL_PW_CTL_IDX_PW_1,
 			.hsw.has_fuses = true,
 		},
@@ -4639,7 +4569,6 @@ static const struct i915_power_well_desc dg1_power_wells[] = {
 		.ops = &hsw_power_well_ops,
 		.id = SKL_DISP_PW_2,
 		{
-			.hsw.regs = &hsw_power_well_regs,
 			.hsw.idx = ICL_PW_CTL_IDX_PW_2,
 			.hsw.has_fuses = true,
 		},
@@ -4650,7 +4579,6 @@ static const struct i915_power_well_desc dg1_power_wells[] = {
 		.ops = &hsw_power_well_ops,
 		.id = ICL_DISP_PW_3,
 		{
-			.hsw.regs = &hsw_power_well_regs,
 			.hsw.idx = ICL_PW_CTL_IDX_PW_3,
 			.hsw.irq_pipe_mask = BIT(PIPE_B),
 			.hsw.has_vga = true,
@@ -4660,40 +4588,36 @@ static const struct i915_power_well_desc dg1_power_wells[] = {
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
@@ -4703,7 +4627,6 @@ static const struct i915_power_well_desc dg1_power_wells[] = {
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &icl_aux_power_well_regs,
 			.hsw.idx = ICL_PW_CTL_IDX_AUX_A,
 		},
 	},
@@ -4713,7 +4636,6 @@ static const struct i915_power_well_desc dg1_power_wells[] = {
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &icl_aux_power_well_regs,
 			.hsw.idx = ICL_PW_CTL_IDX_AUX_B,
 		},
 	},
@@ -4723,7 +4645,6 @@ static const struct i915_power_well_desc dg1_power_wells[] = {
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &icl_aux_power_well_regs,
 			.hsw.idx = TGL_PW_CTL_IDX_AUX_TC1,
 			.hsw.is_tc_tbt = false,
 		},
@@ -4734,7 +4655,6 @@ static const struct i915_power_well_desc dg1_power_wells[] = {
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &icl_aux_power_well_regs,
 			.hsw.idx = TGL_PW_CTL_IDX_AUX_TC2,
 			.hsw.is_tc_tbt = false,
 		},
@@ -4745,7 +4665,6 @@ static const struct i915_power_well_desc dg1_power_wells[] = {
 		.ops = &hsw_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &hsw_power_well_regs,
 			.hsw.idx = ICL_PW_CTL_IDX_PW_4,
 			.hsw.has_fuses = true,
 			.hsw.irq_pipe_mask = BIT(PIPE_C),
@@ -4757,7 +4676,6 @@ static const struct i915_power_well_desc dg1_power_wells[] = {
 		.ops = &hsw_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &hsw_power_well_regs,
 			.hsw.idx = TGL_PW_CTL_IDX_PW_5,
 			.hsw.has_fuses = true,
 			.hsw.irq_pipe_mask = BIT(PIPE_D),
@@ -4781,7 +4699,6 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
 		.ops = &hsw_power_well_ops,
 		.id = SKL_DISP_PW_1,
 		{
-			.hsw.regs = &hsw_power_well_regs,
 			.hsw.idx = ICL_PW_CTL_IDX_PW_1,
 			.hsw.has_fuses = true,
 		},
@@ -4798,7 +4715,6 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
 		.ops = &hsw_power_well_ops,
 		.id = SKL_DISP_PW_2,
 		{
-			.hsw.regs = &hsw_power_well_regs,
 			.hsw.idx = ICL_PW_CTL_IDX_PW_2,
 			.hsw.has_vga = true,
 			.hsw.has_fuses = true,
@@ -4810,7 +4726,6 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
 		.ops = &hsw_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &hsw_power_well_regs,
 			.hsw.idx = XELPD_PW_CTL_IDX_PW_A,
 			.hsw.irq_pipe_mask = BIT(PIPE_A),
 			.hsw.has_fuses = true,
@@ -4822,7 +4737,6 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
 		.ops = &hsw_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &hsw_power_well_regs,
 			.hsw.idx = XELPD_PW_CTL_IDX_PW_B,
 			.hsw.irq_pipe_mask = BIT(PIPE_B),
 			.hsw.has_fuses = true,
@@ -4834,7 +4748,6 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
 		.ops = &hsw_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &hsw_power_well_regs,
 			.hsw.idx = XELPD_PW_CTL_IDX_PW_C,
 			.hsw.irq_pipe_mask = BIT(PIPE_C),
 			.hsw.has_fuses = true,
@@ -4846,7 +4759,6 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
 		.ops = &hsw_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &hsw_power_well_regs,
 			.hsw.idx = XELPD_PW_CTL_IDX_PW_D,
 			.hsw.irq_pipe_mask = BIT(PIPE_D),
 			.hsw.has_fuses = true,
@@ -4855,90 +4767,81 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
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
@@ -4948,7 +4851,6 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &icl_aux_power_well_regs,
 			.hsw.idx = ICL_PW_CTL_IDX_AUX_A,
 			.hsw.fixed_enable_delay = 600,
 		},
@@ -4959,7 +4861,6 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &icl_aux_power_well_regs,
 			.hsw.idx = ICL_PW_CTL_IDX_AUX_B,
 			.hsw.fixed_enable_delay = 600,
 		},
@@ -4970,7 +4871,6 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &icl_aux_power_well_regs,
 			.hsw.idx = ICL_PW_CTL_IDX_AUX_C,
 			.hsw.fixed_enable_delay = 600,
 		},
@@ -4981,7 +4881,6 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &icl_aux_power_well_regs,
 			.hsw.idx = XELPD_PW_CTL_IDX_AUX_D,
 			.hsw.fixed_enable_delay = 600,
 		},
@@ -4992,7 +4891,6 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &icl_aux_power_well_regs,
 			.hsw.idx = XELPD_PW_CTL_IDX_AUX_E,
 		},
 	},
@@ -5002,7 +4900,6 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &icl_aux_power_well_regs,
 			.hsw.idx = TGL_PW_CTL_IDX_AUX_TC1,
 			.hsw.fixed_enable_delay = 600,
 		},
@@ -5013,7 +4910,6 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &icl_aux_power_well_regs,
 			.hsw.idx = TGL_PW_CTL_IDX_AUX_TC2,
 		},
 	},
@@ -5023,7 +4919,6 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &icl_aux_power_well_regs,
 			.hsw.idx = TGL_PW_CTL_IDX_AUX_TC3,
 		},
 	},
@@ -5033,7 +4928,6 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &icl_aux_power_well_regs,
 			.hsw.idx = TGL_PW_CTL_IDX_AUX_TC4,
 		},
 	},
@@ -5043,7 +4937,6 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &icl_aux_power_well_regs,
 			.hsw.idx = TGL_PW_CTL_IDX_AUX_TBT1,
 			.hsw.is_tc_tbt = true,
 		},
@@ -5054,7 +4947,6 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &icl_aux_power_well_regs,
 			.hsw.idx = TGL_PW_CTL_IDX_AUX_TBT2,
 			.hsw.is_tc_tbt = true,
 		},
@@ -5065,7 +4957,6 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &icl_aux_power_well_regs,
 			.hsw.idx = TGL_PW_CTL_IDX_AUX_TBT3,
 			.hsw.is_tc_tbt = true,
 		},
@@ -5076,7 +4967,6 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &icl_aux_power_well_regs,
 			.hsw.idx = TGL_PW_CTL_IDX_AUX_TBT4,
 			.hsw.is_tc_tbt = true,
 		},
-- 
2.27.0

