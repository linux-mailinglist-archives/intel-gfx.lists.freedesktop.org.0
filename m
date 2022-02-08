Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D3314AD77C
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Feb 2022 12:37:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2602C10E601;
	Tue,  8 Feb 2022 11:37:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 152FF10E327
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Feb 2022 11:37:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644320226; x=1675856226;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=Ze8MWlIatw2y0h1qgjWt0zWtkhHqUcXT35aTKgpNdgg=;
 b=Cr0qOaz4Wiu33OBSCS6txEo4l7zwGWYDqGMo3joKBAFgmY+dHYqxqCm+
 9HVVY0oZAp/+Mkc+9lpyPjjYtHURtSuanmhjU0Vv7jxTH2pM5te+4g+s9
 xRPTizWxbrwOdGHXSsbKhkTK4gbARSf4nq39qFchR3qSHs9hGeWPNfPik
 BpeHn2t+uGIefYKi86PIrcMfq+Bb94vDDVKaHzB6EIPT+0zkevUz8/QcO
 XpScAERu3nkW80NEX1CXMw0Y4cY/UX0cs/SvxpHi8WmWYnbWi0wkyk+4/
 OXj7cc1lPuIaOEOoAUAtLh+bXYLy4zrDJEMxaGTtHAdMTNBLXu7/dTzME g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10251"; a="273458824"
X-IronPort-AV: E=Sophos;i="5.88,352,1635231600"; d="scan'208";a="273458824"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2022 03:37:05 -0800
X-IronPort-AV: E=Sophos;i="5.88,352,1635231600"; d="scan'208";a="481915239"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2022 03:37:04 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  8 Feb 2022 13:36:34 +0200
Message-Id: <20220208113656.179823-5-imre.deak@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20220208113656.179823-1-imre.deak@intel.com>
References: <20220208113656.179823-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 04/26] drm/i915: Move i915_power_well_regs
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
index 621aa890ff6f4..3269a08435e35 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -25,7 +25,15 @@
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
@@ -52,13 +60,6 @@ struct i915_power_well_ops {
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
@@ -82,7 +83,6 @@ struct i915_power_well_desc {
 			enum dpio_phy phy;
 		} bxt;
 		struct {
-			const struct i915_power_well_regs *regs;
 			/*
 			 * request/status flag index in the power well
 			 * constrol/status registers.
@@ -437,7 +437,7 @@ static void hsw_wait_for_power_well_enable(struct drm_i915_private *dev_priv,
 					   struct i915_power_well *power_well,
 					   bool timeout_expected)
 {
-	const struct i915_power_well_regs *regs = power_well->desc->hsw.regs;
+	const struct i915_power_well_regs *regs = power_well->desc->ops->regs;
 	int pw_idx = power_well->desc->hsw.idx;
 	int enable_delay = power_well->desc->hsw.fixed_enable_delay;
 
@@ -481,7 +481,7 @@ static u32 hsw_power_well_requesters(struct drm_i915_private *dev_priv,
 static void hsw_wait_for_power_well_disable(struct drm_i915_private *dev_priv,
 					    struct i915_power_well *power_well)
 {
-	const struct i915_power_well_regs *regs = power_well->desc->hsw.regs;
+	const struct i915_power_well_regs *regs = power_well->desc->ops->regs;
 	int pw_idx = power_well->desc->hsw.idx;
 	bool disabled;
 	u32 reqs;
@@ -519,7 +519,7 @@ static void gen9_wait_for_power_well_fuses(struct drm_i915_private *dev_priv,
 static void hsw_power_well_enable(struct drm_i915_private *dev_priv,
 				  struct i915_power_well *power_well)
 {
-	const struct i915_power_well_regs *regs = power_well->desc->hsw.regs;
+	const struct i915_power_well_regs *regs = power_well->desc->ops->regs;
 	int pw_idx = power_well->desc->hsw.idx;
 	u32 val;
 
@@ -566,7 +566,7 @@ static void hsw_power_well_enable(struct drm_i915_private *dev_priv,
 static void hsw_power_well_disable(struct drm_i915_private *dev_priv,
 				   struct i915_power_well *power_well)
 {
-	const struct i915_power_well_regs *regs = power_well->desc->hsw.regs;
+	const struct i915_power_well_regs *regs = power_well->desc->ops->regs;
 	int pw_idx = power_well->desc->hsw.idx;
 	u32 val;
 
@@ -583,7 +583,7 @@ static void
 icl_combo_phy_aux_power_well_enable(struct drm_i915_private *dev_priv,
 				    struct i915_power_well *power_well)
 {
-	const struct i915_power_well_regs *regs = power_well->desc->hsw.regs;
+	const struct i915_power_well_regs *regs = power_well->desc->ops->regs;
 	int pw_idx = power_well->desc->hsw.idx;
 	enum phy phy = icl_aux_pw_to_phy(dev_priv, power_well);
 	u32 val;
@@ -615,7 +615,7 @@ static void
 icl_combo_phy_aux_power_well_disable(struct drm_i915_private *dev_priv,
 				     struct i915_power_well *power_well)
 {
-	const struct i915_power_well_regs *regs = power_well->desc->hsw.regs;
+	const struct i915_power_well_regs *regs = power_well->desc->ops->regs;
 	int pw_idx = power_well->desc->hsw.idx;
 	enum phy phy = icl_aux_pw_to_phy(dev_priv, power_well);
 	u32 val;
@@ -687,7 +687,7 @@ icl_tc_phy_aux_power_well_enable(struct drm_i915_private *dev_priv,
 {
 	enum aux_ch aux_ch = icl_aux_pw_to_ch(power_well);
 	struct intel_digital_port *dig_port = aux_ch_to_digital_port(dev_priv, aux_ch);
-	const struct i915_power_well_regs *regs = power_well->desc->hsw.regs;
+	const struct i915_power_well_regs *regs = power_well->desc->ops->regs;
 	bool is_tbt = power_well->desc->hsw.is_tc_tbt;
 	bool timeout_expected;
 	u32 val;
@@ -767,7 +767,7 @@ icl_aux_power_well_disable(struct drm_i915_private *dev_priv,
 static bool hsw_power_well_enabled(struct drm_i915_private *dev_priv,
 				   struct i915_power_well *power_well)
 {
-	const struct i915_power_well_regs *regs = power_well->desc->hsw.regs;
+	const struct i915_power_well_regs *regs = power_well->desc->ops->regs;
 	enum i915_power_well_id id = power_well->desc->id;
 	int pw_idx = power_well->desc->hsw.idx;
 	u32 mask = HSW_PWR_WELL_CTL_REQ(pw_idx) |
@@ -1177,7 +1177,7 @@ static void skl_enable_dc6(struct drm_i915_private *dev_priv)
 static void hsw_power_well_sync_hw(struct drm_i915_private *dev_priv,
 				   struct i915_power_well *power_well)
 {
-	const struct i915_power_well_regs *regs = power_well->desc->hsw.regs;
+	const struct i915_power_well_regs *regs = power_well->desc->ops->regs;
 	int pw_idx = power_well->desc->hsw.idx;
 	u32 mask = HSW_PWR_WELL_CTL_REQ(pw_idx);
 	u32 bios_req = intel_de_read(dev_priv, regs->bios);
@@ -3249,7 +3249,15 @@ static const struct i915_power_well_desc i830_power_wells[] = {
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
@@ -3270,13 +3278,6 @@ static const struct i915_power_well_ops bxt_dpio_cmn_power_well_ops = {
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
@@ -3291,7 +3292,6 @@ static const struct i915_power_well_desc hsw_power_wells[] = {
 		.ops = &hsw_power_well_ops,
 		.id = HSW_DISP_PW_GLOBAL,
 		{
-			.hsw.regs = &hsw_power_well_regs,
 			.hsw.idx = HSW_PW_CTL_IDX_GLOBAL,
 			.hsw.has_vga = true,
 		},
@@ -3312,7 +3312,6 @@ static const struct i915_power_well_desc bdw_power_wells[] = {
 		.ops = &hsw_power_well_ops,
 		.id = HSW_DISP_PW_GLOBAL,
 		{
-			.hsw.regs = &hsw_power_well_regs,
 			.hsw.idx = HSW_PW_CTL_IDX_GLOBAL,
 			.hsw.irq_pipe_mask = BIT(PIPE_B) | BIT(PIPE_C),
 			.hsw.has_vga = true,
@@ -3484,7 +3483,6 @@ static const struct i915_power_well_desc skl_power_wells[] = {
 		.ops = &hsw_power_well_ops,
 		.id = SKL_DISP_PW_1,
 		{
-			.hsw.regs = &hsw_power_well_regs,
 			.hsw.idx = SKL_PW_CTL_IDX_PW_1,
 			.hsw.has_fuses = true,
 		},
@@ -3497,7 +3495,6 @@ static const struct i915_power_well_desc skl_power_wells[] = {
 		.ops = &hsw_power_well_ops,
 		.id = SKL_DISP_PW_MISC_IO,
 		{
-			.hsw.regs = &hsw_power_well_regs,
 			.hsw.idx = SKL_PW_CTL_IDX_MISC_IO,
 		},
 	},
@@ -3513,7 +3510,6 @@ static const struct i915_power_well_desc skl_power_wells[] = {
 		.ops = &hsw_power_well_ops,
 		.id = SKL_DISP_PW_2,
 		{
-			.hsw.regs = &hsw_power_well_regs,
 			.hsw.idx = SKL_PW_CTL_IDX_PW_2,
 			.hsw.irq_pipe_mask = BIT(PIPE_B) | BIT(PIPE_C),
 			.hsw.has_vga = true,
@@ -3526,7 +3522,6 @@ static const struct i915_power_well_desc skl_power_wells[] = {
 		.ops = &hsw_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &hsw_power_well_regs,
 			.hsw.idx = SKL_PW_CTL_IDX_DDI_A_E,
 		},
 	},
@@ -3536,7 +3531,6 @@ static const struct i915_power_well_desc skl_power_wells[] = {
 		.ops = &hsw_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &hsw_power_well_regs,
 			.hsw.idx = SKL_PW_CTL_IDX_DDI_B,
 		},
 	},
@@ -3546,7 +3540,6 @@ static const struct i915_power_well_desc skl_power_wells[] = {
 		.ops = &hsw_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &hsw_power_well_regs,
 			.hsw.idx = SKL_PW_CTL_IDX_DDI_C,
 		},
 	},
@@ -3556,7 +3549,6 @@ static const struct i915_power_well_desc skl_power_wells[] = {
 		.ops = &hsw_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &hsw_power_well_regs,
 			.hsw.idx = SKL_PW_CTL_IDX_DDI_D,
 		},
 	},
@@ -3578,7 +3570,6 @@ static const struct i915_power_well_desc bxt_power_wells[] = {
 		.ops = &hsw_power_well_ops,
 		.id = SKL_DISP_PW_1,
 		{
-			.hsw.regs = &hsw_power_well_regs,
 			.hsw.idx = SKL_PW_CTL_IDX_PW_1,
 			.hsw.has_fuses = true,
 		},
@@ -3595,7 +3586,6 @@ static const struct i915_power_well_desc bxt_power_wells[] = {
 		.ops = &hsw_power_well_ops,
 		.id = SKL_DISP_PW_2,
 		{
-			.hsw.regs = &hsw_power_well_regs,
 			.hsw.idx = SKL_PW_CTL_IDX_PW_2,
 			.hsw.irq_pipe_mask = BIT(PIPE_B) | BIT(PIPE_C),
 			.hsw.has_vga = true,
@@ -3638,7 +3628,6 @@ static const struct i915_power_well_desc glk_power_wells[] = {
 		.ops = &hsw_power_well_ops,
 		.id = SKL_DISP_PW_1,
 		{
-			.hsw.regs = &hsw_power_well_regs,
 			.hsw.idx = SKL_PW_CTL_IDX_PW_1,
 			.hsw.has_fuses = true,
 		},
@@ -3655,7 +3644,6 @@ static const struct i915_power_well_desc glk_power_wells[] = {
 		.ops = &hsw_power_well_ops,
 		.id = SKL_DISP_PW_2,
 		{
-			.hsw.regs = &hsw_power_well_regs,
 			.hsw.idx = SKL_PW_CTL_IDX_PW_2,
 			.hsw.irq_pipe_mask = BIT(PIPE_B) | BIT(PIPE_C),
 			.hsw.has_vga = true,
@@ -3695,7 +3683,6 @@ static const struct i915_power_well_desc glk_power_wells[] = {
 		.ops = &hsw_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &hsw_power_well_regs,
 			.hsw.idx = GLK_PW_CTL_IDX_AUX_A,
 		},
 	},
@@ -3705,7 +3692,6 @@ static const struct i915_power_well_desc glk_power_wells[] = {
 		.ops = &hsw_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &hsw_power_well_regs,
 			.hsw.idx = GLK_PW_CTL_IDX_AUX_B,
 		},
 	},
@@ -3715,7 +3701,6 @@ static const struct i915_power_well_desc glk_power_wells[] = {
 		.ops = &hsw_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &hsw_power_well_regs,
 			.hsw.idx = GLK_PW_CTL_IDX_AUX_C,
 		},
 	},
@@ -3725,7 +3710,6 @@ static const struct i915_power_well_desc glk_power_wells[] = {
 		.ops = &hsw_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &hsw_power_well_regs,
 			.hsw.idx = GLK_PW_CTL_IDX_DDI_A,
 		},
 	},
@@ -3735,7 +3719,6 @@ static const struct i915_power_well_desc glk_power_wells[] = {
 		.ops = &hsw_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &hsw_power_well_regs,
 			.hsw.idx = SKL_PW_CTL_IDX_DDI_B,
 		},
 	},
@@ -3745,31 +3728,39 @@ static const struct i915_power_well_desc glk_power_wells[] = {
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
@@ -3786,7 +3777,6 @@ static const struct i915_power_well_desc icl_power_wells[] = {
 		.ops = &hsw_power_well_ops,
 		.id = SKL_DISP_PW_1,
 		{
-			.hsw.regs = &hsw_power_well_regs,
 			.hsw.idx = ICL_PW_CTL_IDX_PW_1,
 			.hsw.has_fuses = true,
 		},
@@ -3803,7 +3793,6 @@ static const struct i915_power_well_desc icl_power_wells[] = {
 		.ops = &hsw_power_well_ops,
 		.id = SKL_DISP_PW_2,
 		{
-			.hsw.regs = &hsw_power_well_regs,
 			.hsw.idx = ICL_PW_CTL_IDX_PW_2,
 			.hsw.has_fuses = true,
 		},
@@ -3814,7 +3803,6 @@ static const struct i915_power_well_desc icl_power_wells[] = {
 		.ops = &hsw_power_well_ops,
 		.id = ICL_DISP_PW_3,
 		{
-			.hsw.regs = &hsw_power_well_regs,
 			.hsw.idx = ICL_PW_CTL_IDX_PW_3,
 			.hsw.irq_pipe_mask = BIT(PIPE_B),
 			.hsw.has_vga = true,
@@ -3824,60 +3812,54 @@ static const struct i915_power_well_desc icl_power_wells[] = {
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
@@ -3887,7 +3869,6 @@ static const struct i915_power_well_desc icl_power_wells[] = {
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &icl_aux_power_well_regs,
 			.hsw.idx = ICL_PW_CTL_IDX_AUX_A,
 		},
 	},
@@ -3897,7 +3878,6 @@ static const struct i915_power_well_desc icl_power_wells[] = {
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &icl_aux_power_well_regs,
 			.hsw.idx = ICL_PW_CTL_IDX_AUX_B,
 		},
 	},
@@ -3907,7 +3887,6 @@ static const struct i915_power_well_desc icl_power_wells[] = {
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &icl_aux_power_well_regs,
 			.hsw.idx = ICL_PW_CTL_IDX_AUX_C,
 			.hsw.is_tc_tbt = false,
 		},
@@ -3918,7 +3897,6 @@ static const struct i915_power_well_desc icl_power_wells[] = {
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &icl_aux_power_well_regs,
 			.hsw.idx = ICL_PW_CTL_IDX_AUX_D,
 			.hsw.is_tc_tbt = false,
 		},
@@ -3929,7 +3907,6 @@ static const struct i915_power_well_desc icl_power_wells[] = {
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &icl_aux_power_well_regs,
 			.hsw.idx = ICL_PW_CTL_IDX_AUX_E,
 			.hsw.is_tc_tbt = false,
 		},
@@ -3940,7 +3917,6 @@ static const struct i915_power_well_desc icl_power_wells[] = {
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &icl_aux_power_well_regs,
 			.hsw.idx = ICL_PW_CTL_IDX_AUX_F,
 			.hsw.is_tc_tbt = false,
 		},
@@ -3951,7 +3927,6 @@ static const struct i915_power_well_desc icl_power_wells[] = {
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &icl_aux_power_well_regs,
 			.hsw.idx = ICL_PW_CTL_IDX_AUX_TBT1,
 			.hsw.is_tc_tbt = true,
 		},
@@ -3962,7 +3937,6 @@ static const struct i915_power_well_desc icl_power_wells[] = {
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &icl_aux_power_well_regs,
 			.hsw.idx = ICL_PW_CTL_IDX_AUX_TBT2,
 			.hsw.is_tc_tbt = true,
 		},
@@ -3973,7 +3947,6 @@ static const struct i915_power_well_desc icl_power_wells[] = {
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &icl_aux_power_well_regs,
 			.hsw.idx = ICL_PW_CTL_IDX_AUX_TBT3,
 			.hsw.is_tc_tbt = true,
 		},
@@ -3984,7 +3957,6 @@ static const struct i915_power_well_desc icl_power_wells[] = {
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &icl_aux_power_well_regs,
 			.hsw.idx = ICL_PW_CTL_IDX_AUX_TBT4,
 			.hsw.is_tc_tbt = true,
 		},
@@ -3995,7 +3967,6 @@ static const struct i915_power_well_desc icl_power_wells[] = {
 		.ops = &hsw_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &hsw_power_well_regs,
 			.hsw.idx = ICL_PW_CTL_IDX_PW_4,
 			.hsw.has_fuses = true,
 			.hsw.irq_pipe_mask = BIT(PIPE_C),
@@ -4103,7 +4074,6 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
 		.ops = &hsw_power_well_ops,
 		.id = SKL_DISP_PW_1,
 		{
-			.hsw.regs = &hsw_power_well_regs,
 			.hsw.idx = ICL_PW_CTL_IDX_PW_1,
 			.hsw.has_fuses = true,
 		},
@@ -4120,7 +4090,6 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
 		.ops = &hsw_power_well_ops,
 		.id = SKL_DISP_PW_2,
 		{
-			.hsw.regs = &hsw_power_well_regs,
 			.hsw.idx = ICL_PW_CTL_IDX_PW_2,
 			.hsw.has_fuses = true,
 		},
@@ -4131,7 +4100,6 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
 		.ops = &hsw_power_well_ops,
 		.id = ICL_DISP_PW_3,
 		{
-			.hsw.regs = &hsw_power_well_regs,
 			.hsw.idx = ICL_PW_CTL_IDX_PW_3,
 			.hsw.irq_pipe_mask = BIT(PIPE_B),
 			.hsw.has_vga = true,
@@ -4141,90 +4109,81 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
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
@@ -4240,7 +4199,6 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &icl_aux_power_well_regs,
 			.hsw.idx = ICL_PW_CTL_IDX_AUX_A,
 		},
 	},
@@ -4250,7 +4208,6 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &icl_aux_power_well_regs,
 			.hsw.idx = ICL_PW_CTL_IDX_AUX_B,
 		},
 	},
@@ -4260,7 +4217,6 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &icl_aux_power_well_regs,
 			.hsw.idx = ICL_PW_CTL_IDX_AUX_C,
 		},
 	},
@@ -4270,7 +4226,6 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &icl_aux_power_well_regs,
 			.hsw.idx = TGL_PW_CTL_IDX_AUX_TC1,
 			.hsw.is_tc_tbt = false,
 		},
@@ -4281,7 +4236,6 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &icl_aux_power_well_regs,
 			.hsw.idx = TGL_PW_CTL_IDX_AUX_TC2,
 			.hsw.is_tc_tbt = false,
 		},
@@ -4292,7 +4246,6 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &icl_aux_power_well_regs,
 			.hsw.idx = TGL_PW_CTL_IDX_AUX_TC3,
 			.hsw.is_tc_tbt = false,
 		},
@@ -4303,7 +4256,6 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &icl_aux_power_well_regs,
 			.hsw.idx = TGL_PW_CTL_IDX_AUX_TC4,
 			.hsw.is_tc_tbt = false,
 		},
@@ -4314,7 +4266,6 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &icl_aux_power_well_regs,
 			.hsw.idx = TGL_PW_CTL_IDX_AUX_TC5,
 			.hsw.is_tc_tbt = false,
 		},
@@ -4325,7 +4276,6 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &icl_aux_power_well_regs,
 			.hsw.idx = TGL_PW_CTL_IDX_AUX_TC6,
 			.hsw.is_tc_tbt = false,
 		},
@@ -4336,7 +4286,6 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &icl_aux_power_well_regs,
 			.hsw.idx = TGL_PW_CTL_IDX_AUX_TBT1,
 			.hsw.is_tc_tbt = true,
 		},
@@ -4347,7 +4296,6 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &icl_aux_power_well_regs,
 			.hsw.idx = TGL_PW_CTL_IDX_AUX_TBT2,
 			.hsw.is_tc_tbt = true,
 		},
@@ -4358,7 +4306,6 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &icl_aux_power_well_regs,
 			.hsw.idx = TGL_PW_CTL_IDX_AUX_TBT3,
 			.hsw.is_tc_tbt = true,
 		},
@@ -4369,7 +4316,6 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &icl_aux_power_well_regs,
 			.hsw.idx = TGL_PW_CTL_IDX_AUX_TBT4,
 			.hsw.is_tc_tbt = true,
 		},
@@ -4380,7 +4326,6 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &icl_aux_power_well_regs,
 			.hsw.idx = TGL_PW_CTL_IDX_AUX_TBT5,
 			.hsw.is_tc_tbt = true,
 		},
@@ -4391,7 +4336,6 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &icl_aux_power_well_regs,
 			.hsw.idx = TGL_PW_CTL_IDX_AUX_TBT6,
 			.hsw.is_tc_tbt = true,
 		},
@@ -4402,7 +4346,6 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
 		.ops = &hsw_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &hsw_power_well_regs,
 			.hsw.idx = ICL_PW_CTL_IDX_PW_4,
 			.hsw.has_fuses = true,
 			.hsw.irq_pipe_mask = BIT(PIPE_C),
@@ -4414,7 +4357,6 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
 		.ops = &hsw_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &hsw_power_well_regs,
 			.hsw.idx = TGL_PW_CTL_IDX_PW_5,
 			.hsw.has_fuses = true,
 			.hsw.irq_pipe_mask = BIT(PIPE_D),
@@ -4438,7 +4380,6 @@ static const struct i915_power_well_desc rkl_power_wells[] = {
 		.ops = &hsw_power_well_ops,
 		.id = SKL_DISP_PW_1,
 		{
-			.hsw.regs = &hsw_power_well_regs,
 			.hsw.idx = ICL_PW_CTL_IDX_PW_1,
 			.hsw.has_fuses = true,
 		},
@@ -4455,7 +4396,6 @@ static const struct i915_power_well_desc rkl_power_wells[] = {
 		.ops = &hsw_power_well_ops,
 		.id = ICL_DISP_PW_3,
 		{
-			.hsw.regs = &hsw_power_well_regs,
 			.hsw.idx = ICL_PW_CTL_IDX_PW_3,
 			.hsw.irq_pipe_mask = BIT(PIPE_B),
 			.hsw.has_vga = true,
@@ -4468,7 +4408,6 @@ static const struct i915_power_well_desc rkl_power_wells[] = {
 		.ops = &hsw_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &hsw_power_well_regs,
 			.hsw.idx = ICL_PW_CTL_IDX_PW_4,
 			.hsw.has_fuses = true,
 			.hsw.irq_pipe_mask = BIT(PIPE_C),
@@ -4477,40 +4416,36 @@ static const struct i915_power_well_desc rkl_power_wells[] = {
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
@@ -4520,7 +4455,6 @@ static const struct i915_power_well_desc rkl_power_wells[] = {
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &icl_aux_power_well_regs,
 			.hsw.idx = ICL_PW_CTL_IDX_AUX_A,
 		},
 	},
@@ -4530,7 +4464,6 @@ static const struct i915_power_well_desc rkl_power_wells[] = {
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &icl_aux_power_well_regs,
 			.hsw.idx = ICL_PW_CTL_IDX_AUX_B,
 		},
 	},
@@ -4540,7 +4473,6 @@ static const struct i915_power_well_desc rkl_power_wells[] = {
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &icl_aux_power_well_regs,
 			.hsw.idx = TGL_PW_CTL_IDX_AUX_TC1,
 		},
 	},
@@ -4550,7 +4482,6 @@ static const struct i915_power_well_desc rkl_power_wells[] = {
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &icl_aux_power_well_regs,
 			.hsw.idx = TGL_PW_CTL_IDX_AUX_TC2,
 		},
 	},
@@ -4572,7 +4503,6 @@ static const struct i915_power_well_desc dg1_power_wells[] = {
 		.ops = &hsw_power_well_ops,
 		.id = SKL_DISP_PW_1,
 		{
-			.hsw.regs = &hsw_power_well_regs,
 			.hsw.idx = ICL_PW_CTL_IDX_PW_1,
 			.hsw.has_fuses = true,
 		},
@@ -4589,7 +4519,6 @@ static const struct i915_power_well_desc dg1_power_wells[] = {
 		.ops = &hsw_power_well_ops,
 		.id = SKL_DISP_PW_2,
 		{
-			.hsw.regs = &hsw_power_well_regs,
 			.hsw.idx = ICL_PW_CTL_IDX_PW_2,
 			.hsw.has_fuses = true,
 		},
@@ -4600,7 +4529,6 @@ static const struct i915_power_well_desc dg1_power_wells[] = {
 		.ops = &hsw_power_well_ops,
 		.id = ICL_DISP_PW_3,
 		{
-			.hsw.regs = &hsw_power_well_regs,
 			.hsw.idx = ICL_PW_CTL_IDX_PW_3,
 			.hsw.irq_pipe_mask = BIT(PIPE_B),
 			.hsw.has_vga = true,
@@ -4610,40 +4538,36 @@ static const struct i915_power_well_desc dg1_power_wells[] = {
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
@@ -4653,7 +4577,6 @@ static const struct i915_power_well_desc dg1_power_wells[] = {
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &icl_aux_power_well_regs,
 			.hsw.idx = ICL_PW_CTL_IDX_AUX_A,
 		},
 	},
@@ -4663,7 +4586,6 @@ static const struct i915_power_well_desc dg1_power_wells[] = {
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &icl_aux_power_well_regs,
 			.hsw.idx = ICL_PW_CTL_IDX_AUX_B,
 		},
 	},
@@ -4673,7 +4595,6 @@ static const struct i915_power_well_desc dg1_power_wells[] = {
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &icl_aux_power_well_regs,
 			.hsw.idx = TGL_PW_CTL_IDX_AUX_TC1,
 			.hsw.is_tc_tbt = false,
 		},
@@ -4684,7 +4605,6 @@ static const struct i915_power_well_desc dg1_power_wells[] = {
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &icl_aux_power_well_regs,
 			.hsw.idx = TGL_PW_CTL_IDX_AUX_TC2,
 			.hsw.is_tc_tbt = false,
 		},
@@ -4695,7 +4615,6 @@ static const struct i915_power_well_desc dg1_power_wells[] = {
 		.ops = &hsw_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &hsw_power_well_regs,
 			.hsw.idx = ICL_PW_CTL_IDX_PW_4,
 			.hsw.has_fuses = true,
 			.hsw.irq_pipe_mask = BIT(PIPE_C),
@@ -4707,7 +4626,6 @@ static const struct i915_power_well_desc dg1_power_wells[] = {
 		.ops = &hsw_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &hsw_power_well_regs,
 			.hsw.idx = TGL_PW_CTL_IDX_PW_5,
 			.hsw.has_fuses = true,
 			.hsw.irq_pipe_mask = BIT(PIPE_D),
@@ -4731,7 +4649,6 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
 		.ops = &hsw_power_well_ops,
 		.id = SKL_DISP_PW_1,
 		{
-			.hsw.regs = &hsw_power_well_regs,
 			.hsw.idx = ICL_PW_CTL_IDX_PW_1,
 			.hsw.has_fuses = true,
 		},
@@ -4748,7 +4665,6 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
 		.ops = &hsw_power_well_ops,
 		.id = SKL_DISP_PW_2,
 		{
-			.hsw.regs = &hsw_power_well_regs,
 			.hsw.idx = ICL_PW_CTL_IDX_PW_2,
 			.hsw.has_vga = true,
 			.hsw.has_fuses = true,
@@ -4760,7 +4676,6 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
 		.ops = &hsw_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &hsw_power_well_regs,
 			.hsw.idx = XELPD_PW_CTL_IDX_PW_A,
 			.hsw.irq_pipe_mask = BIT(PIPE_A),
 			.hsw.has_fuses = true,
@@ -4772,7 +4687,6 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
 		.ops = &hsw_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &hsw_power_well_regs,
 			.hsw.idx = XELPD_PW_CTL_IDX_PW_B,
 			.hsw.irq_pipe_mask = BIT(PIPE_B),
 			.hsw.has_fuses = true,
@@ -4784,7 +4698,6 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
 		.ops = &hsw_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &hsw_power_well_regs,
 			.hsw.idx = XELPD_PW_CTL_IDX_PW_C,
 			.hsw.irq_pipe_mask = BIT(PIPE_C),
 			.hsw.has_fuses = true,
@@ -4796,7 +4709,6 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
 		.ops = &hsw_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &hsw_power_well_regs,
 			.hsw.idx = XELPD_PW_CTL_IDX_PW_D,
 			.hsw.irq_pipe_mask = BIT(PIPE_D),
 			.hsw.has_fuses = true,
@@ -4805,90 +4717,81 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
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
@@ -4898,7 +4801,6 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &icl_aux_power_well_regs,
 			.hsw.idx = ICL_PW_CTL_IDX_AUX_A,
 			.hsw.fixed_enable_delay = 600,
 		},
@@ -4909,7 +4811,6 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &icl_aux_power_well_regs,
 			.hsw.idx = ICL_PW_CTL_IDX_AUX_B,
 			.hsw.fixed_enable_delay = 600,
 		},
@@ -4920,7 +4821,6 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &icl_aux_power_well_regs,
 			.hsw.idx = ICL_PW_CTL_IDX_AUX_C,
 			.hsw.fixed_enable_delay = 600,
 		},
@@ -4931,7 +4831,6 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &icl_aux_power_well_regs,
 			.hsw.idx = XELPD_PW_CTL_IDX_AUX_D,
 			.hsw.fixed_enable_delay = 600,
 		},
@@ -4942,7 +4841,6 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &icl_aux_power_well_regs,
 			.hsw.idx = XELPD_PW_CTL_IDX_AUX_E,
 		},
 	},
@@ -4952,7 +4850,6 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &icl_aux_power_well_regs,
 			.hsw.idx = TGL_PW_CTL_IDX_AUX_TC1,
 			.hsw.fixed_enable_delay = 600,
 		},
@@ -4963,7 +4860,6 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &icl_aux_power_well_regs,
 			.hsw.idx = TGL_PW_CTL_IDX_AUX_TC2,
 		},
 	},
@@ -4973,7 +4869,6 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &icl_aux_power_well_regs,
 			.hsw.idx = TGL_PW_CTL_IDX_AUX_TC3,
 		},
 	},
@@ -4983,7 +4878,6 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &icl_aux_power_well_regs,
 			.hsw.idx = TGL_PW_CTL_IDX_AUX_TC4,
 		},
 	},
@@ -4993,7 +4887,6 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &icl_aux_power_well_regs,
 			.hsw.idx = TGL_PW_CTL_IDX_AUX_TBT1,
 			.hsw.is_tc_tbt = true,
 		},
@@ -5004,7 +4897,6 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &icl_aux_power_well_regs,
 			.hsw.idx = TGL_PW_CTL_IDX_AUX_TBT2,
 			.hsw.is_tc_tbt = true,
 		},
@@ -5015,7 +4907,6 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &icl_aux_power_well_regs,
 			.hsw.idx = TGL_PW_CTL_IDX_AUX_TBT3,
 			.hsw.is_tc_tbt = true,
 		},
@@ -5026,7 +4917,6 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
 		{
-			.hsw.regs = &icl_aux_power_well_regs,
 			.hsw.idx = TGL_PW_CTL_IDX_AUX_TBT4,
 			.hsw.is_tc_tbt = true,
 		},
-- 
2.27.0

