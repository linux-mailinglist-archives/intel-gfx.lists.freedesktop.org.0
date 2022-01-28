Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DD04749F8B8
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Jan 2022 12:50:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 154BB10E6CA;
	Fri, 28 Jan 2022 11:49:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 848E110E818
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Jan 2022 11:49:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643370568; x=1674906568;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=I7LyFIUtoLeCmBgOGLo5URCG7QZtWdp/PIj3bFGBqCY=;
 b=Wh+2+WLks7ksYgIgznsUxtf76TT7YWMTnttxgSLSv7G8QbviT9PA0FbH
 Gt3VSOjSEqjzurf3XEOisIyBvvOMh55/a66Q2DFarDb83SzmSnadYNVZB
 r/dEWhGLZ8jXk6UvpDtP36EbT0JX9RU+hKBv4gG4xGs2X39CjoMs9/4Jf
 SfrEDmy329qWdMV60AQwdgwY51lAsp9cqnnQYyKi78sF8y6vWoMXAcBMi
 7X1TVr6aJtc3tgeIJ82qSeu3Ge5TIGrJZuCXmNi7kIPcI3AwqjPeQA6vf
 qa09G5yIAFqzvV4FSqbI8FM/CeigpJvg3H4D43uEPbJVOniEKPQt28Id4 g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10240"; a="310420932"
X-IronPort-AV: E=Sophos;i="5.88,323,1635231600"; d="scan'208";a="310420932"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2022 03:49:28 -0800
X-IronPort-AV: E=Sophos;i="5.88,323,1635231600"; d="scan'208";a="480712834"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2022 03:49:27 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 28 Jan 2022 13:49:03 +0200
Message-Id: <20220128114914.2339526-9-imre.deak@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20220128114914.2339526-1-imre.deak@intel.com>
References: <20220128114914.2339526-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 08/19] drm/i915: Sanitize the power well names
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

Use the shortest descriptive name for all power wells for simplicity and
to use the same name for the same type of power wells on multiple
platforms.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../i915/display/intel_display_power_map.c    | 254 +++++++++---------
 1 file changed, 127 insertions(+), 127 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power_map.c b/drivers/gpu/drm/i915/display/intel_display_power_map.c
index 30c9d94b55929..773b133902e3d 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_map.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_map.c
@@ -500,7 +500,7 @@ static const struct i915_power_well_desc skl_power_wells[] = {
 		.always_on = true,
 		.id = DISP_PW_ID_NONE,
 	}, {
-		.name = "power well 1",
+		.name = "PW_1",
 		/* Handled by the DMC firmware */
 		.domains = 0,
 		.ops = &hsw_power_well_ops,
@@ -511,7 +511,7 @@ static const struct i915_power_well_desc skl_power_wells[] = {
 			.hsw.idx = SKL_PW_CTL_IDX_PW_1,
 		},
 	}, {
-		.name = "MISC IO power well",
+		.name = "MISC_IO",
 		/* Handled by the DMC firmware */
 		.domains = 0,
 		.ops = &hsw_power_well_ops,
@@ -521,12 +521,12 @@ static const struct i915_power_well_desc skl_power_wells[] = {
 			.hsw.idx = SKL_PW_CTL_IDX_MISC_IO,
 		},
 	}, {
-		.name = "DC off",
+		.name = "DC_off",
 		.domains = SKL_DISPLAY_DC_OFF_POWER_DOMAINS,
 		.ops = &gen9_dc_off_power_well_ops,
 		.id = SKL_DISP_DC_OFF,
 	}, {
-		.name = "power well 2",
+		.name = "PW_2",
 		.domains = SKL_DISPLAY_POWERWELL_2_POWER_DOMAINS,
 		.ops = &hsw_power_well_ops,
 		.has_vga = true,
@@ -537,7 +537,7 @@ static const struct i915_power_well_desc skl_power_wells[] = {
 			.hsw.idx = SKL_PW_CTL_IDX_PW_2,
 		},
 	}, {
-		.name = "DDI A/E IO power well",
+		.name = "DDI_IO_A_E",
 		.domains = SKL_DISPLAY_DDI_IO_A_E_POWER_DOMAINS,
 		.ops = &hsw_power_well_ops,
 		.id = DISP_PW_ID_NONE,
@@ -545,7 +545,7 @@ static const struct i915_power_well_desc skl_power_wells[] = {
 			.hsw.idx = SKL_PW_CTL_IDX_DDI_A_E,
 		},
 	}, {
-		.name = "DDI B IO power well",
+		.name = "DDI_IO_B",
 		.domains = SKL_DISPLAY_DDI_IO_B_POWER_DOMAINS,
 		.ops = &hsw_power_well_ops,
 		.id = DISP_PW_ID_NONE,
@@ -553,7 +553,7 @@ static const struct i915_power_well_desc skl_power_wells[] = {
 			.hsw.idx = SKL_PW_CTL_IDX_DDI_B,
 		},
 	}, {
-		.name = "DDI C IO power well",
+		.name = "DDI_IO_C",
 		.domains = SKL_DISPLAY_DDI_IO_C_POWER_DOMAINS,
 		.ops = &hsw_power_well_ops,
 		.id = DISP_PW_ID_NONE,
@@ -561,7 +561,7 @@ static const struct i915_power_well_desc skl_power_wells[] = {
 			.hsw.idx = SKL_PW_CTL_IDX_DDI_C,
 		},
 	}, {
-		.name = "DDI D IO power well",
+		.name = "DDI_IO_D",
 		.domains = SKL_DISPLAY_DDI_IO_D_POWER_DOMAINS,
 		.ops = &hsw_power_well_ops,
 		.id = DISP_PW_ID_NONE,
@@ -616,7 +616,7 @@ static const struct i915_power_well_desc bxt_power_wells[] = {
 		.always_on = true,
 		.id = DISP_PW_ID_NONE,
 	}, {
-		.name = "power well 1",
+		.name = "PW_1",
 		/* Handled by the DMC firmware */
 		.domains = 0,
 		.ops = &hsw_power_well_ops,
@@ -627,12 +627,12 @@ static const struct i915_power_well_desc bxt_power_wells[] = {
 			.hsw.idx = SKL_PW_CTL_IDX_PW_1,
 		},
 	}, {
-		.name = "DC off",
+		.name = "DC_off",
 		.domains = BXT_DISPLAY_DC_OFF_POWER_DOMAINS,
 		.ops = &gen9_dc_off_power_well_ops,
 		.id = SKL_DISP_DC_OFF,
 	}, {
-		.name = "power well 2",
+		.name = "PW_2",
 		.domains = BXT_DISPLAY_POWERWELL_2_POWER_DOMAINS,
 		.ops = &hsw_power_well_ops,
 		.has_vga = true,
@@ -726,7 +726,7 @@ static const struct i915_power_well_desc glk_power_wells[] = {
 		.always_on = true,
 		.id = DISP_PW_ID_NONE,
 	}, {
-		.name = "power well 1",
+		.name = "PW_1",
 		/* Handled by the DMC firmware */
 		.domains = 0,
 		.ops = &hsw_power_well_ops,
@@ -737,12 +737,12 @@ static const struct i915_power_well_desc glk_power_wells[] = {
 			.hsw.idx = SKL_PW_CTL_IDX_PW_1,
 		},
 	}, {
-		.name = "DC off",
+		.name = "DC_off",
 		.domains = GLK_DISPLAY_DC_OFF_POWER_DOMAINS,
 		.ops = &gen9_dc_off_power_well_ops,
 		.id = SKL_DISP_DC_OFF,
 	}, {
-		.name = "power well 2",
+		.name = "PW_2",
 		.domains = GLK_DISPLAY_POWERWELL_2_POWER_DOMAINS,
 		.ops = &hsw_power_well_ops,
 		.has_vga = true,
@@ -777,7 +777,7 @@ static const struct i915_power_well_desc glk_power_wells[] = {
 			.bxt.phy = DPIO_PHY2,
 		},
 	}, {
-		.name = "AUX A",
+		.name = "AUX_A",
 		.domains = GLK_DISPLAY_AUX_A_POWER_DOMAINS,
 		.ops = &hsw_power_well_ops,
 		.id = DISP_PW_ID_NONE,
@@ -785,7 +785,7 @@ static const struct i915_power_well_desc glk_power_wells[] = {
 			.hsw.idx = GLK_PW_CTL_IDX_AUX_A,
 		},
 	}, {
-		.name = "AUX B",
+		.name = "AUX_B",
 		.domains = GLK_DISPLAY_AUX_B_POWER_DOMAINS,
 		.ops = &hsw_power_well_ops,
 		.id = DISP_PW_ID_NONE,
@@ -793,7 +793,7 @@ static const struct i915_power_well_desc glk_power_wells[] = {
 			.hsw.idx = GLK_PW_CTL_IDX_AUX_B,
 		},
 	}, {
-		.name = "AUX C",
+		.name = "AUX_C",
 		.domains = GLK_DISPLAY_AUX_C_POWER_DOMAINS,
 		.ops = &hsw_power_well_ops,
 		.id = DISP_PW_ID_NONE,
@@ -801,7 +801,7 @@ static const struct i915_power_well_desc glk_power_wells[] = {
 			.hsw.idx = GLK_PW_CTL_IDX_AUX_C,
 		},
 	}, {
-		.name = "DDI A IO power well",
+		.name = "DDI_IO_A",
 		.domains = GLK_DISPLAY_DDI_IO_A_POWER_DOMAINS,
 		.ops = &hsw_power_well_ops,
 		.id = DISP_PW_ID_NONE,
@@ -809,7 +809,7 @@ static const struct i915_power_well_desc glk_power_wells[] = {
 			.hsw.idx = GLK_PW_CTL_IDX_DDI_A,
 		},
 	}, {
-		.name = "DDI B IO power well",
+		.name = "DDI_IO_B",
 		.domains = GLK_DISPLAY_DDI_IO_B_POWER_DOMAINS,
 		.ops = &hsw_power_well_ops,
 		.id = DISP_PW_ID_NONE,
@@ -817,7 +817,7 @@ static const struct i915_power_well_desc glk_power_wells[] = {
 			.hsw.idx = SKL_PW_CTL_IDX_DDI_B,
 		},
 	}, {
-		.name = "DDI C IO power well",
+		.name = "DDI_IO_C",
 		.domains = GLK_DISPLAY_DDI_IO_C_POWER_DOMAINS,
 		.ops = &hsw_power_well_ops,
 		.id = DISP_PW_ID_NONE,
@@ -921,7 +921,7 @@ static const struct i915_power_well_desc icl_power_wells[] = {
 		.always_on = true,
 		.id = DISP_PW_ID_NONE,
 	}, {
-		.name = "power well 1",
+		.name = "PW_1",
 		/* Handled by the DMC firmware */
 		.domains = 0,
 		.ops = &hsw_power_well_ops,
@@ -932,12 +932,12 @@ static const struct i915_power_well_desc icl_power_wells[] = {
 			.hsw.idx = ICL_PW_CTL_IDX_PW_1,
 		},
 	}, {
-		.name = "DC off",
+		.name = "DC_off",
 		.domains = ICL_DISPLAY_DC_OFF_POWER_DOMAINS,
 		.ops = &gen9_dc_off_power_well_ops,
 		.id = SKL_DISP_DC_OFF,
 	}, {
-		.name = "power well 2",
+		.name = "PW_2",
 		.domains = ICL_PW_2_POWER_DOMAINS,
 		.ops = &hsw_power_well_ops,
 		.has_fuses = true,
@@ -946,7 +946,7 @@ static const struct i915_power_well_desc icl_power_wells[] = {
 			.hsw.idx = ICL_PW_CTL_IDX_PW_2,
 		},
 	}, {
-		.name = "power well 3",
+		.name = "PW_3",
 		.domains = ICL_PW_3_POWER_DOMAINS,
 		.ops = &hsw_power_well_ops,
 		.has_vga = true,
@@ -957,7 +957,7 @@ static const struct i915_power_well_desc icl_power_wells[] = {
 			.hsw.idx = ICL_PW_CTL_IDX_PW_3,
 		},
 	}, {
-		.name = "DDI A IO",
+		.name = "DDI_IO_A",
 		.domains = ICL_DDI_IO_A_POWER_DOMAINS,
 		.ops = &icl_ddi_power_well_ops,
 		.id = DISP_PW_ID_NONE,
@@ -965,7 +965,7 @@ static const struct i915_power_well_desc icl_power_wells[] = {
 			.hsw.idx = ICL_PW_CTL_IDX_DDI_A,
 		},
 	}, {
-		.name = "DDI B IO",
+		.name = "DDI_IO_B",
 		.domains = ICL_DDI_IO_B_POWER_DOMAINS,
 		.ops = &icl_ddi_power_well_ops,
 		.id = DISP_PW_ID_NONE,
@@ -973,7 +973,7 @@ static const struct i915_power_well_desc icl_power_wells[] = {
 			.hsw.idx = ICL_PW_CTL_IDX_DDI_B,
 		},
 	}, {
-		.name = "DDI C IO",
+		.name = "DDI_IO_C",
 		.domains = ICL_DDI_IO_C_POWER_DOMAINS,
 		.ops = &icl_ddi_power_well_ops,
 		.id = DISP_PW_ID_NONE,
@@ -981,7 +981,7 @@ static const struct i915_power_well_desc icl_power_wells[] = {
 			.hsw.idx = ICL_PW_CTL_IDX_DDI_C,
 		},
 	}, {
-		.name = "DDI D IO",
+		.name = "DDI_IO_D",
 		.domains = ICL_DDI_IO_D_POWER_DOMAINS,
 		.ops = &icl_ddi_power_well_ops,
 		.id = DISP_PW_ID_NONE,
@@ -989,7 +989,7 @@ static const struct i915_power_well_desc icl_power_wells[] = {
 			.hsw.idx = ICL_PW_CTL_IDX_DDI_D,
 		},
 	}, {
-		.name = "DDI E IO",
+		.name = "DDI_IO_E",
 		.domains = ICL_DDI_IO_E_POWER_DOMAINS,
 		.ops = &icl_ddi_power_well_ops,
 		.id = DISP_PW_ID_NONE,
@@ -997,7 +997,7 @@ static const struct i915_power_well_desc icl_power_wells[] = {
 			.hsw.idx = ICL_PW_CTL_IDX_DDI_E,
 		},
 	}, {
-		.name = "DDI F IO",
+		.name = "DDI_IO_F",
 		.domains = ICL_DDI_IO_F_POWER_DOMAINS,
 		.ops = &icl_ddi_power_well_ops,
 		.id = DISP_PW_ID_NONE,
@@ -1005,7 +1005,7 @@ static const struct i915_power_well_desc icl_power_wells[] = {
 			.hsw.idx = ICL_PW_CTL_IDX_DDI_F,
 		},
 	}, {
-		.name = "AUX A",
+		.name = "AUX_A",
 		.domains = ICL_AUX_A_IO_POWER_DOMAINS,
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
@@ -1013,7 +1013,7 @@ static const struct i915_power_well_desc icl_power_wells[] = {
 			.hsw.idx = ICL_PW_CTL_IDX_AUX_A,
 		},
 	}, {
-		.name = "AUX B",
+		.name = "AUX_B",
 		.domains = ICL_AUX_B_IO_POWER_DOMAINS,
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
@@ -1021,7 +1021,7 @@ static const struct i915_power_well_desc icl_power_wells[] = {
 			.hsw.idx = ICL_PW_CTL_IDX_AUX_B,
 		},
 	}, {
-		.name = "AUX C TC1",
+		.name = "AUX_C",
 		.domains = ICL_AUX_C_TC1_IO_POWER_DOMAINS,
 		.ops = &icl_aux_power_well_ops,
 		.is_tc_tbt = false,
@@ -1030,7 +1030,7 @@ static const struct i915_power_well_desc icl_power_wells[] = {
 			.hsw.idx = ICL_PW_CTL_IDX_AUX_C,
 		},
 	}, {
-		.name = "AUX D TC2",
+		.name = "AUX_D",
 		.domains = ICL_AUX_D_TC2_IO_POWER_DOMAINS,
 		.ops = &icl_aux_power_well_ops,
 		.is_tc_tbt = false,
@@ -1039,7 +1039,7 @@ static const struct i915_power_well_desc icl_power_wells[] = {
 			.hsw.idx = ICL_PW_CTL_IDX_AUX_D,
 		},
 	}, {
-		.name = "AUX E TC3",
+		.name = "AUX_E",
 		.domains = ICL_AUX_E_TC3_IO_POWER_DOMAINS,
 		.ops = &icl_aux_power_well_ops,
 		.is_tc_tbt = false,
@@ -1048,7 +1048,7 @@ static const struct i915_power_well_desc icl_power_wells[] = {
 			.hsw.idx = ICL_PW_CTL_IDX_AUX_E,
 		},
 	}, {
-		.name = "AUX F TC4",
+		.name = "AUX_F",
 		.domains = ICL_AUX_F_TC4_IO_POWER_DOMAINS,
 		.ops = &icl_aux_power_well_ops,
 		.is_tc_tbt = false,
@@ -1057,7 +1057,7 @@ static const struct i915_power_well_desc icl_power_wells[] = {
 			.hsw.idx = ICL_PW_CTL_IDX_AUX_F,
 		},
 	}, {
-		.name = "AUX C TBT1",
+		.name = "AUX_TBT1",
 		.domains = ICL_AUX_C_TBT1_IO_POWER_DOMAINS,
 		.ops = &icl_aux_power_well_ops,
 		.is_tc_tbt = true,
@@ -1066,7 +1066,7 @@ static const struct i915_power_well_desc icl_power_wells[] = {
 			.hsw.idx = ICL_PW_CTL_IDX_AUX_TBT1,
 		},
 	}, {
-		.name = "AUX D TBT2",
+		.name = "AUX_TBT2",
 		.domains = ICL_AUX_D_TBT2_IO_POWER_DOMAINS,
 		.ops = &icl_aux_power_well_ops,
 		.is_tc_tbt = true,
@@ -1075,7 +1075,7 @@ static const struct i915_power_well_desc icl_power_wells[] = {
 			.hsw.idx = ICL_PW_CTL_IDX_AUX_TBT2,
 		},
 	}, {
-		.name = "AUX E TBT3",
+		.name = "AUX_TBT3",
 		.domains = ICL_AUX_E_TBT3_IO_POWER_DOMAINS,
 		.ops = &icl_aux_power_well_ops,
 		.is_tc_tbt = true,
@@ -1084,7 +1084,7 @@ static const struct i915_power_well_desc icl_power_wells[] = {
 			.hsw.idx = ICL_PW_CTL_IDX_AUX_TBT3,
 		},
 	}, {
-		.name = "AUX F TBT4",
+		.name = "AUX_TBT4",
 		.domains = ICL_AUX_F_TBT4_IO_POWER_DOMAINS,
 		.ops = &icl_aux_power_well_ops,
 		.is_tc_tbt = true,
@@ -1093,7 +1093,7 @@ static const struct i915_power_well_desc icl_power_wells[] = {
 			.hsw.idx = ICL_PW_CTL_IDX_AUX_TBT4,
 		},
 	}, {
-		.name = "power well 4",
+		.name = "PW_4",
 		.domains = ICL_PW_4_POWER_DOMAINS,
 		.ops = &hsw_power_well_ops,
 		.irq_pipe_mask = BIT(PIPE_C),
@@ -1209,7 +1209,7 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
 		.always_on = true,
 		.id = DISP_PW_ID_NONE,
 	}, {
-		.name = "power well 1",
+		.name = "PW_1",
 		/* Handled by the DMC firmware */
 		.domains = 0,
 		.ops = &hsw_power_well_ops,
@@ -1220,12 +1220,12 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
 			.hsw.idx = ICL_PW_CTL_IDX_PW_1,
 		},
 	}, {
-		.name = "DC off",
+		.name = "DC_off",
 		.domains = TGL_DISPLAY_DC_OFF_POWER_DOMAINS,
 		.ops = &gen9_dc_off_power_well_ops,
 		.id = SKL_DISP_DC_OFF,
 	}, {
-		.name = "power well 2",
+		.name = "PW_2",
 		.domains = TGL_PW_2_POWER_DOMAINS,
 		.ops = &hsw_power_well_ops,
 		.has_fuses = true,
@@ -1234,7 +1234,7 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
 			.hsw.idx = ICL_PW_CTL_IDX_PW_2,
 		},
 	}, {
-		.name = "power well 3",
+		.name = "PW_3",
 		.domains = TGL_PW_3_POWER_DOMAINS,
 		.ops = &hsw_power_well_ops,
 		.has_vga = true,
@@ -1245,7 +1245,7 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
 			.hsw.idx = ICL_PW_CTL_IDX_PW_3,
 		},
 	}, {
-		.name = "DDI A IO",
+		.name = "DDI_IO_A",
 		.domains = ICL_DDI_IO_A_POWER_DOMAINS,
 		.ops = &icl_ddi_power_well_ops,
 		.id = DISP_PW_ID_NONE,
@@ -1253,7 +1253,7 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
 			.hsw.idx = ICL_PW_CTL_IDX_DDI_A,
 		}
 	}, {
-		.name = "DDI B IO",
+		.name = "DDI_IO_B",
 		.domains = ICL_DDI_IO_B_POWER_DOMAINS,
 		.ops = &icl_ddi_power_well_ops,
 		.id = DISP_PW_ID_NONE,
@@ -1261,7 +1261,7 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
 			.hsw.idx = ICL_PW_CTL_IDX_DDI_B,
 		}
 	}, {
-		.name = "DDI C IO",
+		.name = "DDI_IO_C",
 		.domains = ICL_DDI_IO_C_POWER_DOMAINS,
 		.ops = &icl_ddi_power_well_ops,
 		.id = DISP_PW_ID_NONE,
@@ -1269,7 +1269,7 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
 			.hsw.idx = ICL_PW_CTL_IDX_DDI_C,
 		}
 	}, {
-		.name = "DDI IO TC1",
+		.name = "DDI_IO_TC1",
 		.domains = TGL_DDI_IO_TC1_POWER_DOMAINS,
 		.ops = &icl_ddi_power_well_ops,
 		.id = DISP_PW_ID_NONE,
@@ -1277,7 +1277,7 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
 			.hsw.idx = TGL_PW_CTL_IDX_DDI_TC1,
 		},
 	}, {
-		.name = "DDI IO TC2",
+		.name = "DDI_IO_TC2",
 		.domains = TGL_DDI_IO_TC2_POWER_DOMAINS,
 		.ops = &icl_ddi_power_well_ops,
 		.id = DISP_PW_ID_NONE,
@@ -1285,7 +1285,7 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
 			.hsw.idx = TGL_PW_CTL_IDX_DDI_TC2,
 		},
 	}, {
-		.name = "DDI IO TC3",
+		.name = "DDI_IO_TC3",
 		.domains = TGL_DDI_IO_TC3_POWER_DOMAINS,
 		.ops = &icl_ddi_power_well_ops,
 		.id = DISP_PW_ID_NONE,
@@ -1293,7 +1293,7 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
 			.hsw.idx = TGL_PW_CTL_IDX_DDI_TC3,
 		},
 	}, {
-		.name = "DDI IO TC4",
+		.name = "DDI_IO_TC4",
 		.domains = TGL_DDI_IO_TC4_POWER_DOMAINS,
 		.ops = &icl_ddi_power_well_ops,
 		.id = DISP_PW_ID_NONE,
@@ -1301,7 +1301,7 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
 			.hsw.idx = TGL_PW_CTL_IDX_DDI_TC4,
 		},
 	}, {
-		.name = "DDI IO TC5",
+		.name = "DDI_IO_TC5",
 		.domains = TGL_DDI_IO_TC5_POWER_DOMAINS,
 		.ops = &icl_ddi_power_well_ops,
 		.id = DISP_PW_ID_NONE,
@@ -1309,7 +1309,7 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
 			.hsw.idx = TGL_PW_CTL_IDX_DDI_TC5,
 		},
 	}, {
-		.name = "DDI IO TC6",
+		.name = "DDI_IO_TC6",
 		.domains = TGL_DDI_IO_TC6_POWER_DOMAINS,
 		.ops = &icl_ddi_power_well_ops,
 		.id = DISP_PW_ID_NONE,
@@ -1317,12 +1317,12 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
 			.hsw.idx = TGL_PW_CTL_IDX_DDI_TC6,
 		},
 	}, {
-		.name = "TC cold off",
+		.name = "TC_cold_off",
 		.domains = TGL_TC_COLD_OFF_POWER_DOMAINS,
 		.ops = &tgl_tc_cold_off_ops,
 		.id = TGL_DISP_PW_TC_COLD_OFF,
 	}, {
-		.name = "AUX A",
+		.name = "AUX_A",
 		.domains = TGL_AUX_A_IO_POWER_DOMAINS,
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
@@ -1330,7 +1330,7 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
 			.hsw.idx = ICL_PW_CTL_IDX_AUX_A,
 		},
 	}, {
-		.name = "AUX B",
+		.name = "AUX_B",
 		.domains = TGL_AUX_B_IO_POWER_DOMAINS,
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
@@ -1338,7 +1338,7 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
 			.hsw.idx = ICL_PW_CTL_IDX_AUX_B,
 		},
 	}, {
-		.name = "AUX C",
+		.name = "AUX_C",
 		.domains = TGL_AUX_C_IO_POWER_DOMAINS,
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
@@ -1346,7 +1346,7 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
 			.hsw.idx = ICL_PW_CTL_IDX_AUX_C,
 		},
 	}, {
-		.name = "AUX USBC1",
+		.name = "AUX_USBC1",
 		.domains = TGL_AUX_IO_USBC1_POWER_DOMAINS,
 		.ops = &icl_aux_power_well_ops,
 		.is_tc_tbt = false,
@@ -1355,7 +1355,7 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
 			.hsw.idx = TGL_PW_CTL_IDX_AUX_TC1,
 		},
 	}, {
-		.name = "AUX USBC2",
+		.name = "AUX_USBC2",
 		.domains = TGL_AUX_IO_USBC2_POWER_DOMAINS,
 		.ops = &icl_aux_power_well_ops,
 		.is_tc_tbt = false,
@@ -1364,7 +1364,7 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
 			.hsw.idx = TGL_PW_CTL_IDX_AUX_TC2,
 		},
 	}, {
-		.name = "AUX USBC3",
+		.name = "AUX_USBC3",
 		.domains = TGL_AUX_IO_USBC3_POWER_DOMAINS,
 		.ops = &icl_aux_power_well_ops,
 		.is_tc_tbt = false,
@@ -1373,7 +1373,7 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
 			.hsw.idx = TGL_PW_CTL_IDX_AUX_TC3,
 		},
 	}, {
-		.name = "AUX USBC4",
+		.name = "AUX_USBC4",
 		.domains = TGL_AUX_IO_USBC4_POWER_DOMAINS,
 		.ops = &icl_aux_power_well_ops,
 		.is_tc_tbt = false,
@@ -1382,7 +1382,7 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
 			.hsw.idx = TGL_PW_CTL_IDX_AUX_TC4,
 		},
 	}, {
-		.name = "AUX USBC5",
+		.name = "AUX_USBC5",
 		.domains = TGL_AUX_IO_USBC5_POWER_DOMAINS,
 		.ops = &icl_aux_power_well_ops,
 		.is_tc_tbt = false,
@@ -1391,7 +1391,7 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
 			.hsw.idx = TGL_PW_CTL_IDX_AUX_TC5,
 		},
 	}, {
-		.name = "AUX USBC6",
+		.name = "AUX_USBC6",
 		.domains = TGL_AUX_IO_USBC6_POWER_DOMAINS,
 		.ops = &icl_aux_power_well_ops,
 		.is_tc_tbt = false,
@@ -1400,7 +1400,7 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
 			.hsw.idx = TGL_PW_CTL_IDX_AUX_TC6,
 		},
 	}, {
-		.name = "AUX TBT1",
+		.name = "AUX_TBT1",
 		.domains = TGL_AUX_IO_TBT1_POWER_DOMAINS,
 		.ops = &icl_aux_power_well_ops,
 		.is_tc_tbt = true,
@@ -1409,7 +1409,7 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
 			.hsw.idx = TGL_PW_CTL_IDX_AUX_TBT1,
 		},
 	}, {
-		.name = "AUX TBT2",
+		.name = "AUX_TBT2",
 		.domains = TGL_AUX_IO_TBT2_POWER_DOMAINS,
 		.ops = &icl_aux_power_well_ops,
 		.is_tc_tbt = true,
@@ -1418,7 +1418,7 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
 			.hsw.idx = TGL_PW_CTL_IDX_AUX_TBT2,
 		},
 	}, {
-		.name = "AUX TBT3",
+		.name = "AUX_TBT3",
 		.domains = TGL_AUX_IO_TBT3_POWER_DOMAINS,
 		.ops = &icl_aux_power_well_ops,
 		.is_tc_tbt = true,
@@ -1427,7 +1427,7 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
 			.hsw.idx = TGL_PW_CTL_IDX_AUX_TBT3,
 		},
 	}, {
-		.name = "AUX TBT4",
+		.name = "AUX_TBT4",
 		.domains = TGL_AUX_IO_TBT4_POWER_DOMAINS,
 		.ops = &icl_aux_power_well_ops,
 		.is_tc_tbt = true,
@@ -1436,7 +1436,7 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
 			.hsw.idx = TGL_PW_CTL_IDX_AUX_TBT4,
 		},
 	}, {
-		.name = "AUX TBT5",
+		.name = "AUX_TBT5",
 		.domains = TGL_AUX_IO_TBT5_POWER_DOMAINS,
 		.ops = &icl_aux_power_well_ops,
 		.is_tc_tbt = true,
@@ -1445,7 +1445,7 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
 			.hsw.idx = TGL_PW_CTL_IDX_AUX_TBT5,
 		},
 	}, {
-		.name = "AUX TBT6",
+		.name = "AUX_TBT6",
 		.domains = TGL_AUX_IO_TBT6_POWER_DOMAINS,
 		.ops = &icl_aux_power_well_ops,
 		.is_tc_tbt = true,
@@ -1454,7 +1454,7 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
 			.hsw.idx = TGL_PW_CTL_IDX_AUX_TBT6,
 		},
 	}, {
-		.name = "power well 4",
+		.name = "PW_4",
 		.domains = TGL_PW_4_POWER_DOMAINS,
 		.ops = &hsw_power_well_ops,
 		.has_fuses = true,
@@ -1464,7 +1464,7 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
 			.hsw.idx = ICL_PW_CTL_IDX_PW_4,
 		}
 	}, {
-		.name = "power well 5",
+		.name = "PW_5",
 		.domains = TGL_PW_5_POWER_DOMAINS,
 		.ops = &hsw_power_well_ops,
 		.has_fuses = true,
@@ -1532,7 +1532,7 @@ static const struct i915_power_well_desc rkl_power_wells[] = {
 		.always_on = true,
 		.id = DISP_PW_ID_NONE,
 	}, {
-		.name = "power well 1",
+		.name = "PW_1",
 		/* Handled by the DMC firmware */
 		.domains = 0,
 		.ops = &hsw_power_well_ops,
@@ -1543,12 +1543,12 @@ static const struct i915_power_well_desc rkl_power_wells[] = {
 			.hsw.idx = ICL_PW_CTL_IDX_PW_1,
 		},
 	}, {
-		.name = "DC off",
+		.name = "DC_off",
 		.domains = RKL_DISPLAY_DC_OFF_POWER_DOMAINS,
 		.ops = &gen9_dc_off_power_well_ops,
 		.id = SKL_DISP_DC_OFF,
 	}, {
-		.name = "power well 3",
+		.name = "PW_3",
 		.domains = RKL_PW_3_POWER_DOMAINS,
 		.ops = &hsw_power_well_ops,
 		.irq_pipe_mask = BIT(PIPE_B),
@@ -1559,7 +1559,7 @@ static const struct i915_power_well_desc rkl_power_wells[] = {
 			.hsw.idx = ICL_PW_CTL_IDX_PW_3,
 		},
 	}, {
-		.name = "power well 4",
+		.name = "PW_4",
 		.domains = RKL_PW_4_POWER_DOMAINS,
 		.ops = &hsw_power_well_ops,
 		.has_fuses = true,
@@ -1569,7 +1569,7 @@ static const struct i915_power_well_desc rkl_power_wells[] = {
 			.hsw.idx = ICL_PW_CTL_IDX_PW_4,
 		}
 	}, {
-		.name = "DDI A IO",
+		.name = "DDI_IO_A",
 		.domains = ICL_DDI_IO_A_POWER_DOMAINS,
 		.ops = &icl_ddi_power_well_ops,
 		.id = DISP_PW_ID_NONE,
@@ -1577,7 +1577,7 @@ static const struct i915_power_well_desc rkl_power_wells[] = {
 			.hsw.idx = ICL_PW_CTL_IDX_DDI_A,
 		}
 	}, {
-		.name = "DDI B IO",
+		.name = "DDI_IO_B",
 		.domains = ICL_DDI_IO_B_POWER_DOMAINS,
 		.ops = &icl_ddi_power_well_ops,
 		.id = DISP_PW_ID_NONE,
@@ -1585,7 +1585,7 @@ static const struct i915_power_well_desc rkl_power_wells[] = {
 			.hsw.idx = ICL_PW_CTL_IDX_DDI_B,
 		}
 	}, {
-		.name = "DDI IO TC1",
+		.name = "DDI_IO_TC1",
 		.domains = TGL_DDI_IO_TC1_POWER_DOMAINS,
 		.ops = &icl_ddi_power_well_ops,
 		.id = DISP_PW_ID_NONE,
@@ -1593,7 +1593,7 @@ static const struct i915_power_well_desc rkl_power_wells[] = {
 			.hsw.idx = TGL_PW_CTL_IDX_DDI_TC1,
 		},
 	}, {
-		.name = "DDI IO TC2",
+		.name = "DDI_IO_TC2",
 		.domains = TGL_DDI_IO_TC2_POWER_DOMAINS,
 		.ops = &icl_ddi_power_well_ops,
 		.id = DISP_PW_ID_NONE,
@@ -1601,7 +1601,7 @@ static const struct i915_power_well_desc rkl_power_wells[] = {
 			.hsw.idx = TGL_PW_CTL_IDX_DDI_TC2,
 		},
 	}, {
-		.name = "AUX A",
+		.name = "AUX_A",
 		.domains = ICL_AUX_A_IO_POWER_DOMAINS,
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
@@ -1609,7 +1609,7 @@ static const struct i915_power_well_desc rkl_power_wells[] = {
 			.hsw.idx = ICL_PW_CTL_IDX_AUX_A,
 		},
 	}, {
-		.name = "AUX B",
+		.name = "AUX_B",
 		.domains = ICL_AUX_B_IO_POWER_DOMAINS,
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
@@ -1617,7 +1617,7 @@ static const struct i915_power_well_desc rkl_power_wells[] = {
 			.hsw.idx = ICL_PW_CTL_IDX_AUX_B,
 		},
 	}, {
-		.name = "AUX USBC1",
+		.name = "AUX_USBC1",
 		.domains = TGL_AUX_IO_USBC1_POWER_DOMAINS,
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
@@ -1625,7 +1625,7 @@ static const struct i915_power_well_desc rkl_power_wells[] = {
 			.hsw.idx = TGL_PW_CTL_IDX_AUX_TC1,
 		},
 	}, {
-		.name = "AUX USBC2",
+		.name = "AUX_USBC2",
 		.domains = TGL_AUX_IO_USBC2_POWER_DOMAINS,
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
@@ -1672,7 +1672,7 @@ static const struct i915_power_well_desc dg1_power_wells[] = {
 		.always_on = true,
 		.id = DISP_PW_ID_NONE,
 	}, {
-		.name = "power well 1",
+		.name = "PW_1",
 		/* Handled by the DMC firmware */
 		.domains = 0,
 		.ops = &hsw_power_well_ops,
@@ -1683,12 +1683,12 @@ static const struct i915_power_well_desc dg1_power_wells[] = {
 			.hsw.idx = ICL_PW_CTL_IDX_PW_1,
 		},
 	}, {
-		.name = "DC off",
+		.name = "DC_off",
 		.domains = DG1_DISPLAY_DC_OFF_POWER_DOMAINS,
 		.ops = &gen9_dc_off_power_well_ops,
 		.id = SKL_DISP_DC_OFF,
 	}, {
-		.name = "power well 2",
+		.name = "PW_2",
 		.domains = DG1_PW_2_POWER_DOMAINS,
 		.ops = &hsw_power_well_ops,
 		.has_fuses = true,
@@ -1697,7 +1697,7 @@ static const struct i915_power_well_desc dg1_power_wells[] = {
 			.hsw.idx = ICL_PW_CTL_IDX_PW_2,
 		},
 	}, {
-		.name = "power well 3",
+		.name = "PW_3",
 		.domains = DG1_PW_3_POWER_DOMAINS,
 		.ops = &hsw_power_well_ops,
 		.irq_pipe_mask = BIT(PIPE_B),
@@ -1708,7 +1708,7 @@ static const struct i915_power_well_desc dg1_power_wells[] = {
 			.hsw.idx = ICL_PW_CTL_IDX_PW_3,
 		},
 	}, {
-		.name = "DDI A IO",
+		.name = "DDI_IO_A",
 		.domains = ICL_DDI_IO_A_POWER_DOMAINS,
 		.ops = &icl_ddi_power_well_ops,
 		.id = DISP_PW_ID_NONE,
@@ -1716,7 +1716,7 @@ static const struct i915_power_well_desc dg1_power_wells[] = {
 			.hsw.idx = ICL_PW_CTL_IDX_DDI_A,
 		}
 	}, {
-		.name = "DDI B IO",
+		.name = "DDI_IO_B",
 		.domains = ICL_DDI_IO_B_POWER_DOMAINS,
 		.ops = &icl_ddi_power_well_ops,
 		.id = DISP_PW_ID_NONE,
@@ -1724,7 +1724,7 @@ static const struct i915_power_well_desc dg1_power_wells[] = {
 			.hsw.idx = ICL_PW_CTL_IDX_DDI_B,
 		}
 	}, {
-		.name = "DDI IO TC1",
+		.name = "DDI_IO_TC1",
 		.domains = TGL_DDI_IO_TC1_POWER_DOMAINS,
 		.ops = &icl_ddi_power_well_ops,
 		.id = DISP_PW_ID_NONE,
@@ -1732,7 +1732,7 @@ static const struct i915_power_well_desc dg1_power_wells[] = {
 			.hsw.idx = TGL_PW_CTL_IDX_DDI_TC1,
 		},
 	}, {
-		.name = "DDI IO TC2",
+		.name = "DDI_IO_TC2",
 		.domains = TGL_DDI_IO_TC2_POWER_DOMAINS,
 		.ops = &icl_ddi_power_well_ops,
 		.id = DISP_PW_ID_NONE,
@@ -1740,7 +1740,7 @@ static const struct i915_power_well_desc dg1_power_wells[] = {
 			.hsw.idx = TGL_PW_CTL_IDX_DDI_TC2,
 		},
 	}, {
-		.name = "AUX A",
+		.name = "AUX_A",
 		.domains = TGL_AUX_A_IO_POWER_DOMAINS,
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
@@ -1748,7 +1748,7 @@ static const struct i915_power_well_desc dg1_power_wells[] = {
 			.hsw.idx = ICL_PW_CTL_IDX_AUX_A,
 		},
 	}, {
-		.name = "AUX B",
+		.name = "AUX_B",
 		.domains = TGL_AUX_B_IO_POWER_DOMAINS,
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
@@ -1756,7 +1756,7 @@ static const struct i915_power_well_desc dg1_power_wells[] = {
 			.hsw.idx = ICL_PW_CTL_IDX_AUX_B,
 		},
 	}, {
-		.name = "AUX USBC1",
+		.name = "AUX_USBC1",
 		.domains = TGL_AUX_IO_USBC1_POWER_DOMAINS,
 		.ops = &icl_aux_power_well_ops,
 		.is_tc_tbt = false,
@@ -1765,7 +1765,7 @@ static const struct i915_power_well_desc dg1_power_wells[] = {
 			.hsw.idx = TGL_PW_CTL_IDX_AUX_TC1,
 		},
 	}, {
-		.name = "AUX USBC2",
+		.name = "AUX_USBC2",
 		.domains = TGL_AUX_IO_USBC2_POWER_DOMAINS,
 		.ops = &icl_aux_power_well_ops,
 		.is_tc_tbt = false,
@@ -1774,7 +1774,7 @@ static const struct i915_power_well_desc dg1_power_wells[] = {
 			.hsw.idx = TGL_PW_CTL_IDX_AUX_TC2,
 		},
 	}, {
-		.name = "power well 4",
+		.name = "PW_4",
 		.domains = TGL_PW_4_POWER_DOMAINS,
 		.ops = &hsw_power_well_ops,
 		.has_fuses = true,
@@ -1784,7 +1784,7 @@ static const struct i915_power_well_desc dg1_power_wells[] = {
 			.hsw.idx = ICL_PW_CTL_IDX_PW_4,
 		}
 	}, {
-		.name = "power well 5",
+		.name = "PW_5",
 		.domains = TGL_PW_5_POWER_DOMAINS,
 		.ops = &hsw_power_well_ops,
 		.has_fuses = true,
@@ -1916,7 +1916,7 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
 		.always_on = true,
 		.id = DISP_PW_ID_NONE,
 	}, {
-		.name = "power well 1",
+		.name = "PW_1",
 		/* Handled by the DMC firmware */
 		.domains = 0,
 		.ops = &hsw_power_well_ops,
@@ -1927,12 +1927,12 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
 			.hsw.idx = ICL_PW_CTL_IDX_PW_1,
 		},
 	}, {
-		.name = "DC off",
+		.name = "DC_off",
 		.domains = XELPD_DISPLAY_DC_OFF_POWER_DOMAINS,
 		.ops = &gen9_dc_off_power_well_ops,
 		.id = SKL_DISP_DC_OFF,
 	}, {
-		.name = "power well 2",
+		.name = "PW_2",
 		.domains = XELPD_PW_2_POWER_DOMAINS,
 		.ops = &hsw_power_well_ops,
 		.has_vga = true,
@@ -1942,7 +1942,7 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
 			.hsw.idx = ICL_PW_CTL_IDX_PW_2,
 		},
 	}, {
-		.name = "power well A",
+		.name = "PW_A",
 		.domains = XELPD_PW_A_POWER_DOMAINS,
 		.ops = &hsw_power_well_ops,
 		.irq_pipe_mask = BIT(PIPE_A),
@@ -1952,7 +1952,7 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
 			.hsw.idx = XELPD_PW_CTL_IDX_PW_A,
 		},
 	}, {
-		.name = "power well B",
+		.name = "PW_B",
 		.domains = XELPD_PW_B_POWER_DOMAINS,
 		.ops = &hsw_power_well_ops,
 		.irq_pipe_mask = BIT(PIPE_B),
@@ -1962,7 +1962,7 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
 			.hsw.idx = XELPD_PW_CTL_IDX_PW_B,
 		},
 	}, {
-		.name = "power well C",
+		.name = "PW_C",
 		.domains = XELPD_PW_C_POWER_DOMAINS,
 		.ops = &hsw_power_well_ops,
 		.irq_pipe_mask = BIT(PIPE_C),
@@ -1972,7 +1972,7 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
 			.hsw.idx = XELPD_PW_CTL_IDX_PW_C,
 		},
 	}, {
-		.name = "power well D",
+		.name = "PW_D",
 		.domains = XELPD_PW_D_POWER_DOMAINS,
 		.ops = &hsw_power_well_ops,
 		.irq_pipe_mask = BIT(PIPE_D),
@@ -1982,7 +1982,7 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
 			.hsw.idx = XELPD_PW_CTL_IDX_PW_D,
 		},
 	}, {
-		.name = "DDI A IO",
+		.name = "DDI_IO_A",
 		.domains = ICL_DDI_IO_A_POWER_DOMAINS,
 		.ops = &icl_ddi_power_well_ops,
 		.id = DISP_PW_ID_NONE,
@@ -1990,7 +1990,7 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
 			.hsw.idx = ICL_PW_CTL_IDX_DDI_A,
 		}
 	}, {
-		.name = "DDI B IO",
+		.name = "DDI_IO_B",
 		.domains = ICL_DDI_IO_B_POWER_DOMAINS,
 		.ops = &icl_ddi_power_well_ops,
 		.id = DISP_PW_ID_NONE,
@@ -1998,7 +1998,7 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
 			.hsw.idx = ICL_PW_CTL_IDX_DDI_B,
 		}
 	}, {
-		.name = "DDI C IO",
+		.name = "DDI_IO_C",
 		.domains = ICL_DDI_IO_C_POWER_DOMAINS,
 		.ops = &icl_ddi_power_well_ops,
 		.id = DISP_PW_ID_NONE,
@@ -2006,7 +2006,7 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
 			.hsw.idx = ICL_PW_CTL_IDX_DDI_C,
 		}
 	}, {
-		.name = "DDI IO D_XELPD",
+		.name = "DDI_IO_D_XELPD",
 		.domains = XELPD_DDI_IO_D_XELPD_POWER_DOMAINS,
 		.ops = &icl_ddi_power_well_ops,
 		.id = DISP_PW_ID_NONE,
@@ -2014,7 +2014,7 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
 			.hsw.idx = XELPD_PW_CTL_IDX_DDI_D,
 		}
 	}, {
-		.name = "DDI IO E_XELPD",
+		.name = "DDI_IO_E_XELPD",
 		.domains = XELPD_DDI_IO_E_XELPD_POWER_DOMAINS,
 		.ops = &icl_ddi_power_well_ops,
 		.id = DISP_PW_ID_NONE,
@@ -2022,7 +2022,7 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
 			.hsw.idx = XELPD_PW_CTL_IDX_DDI_E,
 		}
 	}, {
-		.name = "DDI IO TC1",
+		.name = "DDI_IO_TC1",
 		.domains = XELPD_DDI_IO_TC1_POWER_DOMAINS,
 		.ops = &icl_ddi_power_well_ops,
 		.id = DISP_PW_ID_NONE,
@@ -2030,7 +2030,7 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
 			.hsw.idx = TGL_PW_CTL_IDX_DDI_TC1,
 		}
 	}, {
-		.name = "DDI IO TC2",
+		.name = "DDI_IO_TC2",
 		.domains = XELPD_DDI_IO_TC2_POWER_DOMAINS,
 		.ops = &icl_ddi_power_well_ops,
 		.id = DISP_PW_ID_NONE,
@@ -2038,7 +2038,7 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
 			.hsw.idx = TGL_PW_CTL_IDX_DDI_TC2,
 		}
 	}, {
-		.name = "DDI IO TC3",
+		.name = "DDI_IO_TC3",
 		.domains = XELPD_DDI_IO_TC3_POWER_DOMAINS,
 		.ops = &icl_ddi_power_well_ops,
 		.id = DISP_PW_ID_NONE,
@@ -2046,7 +2046,7 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
 			.hsw.idx = TGL_PW_CTL_IDX_DDI_TC3,
 		}
 	}, {
-		.name = "DDI IO TC4",
+		.name = "DDI_IO_TC4",
 		.domains = XELPD_DDI_IO_TC4_POWER_DOMAINS,
 		.ops = &icl_ddi_power_well_ops,
 		.id = DISP_PW_ID_NONE,
@@ -2054,7 +2054,7 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
 			.hsw.idx = TGL_PW_CTL_IDX_DDI_TC4,
 		}
 	}, {
-		.name = "AUX A",
+		.name = "AUX_A",
 		.domains = ICL_AUX_A_IO_POWER_DOMAINS,
 		.ops = &icl_aux_power_well_ops,
 		.fixed_enable_delay = true,
@@ -2063,7 +2063,7 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
 			.hsw.idx = ICL_PW_CTL_IDX_AUX_A,
 		},
 	}, {
-		.name = "AUX B",
+		.name = "AUX_B",
 		.domains = ICL_AUX_B_IO_POWER_DOMAINS,
 		.ops = &icl_aux_power_well_ops,
 		.fixed_enable_delay = true,
@@ -2072,7 +2072,7 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
 			.hsw.idx = ICL_PW_CTL_IDX_AUX_B,
 		},
 	}, {
-		.name = "AUX C",
+		.name = "AUX_C",
 		.domains = TGL_AUX_C_IO_POWER_DOMAINS,
 		.ops = &icl_aux_power_well_ops,
 		.fixed_enable_delay = true,
@@ -2081,7 +2081,7 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
 			.hsw.idx = ICL_PW_CTL_IDX_AUX_C,
 		},
 	}, {
-		.name = "AUX D_XELPD",
+		.name = "AUX_D_XELPD",
 		.domains = XELPD_AUX_IO_D_XELPD_POWER_DOMAINS,
 		.ops = &icl_aux_power_well_ops,
 		.fixed_enable_delay = true,
@@ -2090,7 +2090,7 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
 			.hsw.idx = XELPD_PW_CTL_IDX_AUX_D,
 		},
 	}, {
-		.name = "AUX E_XELPD",
+		.name = "AUX_E_XELPD",
 		.domains = XELPD_AUX_IO_E_XELPD_POWER_DOMAINS,
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
@@ -2098,7 +2098,7 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
 			.hsw.idx = XELPD_PW_CTL_IDX_AUX_E,
 		},
 	}, {
-		.name = "AUX USBC1",
+		.name = "AUX_USBC1",
 		.domains = XELPD_AUX_IO_USBC1_POWER_DOMAINS,
 		.ops = &icl_aux_power_well_ops,
 		.fixed_enable_delay = true,
@@ -2107,7 +2107,7 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
 			.hsw.idx = TGL_PW_CTL_IDX_AUX_TC1,
 		},
 	}, {
-		.name = "AUX USBC2",
+		.name = "AUX_USBC2",
 		.domains = XELPD_AUX_IO_USBC2_POWER_DOMAINS,
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
@@ -2115,7 +2115,7 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
 			.hsw.idx = TGL_PW_CTL_IDX_AUX_TC2,
 		},
 	}, {
-		.name = "AUX USBC3",
+		.name = "AUX_USBC3",
 		.domains = XELPD_AUX_IO_USBC3_POWER_DOMAINS,
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
@@ -2123,7 +2123,7 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
 			.hsw.idx = TGL_PW_CTL_IDX_AUX_TC3,
 		},
 	}, {
-		.name = "AUX USBC4",
+		.name = "AUX_USBC4",
 		.domains = XELPD_AUX_IO_USBC4_POWER_DOMAINS,
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
@@ -2131,7 +2131,7 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
 			.hsw.idx = TGL_PW_CTL_IDX_AUX_TC4,
 		},
 	}, {
-		.name = "AUX TBT1",
+		.name = "AUX_TBT1",
 		.domains = XELPD_AUX_IO_TBT1_POWER_DOMAINS,
 		.ops = &icl_aux_power_well_ops,
 		.is_tc_tbt = true,
@@ -2140,7 +2140,7 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
 			.hsw.idx = TGL_PW_CTL_IDX_AUX_TBT1,
 		},
 	}, {
-		.name = "AUX TBT2",
+		.name = "AUX_TBT2",
 		.domains = XELPD_AUX_IO_TBT2_POWER_DOMAINS,
 		.ops = &icl_aux_power_well_ops,
 		.is_tc_tbt = true,
@@ -2149,7 +2149,7 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
 			.hsw.idx = TGL_PW_CTL_IDX_AUX_TBT2,
 		},
 	}, {
-		.name = "AUX TBT3",
+		.name = "AUX_TBT3",
 		.domains = XELPD_AUX_IO_TBT3_POWER_DOMAINS,
 		.ops = &icl_aux_power_well_ops,
 		.is_tc_tbt = true,
@@ -2158,7 +2158,7 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
 			.hsw.idx = TGL_PW_CTL_IDX_AUX_TBT3,
 		},
 	}, {
-		.name = "AUX TBT4",
+		.name = "AUX_TBT4",
 		.domains = XELPD_AUX_IO_TBT4_POWER_DOMAINS,
 		.ops = &icl_aux_power_well_ops,
 		.is_tc_tbt = true,
-- 
2.27.0

