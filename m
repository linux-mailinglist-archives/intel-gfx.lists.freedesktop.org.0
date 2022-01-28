Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 256CB49F8A7
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Jan 2022 12:49:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0ADA810E777;
	Fri, 28 Jan 2022 11:49:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AF93110E72D
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Jan 2022 11:49:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643370566; x=1674906566;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=vMfsvAPUWREtEHVXl2hIWzBNAPiaVGMpXSH0cqtkwnQ=;
 b=OxQ0tzT8YM+YYQugK07nk/uU5/M6trbR0GX3/2v+6HUwgNtl33J1aiZm
 KLMlMEo46Mb8uSOeiKo5sp2zIgXZT08CLouop9MwUBnkYEGKjESSo7Ree
 xJoLEnXmlDNdVZ92Csqq/DaqQCOs0YQxId7aerG8xcG4p8Te1oCskZH/Z
 oX68RTY+uVNNQgnF0yZ28siSaxPH24qJiFqzz+OWBBNHxZrkRoBwbadxM
 m2fon709xEj8GE2pTEyV05qoF6a+AxVQOOgGKCyz/wDvUt3DmKuohBIdL
 4YZowkY2UkAsLvZ2P3nVPwHb+eFkOSVgY1k/YMkf5YByDtGNj1VX+1FB0 Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10240"; a="310420928"
X-IronPort-AV: E=Sophos;i="5.88,323,1635231600"; d="scan'208";a="310420928"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2022 03:49:26 -0800
X-IronPort-AV: E=Sophos;i="5.88,323,1635231600"; d="scan'208";a="480712830"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2022 03:49:25 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 28 Jan 2022 13:49:01 +0200
Message-Id: <20220128114914.2339526-7-imre.deak@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20220128114914.2339526-1-imre.deak@intel.com>
References: <20220128114914.2339526-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 06/19] drm/i915: Move the HSW power well flags
 to a common bitfield
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

Save some space by grouping the HSW power well descriptor flags along
with other flags in one bitfield.

This change also lets simplifying the definition of power well
descriptors sharing the same flags in an upcoming patch.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../drm/i915/display/intel_display_power.c    |  16 +-
 .../display/intel_display_power_internal.h    |  25 +--
 .../i915/display/intel_display_power_map.c    | 166 +++++++++---------
 3 files changed, 104 insertions(+), 103 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index ceac9c1a7693c..69b75752258d9 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -219,8 +219,8 @@ static enum aux_ch icl_aux_pw_to_ch(const struct i915_power_well *power_well)
 {
 	int pw_idx = power_well->desc->hsw.idx;
 
-	return power_well->desc->hsw.is_tc_tbt ? ICL_TBT_AUX_PW_TO_CH(pw_idx) :
-						 ICL_AUX_PW_TO_CH(pw_idx);
+	return power_well->desc->is_tc_tbt ? ICL_TBT_AUX_PW_TO_CH(pw_idx) :
+					     ICL_AUX_PW_TO_CH(pw_idx);
 }
 
 static struct intel_digital_port *
@@ -348,7 +348,7 @@ static void hsw_power_well_enable(struct drm_i915_private *dev_priv,
 	int pw_idx = power_well->desc->hsw.idx;
 	u32 val;
 
-	if (power_well->desc->hsw.has_fuses) {
+	if (power_well->desc->has_fuses) {
 		enum skl_power_gate pg;
 
 		pg = DISPLAY_VER(dev_priv) >= 11 ? ICL_PW_CTL_IDX_TO_PG(pw_idx) :
@@ -375,7 +375,7 @@ static void hsw_power_well_enable(struct drm_i915_private *dev_priv,
 
 	hsw_wait_for_power_well_enable(dev_priv, power_well, false);
 
-	if (power_well->desc->hsw.has_fuses) {
+	if (power_well->desc->has_fuses) {
 		enum skl_power_gate pg;
 
 		pg = DISPLAY_VER(dev_priv) >= 11 ? ICL_PW_CTL_IDX_TO_PG(pw_idx) :
@@ -384,8 +384,8 @@ static void hsw_power_well_enable(struct drm_i915_private *dev_priv,
 	}
 
 	hsw_power_well_post_enable(dev_priv,
-				   power_well->desc->hsw.irq_pipe_mask,
-				   power_well->desc->hsw.has_vga);
+				   power_well->desc->irq_pipe_mask,
+				   power_well->desc->has_vga);
 }
 
 static void hsw_power_well_disable(struct drm_i915_private *dev_priv,
@@ -396,7 +396,7 @@ static void hsw_power_well_disable(struct drm_i915_private *dev_priv,
 	u32 val;
 
 	hsw_power_well_pre_disable(dev_priv,
-				   power_well->desc->hsw.irq_pipe_mask);
+				   power_well->desc->irq_pipe_mask);
 
 	val = intel_de_read(dev_priv, regs->driver);
 	intel_de_write(dev_priv, regs->driver,
@@ -531,7 +531,7 @@ icl_tc_phy_aux_power_well_enable(struct drm_i915_private *dev_priv,
 	enum aux_ch aux_ch = icl_aux_pw_to_ch(power_well);
 	struct intel_digital_port *dig_port = aux_ch_to_digital_port(dev_priv, aux_ch);
 	const struct i915_power_well_regs *regs = power_well->desc->ops->regs;
-	bool is_tbt = power_well->desc->hsw.is_tc_tbt;
+	bool is_tbt = power_well->desc->is_tc_tbt;
 	bool timeout_expected;
 	u32 val;
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_power_internal.h b/drivers/gpu/drm/i915/display/intel_display_power_internal.h
index 540668a1708b7..fd1abb64a8a47 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_internal.h
+++ b/drivers/gpu/drm/i915/display/intel_display_power_internal.h
@@ -17,13 +17,24 @@ struct i915_power_well_regs;
 struct i915_power_well_desc {
 	const char *name;
 	u64 domains;
-	u8 always_on:1;
+	/* Mask of pipes whose IRQ logic is backed by the pw */
+	u16 irq_pipe_mask:4;
+	u16 always_on:1;
 	/*
 	 * Instead of waiting for the status bit to ack enables,
 	 * just wait a specific amount of time and then consider
 	 * the well enabled.
 	 */
-	u8 fixed_enable_delay:1;
+	u16 fixed_enable_delay:1;
+	/* The pw is backing the VGA functionality */
+	u16 has_vga:1;
+	u16 has_fuses:1;
+	/*
+	 * The pw is for an ICL+ TypeC PHY port in
+	 * Thunderbolt mode.
+	 */
+	u16 is_tc_tbt:1;
+
 	/* unique identifier for this power well */
 	enum i915_power_well_id id;
 	/*
@@ -47,16 +58,6 @@ struct i915_power_well_desc {
 			 * constrol/status registers.
 			 */
 			u8 idx;
-			/* Mask of pipes whose IRQ logic is backed by the pw */
-			u8 irq_pipe_mask;
-			/* The pw is backing the VGA functionality */
-			bool has_vga:1;
-			bool has_fuses:1;
-			/*
-			 * The pw is for an ICL+ TypeC PHY port in
-			 * Thunderbolt mode.
-			 */
-			bool is_tc_tbt:1;
 		} hsw;
 	};
 	const struct i915_power_well_ops *ops;
diff --git a/drivers/gpu/drm/i915/display/intel_display_power_map.c b/drivers/gpu/drm/i915/display/intel_display_power_map.c
index 5daa20168b1e5..92bf6337274eb 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_map.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_map.c
@@ -213,10 +213,10 @@ static const struct i915_power_well_desc hsw_power_wells[] = {
 		.name = "display",
 		.domains = HSW_DISPLAY_POWER_DOMAINS,
 		.ops = &hsw_power_well_ops,
+		.has_vga = true,
 		.id = HSW_DISP_PW_GLOBAL,
 		{
 			.hsw.idx = HSW_PW_CTL_IDX_GLOBAL,
-			.hsw.has_vga = true,
 		},
 	},
 };
@@ -249,11 +249,11 @@ static const struct i915_power_well_desc bdw_power_wells[] = {
 		.name = "display",
 		.domains = BDW_DISPLAY_POWER_DOMAINS,
 		.ops = &hsw_power_well_ops,
+		.has_vga = true,
+		.irq_pipe_mask = BIT(PIPE_B) | BIT(PIPE_C),
 		.id = HSW_DISP_PW_GLOBAL,
 		{
 			.hsw.idx = HSW_PW_CTL_IDX_GLOBAL,
-			.hsw.irq_pipe_mask = BIT(PIPE_B) | BIT(PIPE_C),
-			.hsw.has_vga = true,
 		},
 	},
 };
@@ -505,10 +505,10 @@ static const struct i915_power_well_desc skl_power_wells[] = {
 		.domains = 0,
 		.ops = &hsw_power_well_ops,
 		.always_on = true,
+		.has_fuses = true,
 		.id = SKL_DISP_PW_1,
 		{
 			.hsw.idx = SKL_PW_CTL_IDX_PW_1,
-			.hsw.has_fuses = true,
 		},
 	}, {
 		.name = "MISC IO power well",
@@ -529,12 +529,12 @@ static const struct i915_power_well_desc skl_power_wells[] = {
 		.name = "power well 2",
 		.domains = SKL_DISPLAY_POWERWELL_2_POWER_DOMAINS,
 		.ops = &hsw_power_well_ops,
+		.has_vga = true,
+		.irq_pipe_mask = BIT(PIPE_B) | BIT(PIPE_C),
+		.has_fuses = true,
 		.id = SKL_DISP_PW_2,
 		{
 			.hsw.idx = SKL_PW_CTL_IDX_PW_2,
-			.hsw.irq_pipe_mask = BIT(PIPE_B) | BIT(PIPE_C),
-			.hsw.has_vga = true,
-			.hsw.has_fuses = true,
 		},
 	}, {
 		.name = "DDI A/E IO power well",
@@ -621,10 +621,10 @@ static const struct i915_power_well_desc bxt_power_wells[] = {
 		.domains = 0,
 		.ops = &hsw_power_well_ops,
 		.always_on = true,
+		.has_fuses = true,
 		.id = SKL_DISP_PW_1,
 		{
 			.hsw.idx = SKL_PW_CTL_IDX_PW_1,
-			.hsw.has_fuses = true,
 		},
 	}, {
 		.name = "DC off",
@@ -635,12 +635,12 @@ static const struct i915_power_well_desc bxt_power_wells[] = {
 		.name = "power well 2",
 		.domains = BXT_DISPLAY_POWERWELL_2_POWER_DOMAINS,
 		.ops = &hsw_power_well_ops,
+		.has_vga = true,
+		.irq_pipe_mask = BIT(PIPE_B) | BIT(PIPE_C),
+		.has_fuses = true,
 		.id = SKL_DISP_PW_2,
 		{
 			.hsw.idx = SKL_PW_CTL_IDX_PW_2,
-			.hsw.irq_pipe_mask = BIT(PIPE_B) | BIT(PIPE_C),
-			.hsw.has_vga = true,
-			.hsw.has_fuses = true,
 		},
 	}, {
 		.name = "dpio-common-a",
@@ -731,10 +731,10 @@ static const struct i915_power_well_desc glk_power_wells[] = {
 		.domains = 0,
 		.ops = &hsw_power_well_ops,
 		.always_on = true,
+		.has_fuses = true,
 		.id = SKL_DISP_PW_1,
 		{
 			.hsw.idx = SKL_PW_CTL_IDX_PW_1,
-			.hsw.has_fuses = true,
 		},
 	}, {
 		.name = "DC off",
@@ -745,12 +745,12 @@ static const struct i915_power_well_desc glk_power_wells[] = {
 		.name = "power well 2",
 		.domains = GLK_DISPLAY_POWERWELL_2_POWER_DOMAINS,
 		.ops = &hsw_power_well_ops,
+		.has_vga = true,
+		.irq_pipe_mask = BIT(PIPE_B) | BIT(PIPE_C),
+		.has_fuses = true,
 		.id = SKL_DISP_PW_2,
 		{
 			.hsw.idx = SKL_PW_CTL_IDX_PW_2,
-			.hsw.irq_pipe_mask = BIT(PIPE_B) | BIT(PIPE_C),
-			.hsw.has_vga = true,
-			.hsw.has_fuses = true,
 		},
 	}, {
 		.name = "dpio-common-a",
@@ -926,10 +926,10 @@ static const struct i915_power_well_desc icl_power_wells[] = {
 		.domains = 0,
 		.ops = &hsw_power_well_ops,
 		.always_on = true,
+		.has_fuses = true,
 		.id = SKL_DISP_PW_1,
 		{
 			.hsw.idx = ICL_PW_CTL_IDX_PW_1,
-			.hsw.has_fuses = true,
 		},
 	}, {
 		.name = "DC off",
@@ -940,21 +940,21 @@ static const struct i915_power_well_desc icl_power_wells[] = {
 		.name = "power well 2",
 		.domains = ICL_PW_2_POWER_DOMAINS,
 		.ops = &hsw_power_well_ops,
+		.has_fuses = true,
 		.id = SKL_DISP_PW_2,
 		{
 			.hsw.idx = ICL_PW_CTL_IDX_PW_2,
-			.hsw.has_fuses = true,
 		},
 	}, {
 		.name = "power well 3",
 		.domains = ICL_PW_3_POWER_DOMAINS,
 		.ops = &hsw_power_well_ops,
+		.has_vga = true,
+		.irq_pipe_mask = BIT(PIPE_B),
+		.has_fuses = true,
 		.id = ICL_DISP_PW_3,
 		{
 			.hsw.idx = ICL_PW_CTL_IDX_PW_3,
-			.hsw.irq_pipe_mask = BIT(PIPE_B),
-			.hsw.has_vga = true,
-			.hsw.has_fuses = true,
 		},
 	}, {
 		.name = "DDI A IO",
@@ -1024,83 +1024,83 @@ static const struct i915_power_well_desc icl_power_wells[] = {
 		.name = "AUX C TC1",
 		.domains = ICL_AUX_C_TC1_IO_POWER_DOMAINS,
 		.ops = &icl_aux_power_well_ops,
+		.is_tc_tbt = false,
 		.id = DISP_PW_ID_NONE,
 		{
 			.hsw.idx = ICL_PW_CTL_IDX_AUX_C,
-			.hsw.is_tc_tbt = false,
 		},
 	}, {
 		.name = "AUX D TC2",
 		.domains = ICL_AUX_D_TC2_IO_POWER_DOMAINS,
 		.ops = &icl_aux_power_well_ops,
+		.is_tc_tbt = false,
 		.id = DISP_PW_ID_NONE,
 		{
 			.hsw.idx = ICL_PW_CTL_IDX_AUX_D,
-			.hsw.is_tc_tbt = false,
 		},
 	}, {
 		.name = "AUX E TC3",
 		.domains = ICL_AUX_E_TC3_IO_POWER_DOMAINS,
 		.ops = &icl_aux_power_well_ops,
+		.is_tc_tbt = false,
 		.id = DISP_PW_ID_NONE,
 		{
 			.hsw.idx = ICL_PW_CTL_IDX_AUX_E,
-			.hsw.is_tc_tbt = false,
 		},
 	}, {
 		.name = "AUX F TC4",
 		.domains = ICL_AUX_F_TC4_IO_POWER_DOMAINS,
 		.ops = &icl_aux_power_well_ops,
+		.is_tc_tbt = false,
 		.id = DISP_PW_ID_NONE,
 		{
 			.hsw.idx = ICL_PW_CTL_IDX_AUX_F,
-			.hsw.is_tc_tbt = false,
 		},
 	}, {
 		.name = "AUX C TBT1",
 		.domains = ICL_AUX_C_TBT1_IO_POWER_DOMAINS,
 		.ops = &icl_aux_power_well_ops,
+		.is_tc_tbt = true,
 		.id = DISP_PW_ID_NONE,
 		{
 			.hsw.idx = ICL_PW_CTL_IDX_AUX_TBT1,
-			.hsw.is_tc_tbt = true,
 		},
 	}, {
 		.name = "AUX D TBT2",
 		.domains = ICL_AUX_D_TBT2_IO_POWER_DOMAINS,
 		.ops = &icl_aux_power_well_ops,
+		.is_tc_tbt = true,
 		.id = DISP_PW_ID_NONE,
 		{
 			.hsw.idx = ICL_PW_CTL_IDX_AUX_TBT2,
-			.hsw.is_tc_tbt = true,
 		},
 	}, {
 		.name = "AUX E TBT3",
 		.domains = ICL_AUX_E_TBT3_IO_POWER_DOMAINS,
 		.ops = &icl_aux_power_well_ops,
+		.is_tc_tbt = true,
 		.id = DISP_PW_ID_NONE,
 		{
 			.hsw.idx = ICL_PW_CTL_IDX_AUX_TBT3,
-			.hsw.is_tc_tbt = true,
 		},
 	}, {
 		.name = "AUX F TBT4",
 		.domains = ICL_AUX_F_TBT4_IO_POWER_DOMAINS,
 		.ops = &icl_aux_power_well_ops,
+		.is_tc_tbt = true,
 		.id = DISP_PW_ID_NONE,
 		{
 			.hsw.idx = ICL_PW_CTL_IDX_AUX_TBT4,
-			.hsw.is_tc_tbt = true,
 		},
 	}, {
 		.name = "power well 4",
 		.domains = ICL_PW_4_POWER_DOMAINS,
 		.ops = &hsw_power_well_ops,
+		.irq_pipe_mask = BIT(PIPE_C),
+		.has_fuses = true,
 		.id = DISP_PW_ID_NONE,
 		{
 			.hsw.idx = ICL_PW_CTL_IDX_PW_4,
-			.hsw.has_fuses = true,
-			.hsw.irq_pipe_mask = BIT(PIPE_C),
 		},
 	},
 };
@@ -1214,10 +1214,10 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
 		.domains = 0,
 		.ops = &hsw_power_well_ops,
 		.always_on = true,
+		.has_fuses = true,
 		.id = SKL_DISP_PW_1,
 		{
 			.hsw.idx = ICL_PW_CTL_IDX_PW_1,
-			.hsw.has_fuses = true,
 		},
 	}, {
 		.name = "DC off",
@@ -1228,21 +1228,21 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
 		.name = "power well 2",
 		.domains = TGL_PW_2_POWER_DOMAINS,
 		.ops = &hsw_power_well_ops,
+		.has_fuses = true,
 		.id = SKL_DISP_PW_2,
 		{
 			.hsw.idx = ICL_PW_CTL_IDX_PW_2,
-			.hsw.has_fuses = true,
 		},
 	}, {
 		.name = "power well 3",
 		.domains = TGL_PW_3_POWER_DOMAINS,
 		.ops = &hsw_power_well_ops,
+		.has_vga = true,
+		.irq_pipe_mask = BIT(PIPE_B),
+		.has_fuses = true,
 		.id = ICL_DISP_PW_3,
 		{
 			.hsw.idx = ICL_PW_CTL_IDX_PW_3,
-			.hsw.irq_pipe_mask = BIT(PIPE_B),
-			.hsw.has_vga = true,
-			.hsw.has_fuses = true,
 		},
 	}, {
 		.name = "DDI A IO",
@@ -1349,129 +1349,129 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
 		.name = "AUX USBC1",
 		.domains = TGL_AUX_IO_USBC1_POWER_DOMAINS,
 		.ops = &icl_aux_power_well_ops,
+		.is_tc_tbt = false,
 		.id = DISP_PW_ID_NONE,
 		{
 			.hsw.idx = TGL_PW_CTL_IDX_AUX_TC1,
-			.hsw.is_tc_tbt = false,
 		},
 	}, {
 		.name = "AUX USBC2",
 		.domains = TGL_AUX_IO_USBC2_POWER_DOMAINS,
 		.ops = &icl_aux_power_well_ops,
+		.is_tc_tbt = false,
 		.id = DISP_PW_ID_NONE,
 		{
 			.hsw.idx = TGL_PW_CTL_IDX_AUX_TC2,
-			.hsw.is_tc_tbt = false,
 		},
 	}, {
 		.name = "AUX USBC3",
 		.domains = TGL_AUX_IO_USBC3_POWER_DOMAINS,
 		.ops = &icl_aux_power_well_ops,
+		.is_tc_tbt = false,
 		.id = DISP_PW_ID_NONE,
 		{
 			.hsw.idx = TGL_PW_CTL_IDX_AUX_TC3,
-			.hsw.is_tc_tbt = false,
 		},
 	}, {
 		.name = "AUX USBC4",
 		.domains = TGL_AUX_IO_USBC4_POWER_DOMAINS,
 		.ops = &icl_aux_power_well_ops,
+		.is_tc_tbt = false,
 		.id = DISP_PW_ID_NONE,
 		{
 			.hsw.idx = TGL_PW_CTL_IDX_AUX_TC4,
-			.hsw.is_tc_tbt = false,
 		},
 	}, {
 		.name = "AUX USBC5",
 		.domains = TGL_AUX_IO_USBC5_POWER_DOMAINS,
 		.ops = &icl_aux_power_well_ops,
+		.is_tc_tbt = false,
 		.id = DISP_PW_ID_NONE,
 		{
 			.hsw.idx = TGL_PW_CTL_IDX_AUX_TC5,
-			.hsw.is_tc_tbt = false,
 		},
 	}, {
 		.name = "AUX USBC6",
 		.domains = TGL_AUX_IO_USBC6_POWER_DOMAINS,
 		.ops = &icl_aux_power_well_ops,
+		.is_tc_tbt = false,
 		.id = DISP_PW_ID_NONE,
 		{
 			.hsw.idx = TGL_PW_CTL_IDX_AUX_TC6,
-			.hsw.is_tc_tbt = false,
 		},
 	}, {
 		.name = "AUX TBT1",
 		.domains = TGL_AUX_IO_TBT1_POWER_DOMAINS,
 		.ops = &icl_aux_power_well_ops,
+		.is_tc_tbt = true,
 		.id = DISP_PW_ID_NONE,
 		{
 			.hsw.idx = TGL_PW_CTL_IDX_AUX_TBT1,
-			.hsw.is_tc_tbt = true,
 		},
 	}, {
 		.name = "AUX TBT2",
 		.domains = TGL_AUX_IO_TBT2_POWER_DOMAINS,
 		.ops = &icl_aux_power_well_ops,
+		.is_tc_tbt = true,
 		.id = DISP_PW_ID_NONE,
 		{
 			.hsw.idx = TGL_PW_CTL_IDX_AUX_TBT2,
-			.hsw.is_tc_tbt = true,
 		},
 	}, {
 		.name = "AUX TBT3",
 		.domains = TGL_AUX_IO_TBT3_POWER_DOMAINS,
 		.ops = &icl_aux_power_well_ops,
+		.is_tc_tbt = true,
 		.id = DISP_PW_ID_NONE,
 		{
 			.hsw.idx = TGL_PW_CTL_IDX_AUX_TBT3,
-			.hsw.is_tc_tbt = true,
 		},
 	}, {
 		.name = "AUX TBT4",
 		.domains = TGL_AUX_IO_TBT4_POWER_DOMAINS,
 		.ops = &icl_aux_power_well_ops,
+		.is_tc_tbt = true,
 		.id = DISP_PW_ID_NONE,
 		{
 			.hsw.idx = TGL_PW_CTL_IDX_AUX_TBT4,
-			.hsw.is_tc_tbt = true,
 		},
 	}, {
 		.name = "AUX TBT5",
 		.domains = TGL_AUX_IO_TBT5_POWER_DOMAINS,
 		.ops = &icl_aux_power_well_ops,
+		.is_tc_tbt = true,
 		.id = DISP_PW_ID_NONE,
 		{
 			.hsw.idx = TGL_PW_CTL_IDX_AUX_TBT5,
-			.hsw.is_tc_tbt = true,
 		},
 	}, {
 		.name = "AUX TBT6",
 		.domains = TGL_AUX_IO_TBT6_POWER_DOMAINS,
 		.ops = &icl_aux_power_well_ops,
+		.is_tc_tbt = true,
 		.id = DISP_PW_ID_NONE,
 		{
 			.hsw.idx = TGL_PW_CTL_IDX_AUX_TBT6,
-			.hsw.is_tc_tbt = true,
 		},
 	}, {
 		.name = "power well 4",
 		.domains = TGL_PW_4_POWER_DOMAINS,
 		.ops = &hsw_power_well_ops,
+		.has_fuses = true,
+		.irq_pipe_mask = BIT(PIPE_C),
 		.id = DISP_PW_ID_NONE,
 		{
 			.hsw.idx = ICL_PW_CTL_IDX_PW_4,
-			.hsw.has_fuses = true,
-			.hsw.irq_pipe_mask = BIT(PIPE_C),
 		}
 	}, {
 		.name = "power well 5",
 		.domains = TGL_PW_5_POWER_DOMAINS,
 		.ops = &hsw_power_well_ops,
+		.has_fuses = true,
+		.irq_pipe_mask = BIT(PIPE_D),
 		.id = DISP_PW_ID_NONE,
 		{
 			.hsw.idx = TGL_PW_CTL_IDX_PW_5,
-			.hsw.has_fuses = true,
-			.hsw.irq_pipe_mask = BIT(PIPE_D),
 		},
 	},
 };
@@ -1537,10 +1537,10 @@ static const struct i915_power_well_desc rkl_power_wells[] = {
 		.domains = 0,
 		.ops = &hsw_power_well_ops,
 		.always_on = true,
+		.has_fuses = true,
 		.id = SKL_DISP_PW_1,
 		{
 			.hsw.idx = ICL_PW_CTL_IDX_PW_1,
-			.hsw.has_fuses = true,
 		},
 	}, {
 		.name = "DC off",
@@ -1551,22 +1551,22 @@ static const struct i915_power_well_desc rkl_power_wells[] = {
 		.name = "power well 3",
 		.domains = RKL_PW_3_POWER_DOMAINS,
 		.ops = &hsw_power_well_ops,
+		.irq_pipe_mask = BIT(PIPE_B),
+		.has_vga = true,
+		.has_fuses = true,
 		.id = ICL_DISP_PW_3,
 		{
 			.hsw.idx = ICL_PW_CTL_IDX_PW_3,
-			.hsw.irq_pipe_mask = BIT(PIPE_B),
-			.hsw.has_vga = true,
-			.hsw.has_fuses = true,
 		},
 	}, {
 		.name = "power well 4",
 		.domains = RKL_PW_4_POWER_DOMAINS,
 		.ops = &hsw_power_well_ops,
+		.has_fuses = true,
+		.irq_pipe_mask = BIT(PIPE_C),
 		.id = DISP_PW_ID_NONE,
 		{
 			.hsw.idx = ICL_PW_CTL_IDX_PW_4,
-			.hsw.has_fuses = true,
-			.hsw.irq_pipe_mask = BIT(PIPE_C),
 		}
 	}, {
 		.name = "DDI A IO",
@@ -1677,10 +1677,10 @@ static const struct i915_power_well_desc dg1_power_wells[] = {
 		.domains = 0,
 		.ops = &hsw_power_well_ops,
 		.always_on = true,
+		.has_fuses = true,
 		.id = SKL_DISP_PW_1,
 		{
 			.hsw.idx = ICL_PW_CTL_IDX_PW_1,
-			.hsw.has_fuses = true,
 		},
 	}, {
 		.name = "DC off",
@@ -1691,21 +1691,21 @@ static const struct i915_power_well_desc dg1_power_wells[] = {
 		.name = "power well 2",
 		.domains = DG1_PW_2_POWER_DOMAINS,
 		.ops = &hsw_power_well_ops,
+		.has_fuses = true,
 		.id = SKL_DISP_PW_2,
 		{
 			.hsw.idx = ICL_PW_CTL_IDX_PW_2,
-			.hsw.has_fuses = true,
 		},
 	}, {
 		.name = "power well 3",
 		.domains = DG1_PW_3_POWER_DOMAINS,
 		.ops = &hsw_power_well_ops,
+		.irq_pipe_mask = BIT(PIPE_B),
+		.has_vga = true,
+		.has_fuses = true,
 		.id = ICL_DISP_PW_3,
 		{
 			.hsw.idx = ICL_PW_CTL_IDX_PW_3,
-			.hsw.irq_pipe_mask = BIT(PIPE_B),
-			.hsw.has_vga = true,
-			.hsw.has_fuses = true,
 		},
 	}, {
 		.name = "DDI A IO",
@@ -1759,39 +1759,39 @@ static const struct i915_power_well_desc dg1_power_wells[] = {
 		.name = "AUX USBC1",
 		.domains = TGL_AUX_IO_USBC1_POWER_DOMAINS,
 		.ops = &icl_aux_power_well_ops,
+		.is_tc_tbt = false,
 		.id = DISP_PW_ID_NONE,
 		{
 			.hsw.idx = TGL_PW_CTL_IDX_AUX_TC1,
-			.hsw.is_tc_tbt = false,
 		},
 	}, {
 		.name = "AUX USBC2",
 		.domains = TGL_AUX_IO_USBC2_POWER_DOMAINS,
 		.ops = &icl_aux_power_well_ops,
+		.is_tc_tbt = false,
 		.id = DISP_PW_ID_NONE,
 		{
 			.hsw.idx = TGL_PW_CTL_IDX_AUX_TC2,
-			.hsw.is_tc_tbt = false,
 		},
 	}, {
 		.name = "power well 4",
 		.domains = TGL_PW_4_POWER_DOMAINS,
 		.ops = &hsw_power_well_ops,
+		.has_fuses = true,
+		.irq_pipe_mask = BIT(PIPE_C),
 		.id = DISP_PW_ID_NONE,
 		{
 			.hsw.idx = ICL_PW_CTL_IDX_PW_4,
-			.hsw.has_fuses = true,
-			.hsw.irq_pipe_mask = BIT(PIPE_C),
 		}
 	}, {
 		.name = "power well 5",
 		.domains = TGL_PW_5_POWER_DOMAINS,
 		.ops = &hsw_power_well_ops,
+		.has_fuses = true,
+		.irq_pipe_mask = BIT(PIPE_D),
 		.id = DISP_PW_ID_NONE,
 		{
 			.hsw.idx = TGL_PW_CTL_IDX_PW_5,
-			.hsw.has_fuses = true,
-			.hsw.irq_pipe_mask = BIT(PIPE_D),
 		},
 	},
 };
@@ -1921,10 +1921,10 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
 		.domains = 0,
 		.ops = &hsw_power_well_ops,
 		.always_on = true,
+		.has_fuses = true,
 		.id = SKL_DISP_PW_1,
 		{
 			.hsw.idx = ICL_PW_CTL_IDX_PW_1,
-			.hsw.has_fuses = true,
 		},
 	}, {
 		.name = "DC off",
@@ -1935,51 +1935,51 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
 		.name = "power well 2",
 		.domains = XELPD_PW_2_POWER_DOMAINS,
 		.ops = &hsw_power_well_ops,
+		.has_vga = true,
+		.has_fuses = true,
 		.id = SKL_DISP_PW_2,
 		{
 			.hsw.idx = ICL_PW_CTL_IDX_PW_2,
-			.hsw.has_vga = true,
-			.hsw.has_fuses = true,
 		},
 	}, {
 		.name = "power well A",
 		.domains = XELPD_PW_A_POWER_DOMAINS,
 		.ops = &hsw_power_well_ops,
+		.irq_pipe_mask = BIT(PIPE_A),
+		.has_fuses = true,
 		.id = DISP_PW_ID_NONE,
 		{
 			.hsw.idx = XELPD_PW_CTL_IDX_PW_A,
-			.hsw.irq_pipe_mask = BIT(PIPE_A),
-			.hsw.has_fuses = true,
 		},
 	}, {
 		.name = "power well B",
 		.domains = XELPD_PW_B_POWER_DOMAINS,
 		.ops = &hsw_power_well_ops,
+		.irq_pipe_mask = BIT(PIPE_B),
+		.has_fuses = true,
 		.id = DISP_PW_ID_NONE,
 		{
 			.hsw.idx = XELPD_PW_CTL_IDX_PW_B,
-			.hsw.irq_pipe_mask = BIT(PIPE_B),
-			.hsw.has_fuses = true,
 		},
 	}, {
 		.name = "power well C",
 		.domains = XELPD_PW_C_POWER_DOMAINS,
 		.ops = &hsw_power_well_ops,
+		.irq_pipe_mask = BIT(PIPE_C),
+		.has_fuses = true,
 		.id = DISP_PW_ID_NONE,
 		{
 			.hsw.idx = XELPD_PW_CTL_IDX_PW_C,
-			.hsw.irq_pipe_mask = BIT(PIPE_C),
-			.hsw.has_fuses = true,
 		},
 	}, {
 		.name = "power well D",
 		.domains = XELPD_PW_D_POWER_DOMAINS,
 		.ops = &hsw_power_well_ops,
+		.irq_pipe_mask = BIT(PIPE_D),
+		.has_fuses = true,
 		.id = DISP_PW_ID_NONE,
 		{
 			.hsw.idx = XELPD_PW_CTL_IDX_PW_D,
-			.hsw.irq_pipe_mask = BIT(PIPE_D),
-			.hsw.has_fuses = true,
 		},
 	}, {
 		.name = "DDI A IO",
@@ -2134,37 +2134,37 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
 		.name = "AUX TBT1",
 		.domains = XELPD_AUX_IO_TBT1_POWER_DOMAINS,
 		.ops = &icl_aux_power_well_ops,
+		.is_tc_tbt = true,
 		.id = DISP_PW_ID_NONE,
 		{
 			.hsw.idx = TGL_PW_CTL_IDX_AUX_TBT1,
-			.hsw.is_tc_tbt = true,
 		},
 	}, {
 		.name = "AUX TBT2",
 		.domains = XELPD_AUX_IO_TBT2_POWER_DOMAINS,
 		.ops = &icl_aux_power_well_ops,
+		.is_tc_tbt = true,
 		.id = DISP_PW_ID_NONE,
 		{
 			.hsw.idx = TGL_PW_CTL_IDX_AUX_TBT2,
-			.hsw.is_tc_tbt = true,
 		},
 	}, {
 		.name = "AUX TBT3",
 		.domains = XELPD_AUX_IO_TBT3_POWER_DOMAINS,
 		.ops = &icl_aux_power_well_ops,
+		.is_tc_tbt = true,
 		.id = DISP_PW_ID_NONE,
 		{
 			.hsw.idx = TGL_PW_CTL_IDX_AUX_TBT3,
-			.hsw.is_tc_tbt = true,
 		},
 	}, {
 		.name = "AUX TBT4",
 		.domains = XELPD_AUX_IO_TBT4_POWER_DOMAINS,
 		.ops = &icl_aux_power_well_ops,
+		.is_tc_tbt = true,
 		.id = DISP_PW_ID_NONE,
 		{
 			.hsw.idx = TGL_PW_CTL_IDX_AUX_TBT4,
-			.hsw.is_tc_tbt = true,
 		},
 	},
 };
-- 
2.27.0

