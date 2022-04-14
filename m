Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E61F8501D24
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Apr 2022 23:07:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4967C10E47A;
	Thu, 14 Apr 2022 21:07:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 53D1C10E47A
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Apr 2022 21:07:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649970436; x=1681506436;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=AgZlRwoYawifbMd6G6PtmucinM/w+KuPYCYp5tfjpHs=;
 b=a+v264cY4HzEDjzJgdJD26pa8QCy1ZdFFxGdcgD64s+RddT3/uwUuNg6
 xyrGfK2X7N1MvHWlm0Yk/0sc03CovvgBvb3eMaUolKr0zra0ipFKLLbRB
 vUxSUASKihnXH7gicL0JokgtK9CJ8m+6DTT/Z8cEFdckXn13BXlUZhi43
 lL7yk/+ZHnhtK/bCgLRuAnnks67GuDTHlkjouqyTl6RWIekmU5vCRGPTw
 vGUykuX7GV5FBfL8Yh4aEjR8mo1ysHVEsoWmCcwOqxqagEjBb5nlaQ0sh
 G5dfh/LQnW9tuOlq8l4+w00fveDxEchmdv0P2YYOWDKC1mtUrmsWAcSFH g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10317"; a="288089763"
X-IronPort-AV: E=Sophos;i="5.90,260,1643702400"; d="scan'208";a="288089763"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2022 14:07:16 -0700
X-IronPort-AV: E=Sophos;i="5.90,260,1643702400"; d="scan'208";a="527550391"
Received: from ideak-desk.fi.intel.com ([10.237.72.175])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2022 14:07:14 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 15 Apr 2022 00:06:50 +0300
Message-Id: <20220414210657.1785773-11-imre.deak@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220414210657.1785773-1-imre.deak@intel.com>
References: <20220414210657.1785773-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI 11/18] drm/i915: Allow platforms to share power
 well descriptors
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

Some power wells - like always-on and skl+/icl+ PW_1 - with the same
name, domain list, flags, ops are used by multiple platforms, so allow
platforms to reuse the descriptors of such power wells.

This change also lets the follow up patches to simplify the DG1/RKL
power well definitions, and remove the ADL-S skip_mask special casing.

Signed-off-by: Imre Deak <imre.deak@intel.com>
Reviewed-by: Jouni Högander <jouni.hogander@intel.com>
---
 .../i915/display/intel_display_power_map.c    | 281 ++++++++----------
 1 file changed, 122 insertions(+), 159 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power_map.c b/drivers/gpu/drm/i915/display/intel_display_power_map.c
index c282e05bfc1ac..7babe3f1a3624 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_map.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_map.c
@@ -38,9 +38,17 @@
 	{ .name = _name, .domain_list = _domain_list, ## __VA_ARGS__ }
 
 
+struct i915_power_well_desc_list {
+	const struct i915_power_well_desc *list;
+	u8 count;
+};
+
+#define I915_PW_DESCRIPTORS(x) __LIST(x)
+
+
 I915_DECL_PW_DOMAINS(i9xx_pwdoms_always_on, I915_PW_DOMAINS_ALL);
 
-static const struct i915_power_well_desc i9xx_always_on_power_well[] = {
+static const struct i915_power_well_desc i9xx_power_wells_always_on[] = {
 	{
 		.instances = &I915_PW_INSTANCES(
 			I915_PW("always-on", &i9xx_pwdoms_always_on),
@@ -50,6 +58,10 @@ static const struct i915_power_well_desc i9xx_always_on_power_well[] = {
 	},
 };
 
+static const struct i915_power_well_desc_list i9xx_power_wells[] = {
+	I915_PW_DESCRIPTORS(i9xx_power_wells_always_on),
+};
+
 I915_DECL_PW_DOMAINS(i830_pwdoms_pipes,
 	POWER_DOMAIN_PIPE_A,
 	POWER_DOMAIN_PIPE_B,
@@ -59,14 +71,8 @@ I915_DECL_PW_DOMAINS(i830_pwdoms_pipes,
 	POWER_DOMAIN_TRANSCODER_B,
 	POWER_DOMAIN_INIT);
 
-static const struct i915_power_well_desc i830_power_wells[] = {
+static const struct i915_power_well_desc i830_power_wells_main[] = {
 	{
-		.instances = &I915_PW_INSTANCES(
-			I915_PW("always-on", &i9xx_pwdoms_always_on),
-		),
-		.ops = &i9xx_always_on_power_well_ops,
-		.always_on = true,
-	}, {
 		.instances = &I915_PW_INSTANCES(
 			I915_PW("pipes", &i830_pwdoms_pipes),
 		),
@@ -74,6 +80,11 @@ static const struct i915_power_well_desc i830_power_wells[] = {
 	},
 };
 
+static const struct i915_power_well_desc_list i830_power_wells[] = {
+	I915_PW_DESCRIPTORS(i9xx_power_wells_always_on),
+	I915_PW_DESCRIPTORS(i830_power_wells_main),
+};
+
 I915_DECL_PW_DOMAINS(hsw_pwdoms_display,
 	POWER_DOMAIN_PIPE_B,
 	POWER_DOMAIN_PIPE_C,
@@ -92,14 +103,8 @@ I915_DECL_PW_DOMAINS(hsw_pwdoms_display,
 	POWER_DOMAIN_AUDIO_PLAYBACK,
 	POWER_DOMAIN_INIT);
 
-static const struct i915_power_well_desc hsw_power_wells[] = {
+static const struct i915_power_well_desc hsw_power_wells_main[] = {
 	{
-		.instances = &I915_PW_INSTANCES(
-			I915_PW("always-on", &i9xx_pwdoms_always_on),
-		),
-		.ops = &i9xx_always_on_power_well_ops,
-		.always_on = true,
-	}, {
 		.instances = &I915_PW_INSTANCES(
 			I915_PW("display", &hsw_pwdoms_display,
 				.hsw.idx = HSW_PW_CTL_IDX_GLOBAL,
@@ -110,6 +115,11 @@ static const struct i915_power_well_desc hsw_power_wells[] = {
 	},
 };
 
+static const struct i915_power_well_desc_list hsw_power_wells[] = {
+	I915_PW_DESCRIPTORS(i9xx_power_wells_always_on),
+	I915_PW_DESCRIPTORS(hsw_power_wells_main),
+};
+
 I915_DECL_PW_DOMAINS(bdw_pwdoms_display,
 	POWER_DOMAIN_PIPE_B,
 	POWER_DOMAIN_PIPE_C,
@@ -127,14 +137,8 @@ I915_DECL_PW_DOMAINS(bdw_pwdoms_display,
 	POWER_DOMAIN_AUDIO_PLAYBACK,
 	POWER_DOMAIN_INIT);
 
-static const struct i915_power_well_desc bdw_power_wells[] = {
+static const struct i915_power_well_desc bdw_power_wells_main[] = {
 	{
-		.instances = &I915_PW_INSTANCES(
-			I915_PW("always-on", &i9xx_pwdoms_always_on),
-		),
-		.ops = &i9xx_always_on_power_well_ops,
-		.always_on = true,
-	}, {
 		.instances = &I915_PW_INSTANCES(
 			I915_PW("display", &bdw_pwdoms_display,
 				.hsw.idx = HSW_PW_CTL_IDX_GLOBAL,
@@ -146,6 +150,11 @@ static const struct i915_power_well_desc bdw_power_wells[] = {
 	},
 };
 
+static const struct i915_power_well_desc_list bdw_power_wells[] = {
+	I915_PW_DESCRIPTORS(i9xx_power_wells_always_on),
+	I915_PW_DESCRIPTORS(bdw_power_wells_main),
+};
+
 I915_DECL_PW_DOMAINS(vlv_pwdoms_display,
 	POWER_DOMAIN_DISPLAY_CORE,
 	POWER_DOMAIN_PIPE_A,
@@ -181,14 +190,8 @@ I915_DECL_PW_DOMAINS(vlv_pwdoms_dpio_tx_bc_lanes,
 	POWER_DOMAIN_AUX_C,
 	POWER_DOMAIN_INIT);
 
-static const struct i915_power_well_desc vlv_power_wells[] = {
+static const struct i915_power_well_desc vlv_power_wells_main[] = {
 	{
-		.instances = &I915_PW_INSTANCES(
-			I915_PW("always-on", &i9xx_pwdoms_always_on),
-		),
-		.ops = &i9xx_always_on_power_well_ops,
-		.always_on = true,
-	}, {
 		.instances = &I915_PW_INSTANCES(
 			I915_PW("display", &vlv_pwdoms_display,
 				.vlv.idx = PUNIT_PWGT_IDX_DISP2D,
@@ -217,6 +220,11 @@ static const struct i915_power_well_desc vlv_power_wells[] = {
 	},
 };
 
+static const struct i915_power_well_desc_list vlv_power_wells[] = {
+	I915_PW_DESCRIPTORS(i9xx_power_wells_always_on),
+	I915_PW_DESCRIPTORS(vlv_power_wells_main),
+};
+
 I915_DECL_PW_DOMAINS(chv_pwdoms_display,
 	POWER_DOMAIN_DISPLAY_CORE,
 	POWER_DOMAIN_PIPE_A,
@@ -253,14 +261,8 @@ I915_DECL_PW_DOMAINS(chv_pwdoms_dpio_cmn_d,
 	POWER_DOMAIN_AUX_D,
 	POWER_DOMAIN_INIT);
 
-static const struct i915_power_well_desc chv_power_wells[] = {
+static const struct i915_power_well_desc chv_power_wells_main[] = {
 	{
-		.instances = &I915_PW_INSTANCES(
-			I915_PW("always-on", &i9xx_pwdoms_always_on),
-		),
-		.ops = &i9xx_always_on_power_well_ops,
-		.always_on = true,
-	}, {
 		/*
 		 * Pipe A power well is the new disp2d well. Pipe B and C
 		 * power wells don't actually exist. Pipe A power well is
@@ -283,6 +285,11 @@ static const struct i915_power_well_desc chv_power_wells[] = {
 	},
 };
 
+static const struct i915_power_well_desc_list chv_power_wells[] = {
+	I915_PW_DESCRIPTORS(i9xx_power_wells_always_on),
+	I915_PW_DESCRIPTORS(chv_power_wells_main),
+};
+
 #define SKL_PW_2_POWER_DOMAINS \
 	POWER_DOMAIN_PIPE_B, \
 	POWER_DOMAIN_PIPE_C, \
@@ -330,14 +337,8 @@ I915_DECL_PW_DOMAINS(skl_pwdoms_ddi_io_d,
 	POWER_DOMAIN_PORT_DDI_IO_D,
 	POWER_DOMAIN_INIT);
 
-static const struct i915_power_well_desc skl_power_wells[] = {
+static const struct i915_power_well_desc skl_power_wells_pw_1[] = {
 	{
-		.instances = &I915_PW_INSTANCES(
-			I915_PW("always-on", &i9xx_pwdoms_always_on),
-		),
-		.ops = &i9xx_always_on_power_well_ops,
-		.always_on = true,
-	}, {
 		/* Handled by the DMC firmware */
 		.instances = &I915_PW_INSTANCES(
 			I915_PW("PW_1", I915_PW_DOMAINS_NONE,
@@ -347,7 +348,11 @@ static const struct i915_power_well_desc skl_power_wells[] = {
 		.ops = &hsw_power_well_ops,
 		.always_on = true,
 		.has_fuses = true,
-	}, {
+	},
+};
+
+static const struct i915_power_well_desc skl_power_wells_main[] = {
+	{
 		/* Handled by the DMC firmware */
 		.instances = &I915_PW_INSTANCES(
 			I915_PW("MISC_IO", I915_PW_DOMAINS_NONE,
@@ -383,6 +388,12 @@ static const struct i915_power_well_desc skl_power_wells[] = {
 	},
 };
 
+static const struct i915_power_well_desc_list skl_power_wells[] = {
+	I915_PW_DESCRIPTORS(i9xx_power_wells_always_on),
+	I915_PW_DESCRIPTORS(skl_power_wells_pw_1),
+	I915_PW_DESCRIPTORS(skl_power_wells_main),
+};
+
 #define BXT_PW_2_POWER_DOMAINS \
 	POWER_DOMAIN_PIPE_B, \
 	POWER_DOMAIN_PIPE_C, \
@@ -423,24 +434,8 @@ I915_DECL_PW_DOMAINS(bxt_pwdoms_dpio_cmn_bc,
 	POWER_DOMAIN_AUX_C,
 	POWER_DOMAIN_INIT);
 
-static const struct i915_power_well_desc bxt_power_wells[] = {
+static const struct i915_power_well_desc bxt_power_wells_main[] = {
 	{
-		.instances = &I915_PW_INSTANCES(
-			I915_PW("always-on", &i9xx_pwdoms_always_on),
-		),
-		.ops = &i9xx_always_on_power_well_ops,
-		.always_on = true,
-	}, {
-		/* Handled by the DMC firmware */
-		.instances = &I915_PW_INSTANCES(
-			I915_PW("PW_1", I915_PW_DOMAINS_NONE,
-				.hsw.idx = SKL_PW_CTL_IDX_PW_1,
-				.id = SKL_DISP_PW_1),
-		),
-		.ops = &hsw_power_well_ops,
-		.always_on = true,
-		.has_fuses = true,
-	}, {
 		.instances = &I915_PW_INSTANCES(
 			I915_PW("DC_off", &bxt_pwdoms_dc_off,
 				.id = SKL_DISP_DC_OFF),
@@ -469,6 +464,12 @@ static const struct i915_power_well_desc bxt_power_wells[] = {
 	},
 };
 
+static const struct i915_power_well_desc_list bxt_power_wells[] = {
+	I915_PW_DESCRIPTORS(i9xx_power_wells_always_on),
+	I915_PW_DESCRIPTORS(skl_power_wells_pw_1),
+	I915_PW_DESCRIPTORS(bxt_power_wells_main),
+};
+
 #define GLK_PW_2_POWER_DOMAINS \
 	POWER_DOMAIN_PIPE_B, \
 	POWER_DOMAIN_PIPE_C, \
@@ -529,24 +530,8 @@ I915_DECL_PW_DOMAINS(glk_pwdoms_aux_c,
 	POWER_DOMAIN_AUX_C,
 	POWER_DOMAIN_INIT);
 
-static const struct i915_power_well_desc glk_power_wells[] = {
+static const struct i915_power_well_desc glk_power_wells_main[] = {
 	{
-		.instances = &I915_PW_INSTANCES(
-			I915_PW("always-on", &i9xx_pwdoms_always_on),
-		),
-		.ops = &i9xx_always_on_power_well_ops,
-		.always_on = true,
-	}, {
-		/* Handled by the DMC firmware */
-		.instances = &I915_PW_INSTANCES(
-			I915_PW("PW_1", I915_PW_DOMAINS_NONE,
-				.hsw.idx = SKL_PW_CTL_IDX_PW_1,
-				.id = SKL_DISP_PW_1),
-		),
-		.ops = &hsw_power_well_ops,
-		.always_on = true,
-		.has_fuses = true,
-	}, {
 		.instances = &I915_PW_INSTANCES(
 			I915_PW("DC_off", &glk_pwdoms_dc_off,
 				.id = SKL_DISP_DC_OFF),
@@ -588,6 +573,12 @@ static const struct i915_power_well_desc glk_power_wells[] = {
 	},
 };
 
+static const struct i915_power_well_desc_list glk_power_wells[] = {
+	I915_PW_DESCRIPTORS(i9xx_power_wells_always_on),
+	I915_PW_DESCRIPTORS(skl_power_wells_pw_1),
+	I915_PW_DESCRIPTORS(glk_power_wells_main),
+};
+
 /*
  * ICL PW_0/PG_0 domains (HW/DMC control):
  * - PCI
@@ -682,14 +673,8 @@ I915_DECL_PW_DOMAINS(icl_pwdoms_aux_tbt2,	POWER_DOMAIN_AUX_TBT_D);
 I915_DECL_PW_DOMAINS(icl_pwdoms_aux_tbt3,	POWER_DOMAIN_AUX_TBT_E);
 I915_DECL_PW_DOMAINS(icl_pwdoms_aux_tbt4,	POWER_DOMAIN_AUX_TBT_F);
 
-static const struct i915_power_well_desc icl_power_wells[] = {
+static const struct i915_power_well_desc icl_power_wells_pw_1[] = {
 	{
-		.instances = &I915_PW_INSTANCES(
-			I915_PW("always-on", &i9xx_pwdoms_always_on),
-		),
-		.ops = &i9xx_always_on_power_well_ops,
-		.always_on = true,
-	}, {
 		/* Handled by the DMC firmware */
 		.instances = &I915_PW_INSTANCES(
 			I915_PW("PW_1", I915_PW_DOMAINS_NONE,
@@ -699,7 +684,11 @@ static const struct i915_power_well_desc icl_power_wells[] = {
 		.ops = &hsw_power_well_ops,
 		.always_on = true,
 		.has_fuses = true,
-	}, {
+	},
+};
+
+static const struct i915_power_well_desc icl_power_wells_main[] = {
+	{
 		.instances = &I915_PW_INSTANCES(
 			I915_PW("DC_off", &icl_pwdoms_dc_off,
 				.id = SKL_DISP_DC_OFF),
@@ -763,6 +752,12 @@ static const struct i915_power_well_desc icl_power_wells[] = {
 	},
 };
 
+static const struct i915_power_well_desc_list icl_power_wells[] = {
+	I915_PW_DESCRIPTORS(i9xx_power_wells_always_on),
+	I915_PW_DESCRIPTORS(icl_power_wells_pw_1),
+	I915_PW_DESCRIPTORS(icl_power_wells_main),
+};
+
 #define TGL_PW_5_POWER_DOMAINS \
 	POWER_DOMAIN_PIPE_D, \
 	POWER_DOMAIN_PIPE_PANEL_FITTER_D, \
@@ -868,24 +863,8 @@ I915_DECL_PW_DOMAINS(tgl_pwdoms_tc_cold_off,
 	POWER_DOMAIN_AUX_TBT6,
 	POWER_DOMAIN_TC_COLD_OFF);
 
-static const struct i915_power_well_desc tgl_power_wells[] = {
+static const struct i915_power_well_desc tgl_power_wells_main[] = {
 	{
-		.instances = &I915_PW_INSTANCES(
-			I915_PW("always-on", &i9xx_pwdoms_always_on),
-		),
-		.ops = &i9xx_always_on_power_well_ops,
-		.always_on = true,
-	}, {
-		/* Handled by the DMC firmware */
-		.instances = &I915_PW_INSTANCES(
-			I915_PW("PW_1", I915_PW_DOMAINS_NONE,
-				.hsw.idx = ICL_PW_CTL_IDX_PW_1,
-				.id = SKL_DISP_PW_1),
-		),
-		.ops = &hsw_power_well_ops,
-		.always_on = true,
-		.has_fuses = true,
-	}, {
 		.instances = &I915_PW_INSTANCES(
 			I915_PW("DC_off", &tgl_pwdoms_dc_off,
 				.id = SKL_DISP_DC_OFF),
@@ -971,6 +950,12 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
 	},
 };
 
+static const struct i915_power_well_desc_list tgl_power_wells[] = {
+	I915_PW_DESCRIPTORS(i9xx_power_wells_always_on),
+	I915_PW_DESCRIPTORS(icl_power_wells_pw_1),
+	I915_PW_DESCRIPTORS(tgl_power_wells_main),
+};
+
 #define RKL_PW_4_POWER_DOMAINS \
 	POWER_DOMAIN_PIPE_C, \
 	POWER_DOMAIN_PIPE_PANEL_FITTER_C, \
@@ -1025,24 +1010,8 @@ I915_DECL_PW_DOMAINS(rkl_pwdoms_dc_off,
 	POWER_DOMAIN_MODESET,
 	POWER_DOMAIN_INIT);
 
-static const struct i915_power_well_desc rkl_power_wells[] = {
+static const struct i915_power_well_desc rkl_power_wells_main[] = {
 	{
-		.instances = &I915_PW_INSTANCES(
-			I915_PW("always-on", &i9xx_pwdoms_always_on),
-		),
-		.ops = &i9xx_always_on_power_well_ops,
-		.always_on = true,
-	}, {
-		/* Handled by the DMC firmware */
-		.instances = &I915_PW_INSTANCES(
-			I915_PW("PW_1", I915_PW_DOMAINS_NONE,
-				.hsw.idx = ICL_PW_CTL_IDX_PW_1,
-				.id = SKL_DISP_PW_1),
-		),
-		.ops = &hsw_power_well_ops,
-		.always_on = true,
-		.has_fuses = true,
-	}, {
 		.instances = &I915_PW_INSTANCES(
 			I915_PW("DC_off", &rkl_pwdoms_dc_off,
 				.id = SKL_DISP_DC_OFF),
@@ -1085,6 +1054,12 @@ static const struct i915_power_well_desc rkl_power_wells[] = {
 	},
 };
 
+static const struct i915_power_well_desc_list rkl_power_wells[] = {
+	I915_PW_DESCRIPTORS(i9xx_power_wells_always_on),
+	I915_PW_DESCRIPTORS(icl_power_wells_pw_1),
+	I915_PW_DESCRIPTORS(rkl_power_wells_main),
+};
+
 /*
  * DG1 onwards Audio MMIO/VERBS lies in PG0 power well.
  */
@@ -1117,24 +1092,8 @@ I915_DECL_PW_DOMAINS(dg1_pwdoms_pw_2,
 	POWER_DOMAIN_TRANSCODER_VDSC_PW2,
 	POWER_DOMAIN_INIT);
 
-static const struct i915_power_well_desc dg1_power_wells[] = {
+static const struct i915_power_well_desc dg1_power_wells_main[] = {
 	{
-		.instances = &I915_PW_INSTANCES(
-			I915_PW("always-on", &i9xx_pwdoms_always_on),
-		),
-		.ops = &i9xx_always_on_power_well_ops,
-		.always_on = true,
-	}, {
-		/* Handled by the DMC firmware */
-		.instances = &I915_PW_INSTANCES(
-			I915_PW("PW_1", I915_PW_DOMAINS_NONE,
-				.hsw.idx = ICL_PW_CTL_IDX_PW_1,
-				.id = SKL_DISP_PW_1),
-		),
-		.ops = &hsw_power_well_ops,
-		.always_on = true,
-		.has_fuses = true,
-	}, {
 		.instances = &I915_PW_INSTANCES(
 			I915_PW("DC_off", &dg1_pwdoms_dc_off,
 				.id = SKL_DISP_DC_OFF),
@@ -1193,6 +1152,12 @@ static const struct i915_power_well_desc dg1_power_wells[] = {
 	},
 };
 
+static const struct i915_power_well_desc_list dg1_power_wells[] = {
+	I915_PW_DESCRIPTORS(i9xx_power_wells_always_on),
+	I915_PW_DESCRIPTORS(icl_power_wells_pw_1),
+	I915_PW_DESCRIPTORS(dg1_power_wells_main),
+};
+
 /*
  * XE_LPD Power Domains
  *
@@ -1318,24 +1283,8 @@ I915_DECL_PW_DOMAINS(xelpd_pwdoms_ddi_io_tc2,		POWER_DOMAIN_PORT_DDI_IO_TC2);
 I915_DECL_PW_DOMAINS(xelpd_pwdoms_ddi_io_tc3,		POWER_DOMAIN_PORT_DDI_IO_TC3);
 I915_DECL_PW_DOMAINS(xelpd_pwdoms_ddi_io_tc4,		POWER_DOMAIN_PORT_DDI_IO_TC4);
 
-static const struct i915_power_well_desc xelpd_power_wells[] = {
+static const struct i915_power_well_desc xelpd_power_wells_main[] = {
 	{
-		.instances = &I915_PW_INSTANCES(
-			I915_PW("always-on", &i9xx_pwdoms_always_on),
-		),
-		.ops = &i9xx_always_on_power_well_ops,
-		.always_on = true,
-	}, {
-		/* Handled by the DMC firmware */
-		.instances = &I915_PW_INSTANCES(
-			I915_PW("PW_1", I915_PW_DOMAINS_NONE,
-				.hsw.idx = ICL_PW_CTL_IDX_PW_1,
-				.id = SKL_DISP_PW_1),
-		),
-		.ops = &hsw_power_well_ops,
-		.always_on = true,
-		.has_fuses = true,
-	}, {
 		.instances = &I915_PW_INSTANCES(
 			I915_PW("DC_off", &xelpd_pwdoms_dc_off,
 				.id = SKL_DISP_DC_OFF),
@@ -1421,6 +1370,12 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
 	},
 };
 
+static const struct i915_power_well_desc_list xelpd_power_wells[] = {
+	I915_PW_DESCRIPTORS(i9xx_power_wells_always_on),
+	I915_PW_DESCRIPTORS(icl_power_wells_pw_1),
+	I915_PW_DESCRIPTORS(xelpd_power_wells_main),
+};
+
 static void init_power_well_domains(const struct i915_power_well_instance *inst,
 				    struct i915_power_well *power_well)
 {
@@ -1439,27 +1394,35 @@ static void init_power_well_domains(const struct i915_power_well_instance *inst,
 		set_bit(inst->domain_list->list[j], power_well->domains.bits);
 }
 
-#define for_each_power_well_instance(_desc_list, _desc_count, _desc, _inst) \
+#define for_each_power_well_instance_in_desc_list(_desc_list, _desc_count, _desc, _inst) \
 	for ((_desc) = (_desc_list); (_desc) - (_desc_list) < (_desc_count); (_desc)++) \
 		for ((_inst) = (_desc)->instances->list; \
 		     (_inst) - (_desc)->instances->list < (_desc)->instances->count; \
 		     (_inst)++)
 
+#define for_each_power_well_instance(_desc_list, _desc_count, _descs, _desc, _inst) \
+	for ((_descs) = (_desc_list); \
+	     (_descs) - (_desc_list) < (_desc_count); \
+	     (_descs)++) \
+		for_each_power_well_instance_in_desc_list((_descs)->list, (_descs)->count, \
+							  (_desc), (_inst))
+
 static int
 __set_power_wells(struct i915_power_domains *power_domains,
-		  const struct i915_power_well_desc *power_well_descs,
+		  const struct i915_power_well_desc_list *power_well_descs,
 		  int power_well_descs_sz, u64 skip_mask)
 {
 	struct drm_i915_private *i915 = container_of(power_domains,
 						     struct drm_i915_private,
 						     power_domains);
 	u64 power_well_ids = 0;
+	const struct i915_power_well_desc_list *desc_list;
 	const struct i915_power_well_desc *desc;
 	const struct i915_power_well_instance *inst;
 	int power_well_count = 0;
 	int plt_idx = 0;
 
-	for_each_power_well_instance(power_well_descs, power_well_descs_sz, desc, inst)
+	for_each_power_well_instance(power_well_descs, power_well_descs_sz, desc_list, desc, inst)
 		if (!(BIT_ULL(inst->id) & skip_mask))
 			power_well_count++;
 
@@ -1471,7 +1434,7 @@ __set_power_wells(struct i915_power_domains *power_domains,
 	if (!power_domains->power_wells)
 		return -ENOMEM;
 
-	for_each_power_well_instance(power_well_descs, power_well_descs_sz, desc, inst) {
+	for_each_power_well_instance(power_well_descs, power_well_descs_sz, desc_list, desc, inst) {
 		struct i915_power_well *pw = &power_domains->power_wells[plt_idx];
 		enum i915_power_well_id id = inst->id;
 
@@ -1557,7 +1520,7 @@ int intel_display_power_map_init(struct i915_power_domains *power_domains)
 	else if (IS_I830(i915))
 		return set_power_wells(power_domains, i830_power_wells);
 	else
-		return set_power_wells(power_domains, i9xx_always_on_power_well);
+		return set_power_wells(power_domains, i9xx_power_wells);
 }
 
 /**
-- 
2.30.2

