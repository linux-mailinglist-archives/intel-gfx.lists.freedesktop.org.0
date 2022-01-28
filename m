Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F30EF49F8B0
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Jan 2022 12:49:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 302F710E8E6;
	Fri, 28 Jan 2022 11:49:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1FEA810E714
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Jan 2022 11:49:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643370573; x=1674906573;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=W4AL66mj/iqGYjIWSw5jTiqsfav2EOmF7ulUSHrfEjs=;
 b=DUlwUNDgnw9zQDeMwecaZsjux2Skp0+IhwLNl/4BCBj6jrwohUoh9EpJ
 h29ijUQpn0sPaL3TgJ3uod2gNTiJ0PZYQ0b/N3MlPpLU+3AWJe5lxNRiS
 qFzHcJBzC24bT9GLS90CLpk0ijqe2t3d/+XWGMxTMpLYo/tyUviYLI47y
 cd4zVWwZVkbkORVRFhhcWjnugCTF9XM/VEez+lNCN6CVq9QmYRQhpt/oo
 adm++91R73GwJHyaLurTO+jdOtwAFQOIWwgu0EL9IMR+IDF5dnld5GRQR
 gR8uXFQ1hpFx31UhM7WrLrg4o7AvSYCNuJ2jtWLGCYfeFhVqs2rElNent A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10240"; a="310420945"
X-IronPort-AV: E=Sophos;i="5.88,323,1635231600"; d="scan'208";a="310420945"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2022 03:49:32 -0800
X-IronPort-AV: E=Sophos;i="5.88,323,1635231600"; d="scan'208";a="480712858"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2022 03:49:32 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 28 Jan 2022 13:49:07 +0200
Message-Id: <20220128114914.2339526-13-imre.deak@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20220128114914.2339526-1-imre.deak@intel.com>
References: <20220128114914.2339526-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 12/19] drm/i915: Allow platforms to share power
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
---
 .../i915/display/intel_display_power_map.c    | 280 ++++++++----------
 1 file changed, 121 insertions(+), 159 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power_map.c b/drivers/gpu/drm/i915/display/intel_display_power_map.c
index 0061646763089..1ddac0e15605e 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_map.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_map.c
@@ -37,6 +37,14 @@
 	{ .name = _name, .domain_list = _domain_list, ## __VA_ARGS__ }
 
 
+struct i915_power_well_desc_list {
+	const struct i915_power_well_desc *list;
+	u8 count;
+};
+
+#define I915_PW_DESCRIPTORS(x) __LIST(x)
+
+
 const char *
 intel_display_power_domain_str(enum intel_display_power_domain domain)
 {
@@ -177,7 +185,7 @@ intel_display_power_domain_str(enum intel_display_power_domain domain)
 
 I915_DECL_PW_DOMAINS(i9xx_pwdoms_always_on, I915_PW_DOMAINS_ALL);
 
-static const struct i915_power_well_desc i9xx_always_on_power_well[] = {
+static const struct i915_power_well_desc i9xx_power_wells_always_on[] = {
 	{
 		.instances = &I915_PW_INSTANCES(
 			I915_PW("always-on", &i9xx_pwdoms_always_on),
@@ -187,6 +195,10 @@ static const struct i915_power_well_desc i9xx_always_on_power_well[] = {
 	},
 };
 
+static const struct i915_power_well_desc_list i9xx_power_wells[] = {
+	I915_PW_DESCRIPTORS(i9xx_power_wells_always_on),
+};
+
 I915_DECL_PW_DOMAINS(i830_pwdoms_pipes,
 	POWER_DOMAIN_PIPE_A,
 	POWER_DOMAIN_PIPE_B,
@@ -196,14 +208,8 @@ I915_DECL_PW_DOMAINS(i830_pwdoms_pipes,
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
@@ -211,6 +217,11 @@ static const struct i915_power_well_desc i830_power_wells[] = {
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
@@ -229,14 +240,8 @@ I915_DECL_PW_DOMAINS(hsw_pwdoms_display,
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
@@ -247,6 +252,11 @@ static const struct i915_power_well_desc hsw_power_wells[] = {
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
@@ -264,14 +274,8 @@ I915_DECL_PW_DOMAINS(bdw_pwdoms_display,
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
@@ -283,6 +287,11 @@ static const struct i915_power_well_desc bdw_power_wells[] = {
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
@@ -318,14 +327,8 @@ I915_DECL_PW_DOMAINS(vlv_pwdoms_dpio_tx_bc_lanes,
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
@@ -354,6 +357,11 @@ static const struct i915_power_well_desc vlv_power_wells[] = {
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
@@ -390,14 +398,8 @@ I915_DECL_PW_DOMAINS(chv_pwdoms_dpio_cmn_d,
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
@@ -420,6 +422,11 @@ static const struct i915_power_well_desc chv_power_wells[] = {
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
@@ -467,14 +474,8 @@ I915_DECL_PW_DOMAINS(skl_pwdoms_ddi_io_d,
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
@@ -484,7 +485,11 @@ static const struct i915_power_well_desc skl_power_wells[] = {
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
@@ -520,6 +525,12 @@ static const struct i915_power_well_desc skl_power_wells[] = {
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
@@ -560,24 +571,8 @@ I915_DECL_PW_DOMAINS(bxt_pwdoms_dpio_cmn_bc,
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
@@ -606,6 +601,12 @@ static const struct i915_power_well_desc bxt_power_wells[] = {
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
@@ -666,24 +667,8 @@ I915_DECL_PW_DOMAINS(glk_pwdoms_aux_c,
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
@@ -725,6 +710,12 @@ static const struct i915_power_well_desc glk_power_wells[] = {
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
@@ -819,14 +810,8 @@ I915_DECL_PW_DOMAINS(icl_pwdoms_aux_tbt2,	POWER_DOMAIN_AUX_TBT_D);
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
@@ -836,7 +821,11 @@ static const struct i915_power_well_desc icl_power_wells[] = {
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
@@ -900,6 +889,12 @@ static const struct i915_power_well_desc icl_power_wells[] = {
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
@@ -1005,24 +1000,8 @@ I915_DECL_PW_DOMAINS(tgl_pwdoms_tc_cold_off,
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
@@ -1108,6 +1087,12 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
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
@@ -1162,24 +1147,8 @@ I915_DECL_PW_DOMAINS(rkl_pwdoms_dc_off,
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
@@ -1222,6 +1191,12 @@ static const struct i915_power_well_desc rkl_power_wells[] = {
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
@@ -1254,24 +1229,8 @@ I915_DECL_PW_DOMAINS(dg1_pwdoms_pw_2,
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
@@ -1330,6 +1289,12 @@ static const struct i915_power_well_desc dg1_power_wells[] = {
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
@@ -1455,24 +1420,8 @@ I915_DECL_PW_DOMAINS(xelpd_pwdoms_ddi_io_tc2,		POWER_DOMAIN_PORT_DDI_IO_TC2);
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
@@ -1558,6 +1507,12 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
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
@@ -1576,27 +1531,34 @@ static void init_power_well_domains(const struct i915_power_well_instance *inst,
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
+		for_each_power_well_instance_in_desc_list((_descs)->list, (_descs)->count, (_desc), (_inst))
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
 
@@ -1608,7 +1570,7 @@ __set_power_wells(struct i915_power_domains *power_domains,
 	if (!power_domains->power_wells)
 		return -ENOMEM;
 
-	for_each_power_well_instance(power_well_descs, power_well_descs_sz, desc, inst) {
+	for_each_power_well_instance(power_well_descs, power_well_descs_sz, desc_list, desc, inst) {
 		struct i915_power_well *pw = &power_domains->power_wells[plt_idx];
 		enum i915_power_well_id id = inst->id;
 
@@ -1685,7 +1647,7 @@ int intel_init_power_wells(struct i915_power_domains *power_domains)
 	else if (IS_I830(i915))
 		return set_power_wells(power_domains, i830_power_wells);
 	else
-		return set_power_wells(power_domains, i9xx_always_on_power_well);
+		return set_power_wells(power_domains, i9xx_power_wells);
 }
 
 void intel_cleanup_power_wells(struct i915_power_domains *power_domains)
-- 
2.27.0

