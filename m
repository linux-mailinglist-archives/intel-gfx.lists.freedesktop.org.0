Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 28E6D4AD784
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Feb 2022 12:37:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DA2CC10E636;
	Tue,  8 Feb 2022 11:37:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 210C610E327
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Feb 2022 11:37:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644320239; x=1675856239;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=XnrKJaj4J2z8gAETvVlr9H3MVffSdEGF0e4uFTd/fCQ=;
 b=b0k8Sg9iempGa5BPcM53DhY/HG1RnnBG7CtS1Zu71WKtccDT1nui6gCD
 MxEs5dSVfgZGOq7L0rPv6gFOgUopqsE00VME1SCc1zJndDhT4mgzojS+/
 DU7iI0KXChtzI/1nQU4t+v1EFyr+0dGa848ExsJRDCJWqeKMhl5NpST0u
 zPTKtDwyOrKPRKNzgNMrMZd6UayehUf4bNxkBbE4m9S46L/+/5DNuOIjE
 nOT95pbS+xcqWyoNPpIjpmAWPv/ZUHcOyy0cIg3PwB1ImUYYHLahWwOWG
 jZPkWnvOgXVqQ8hXZgOUFroHxnYVfe62p+sERp0NU6O6JGr4Q3Lzigm+f g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10251"; a="232495989"
X-IronPort-AV: E=Sophos;i="5.88,352,1635231600"; d="scan'208";a="232495989"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2022 03:37:18 -0800
X-IronPort-AV: E=Sophos;i="5.88,352,1635231600"; d="scan'208";a="481915306"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2022 03:37:18 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  8 Feb 2022 13:36:45 +0200
Message-Id: <20220208113656.179823-16-imre.deak@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20220208113656.179823-1-imre.deak@intel.com>
References: <20220208113656.179823-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 15/26] drm/i915: Sanitize the power well names
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
index df076816a92c3..6253ad846c613 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_map.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_map.c
@@ -363,7 +363,7 @@ static const struct i915_power_well_desc skl_power_wells[] = {
 		.always_on = true,
 		.id = DISP_PW_ID_NONE,
 	}, {
-		.name = "power well 1",
+		.name = "PW_1",
 		/* Handled by the DMC firmware */
 		.domains = 0,
 		.ops = &hsw_power_well_ops,
@@ -374,7 +374,7 @@ static const struct i915_power_well_desc skl_power_wells[] = {
 			.hsw.idx = SKL_PW_CTL_IDX_PW_1,
 		},
 	}, {
-		.name = "MISC IO power well",
+		.name = "MISC_IO",
 		/* Handled by the DMC firmware */
 		.domains = 0,
 		.ops = &hsw_power_well_ops,
@@ -384,12 +384,12 @@ static const struct i915_power_well_desc skl_power_wells[] = {
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
@@ -400,7 +400,7 @@ static const struct i915_power_well_desc skl_power_wells[] = {
 			.hsw.idx = SKL_PW_CTL_IDX_PW_2,
 		},
 	}, {
-		.name = "DDI A/E IO power well",
+		.name = "DDI_IO_A_E",
 		.domains = SKL_DISPLAY_DDI_IO_A_E_POWER_DOMAINS,
 		.ops = &hsw_power_well_ops,
 		.id = DISP_PW_ID_NONE,
@@ -408,7 +408,7 @@ static const struct i915_power_well_desc skl_power_wells[] = {
 			.hsw.idx = SKL_PW_CTL_IDX_DDI_A_E,
 		},
 	}, {
-		.name = "DDI B IO power well",
+		.name = "DDI_IO_B",
 		.domains = SKL_DISPLAY_DDI_IO_B_POWER_DOMAINS,
 		.ops = &hsw_power_well_ops,
 		.id = DISP_PW_ID_NONE,
@@ -416,7 +416,7 @@ static const struct i915_power_well_desc skl_power_wells[] = {
 			.hsw.idx = SKL_PW_CTL_IDX_DDI_B,
 		},
 	}, {
-		.name = "DDI C IO power well",
+		.name = "DDI_IO_C",
 		.domains = SKL_DISPLAY_DDI_IO_C_POWER_DOMAINS,
 		.ops = &hsw_power_well_ops,
 		.id = DISP_PW_ID_NONE,
@@ -424,7 +424,7 @@ static const struct i915_power_well_desc skl_power_wells[] = {
 			.hsw.idx = SKL_PW_CTL_IDX_DDI_C,
 		},
 	}, {
-		.name = "DDI D IO power well",
+		.name = "DDI_IO_D",
 		.domains = SKL_DISPLAY_DDI_IO_D_POWER_DOMAINS,
 		.ops = &hsw_power_well_ops,
 		.id = DISP_PW_ID_NONE,
@@ -479,7 +479,7 @@ static const struct i915_power_well_desc bxt_power_wells[] = {
 		.always_on = true,
 		.id = DISP_PW_ID_NONE,
 	}, {
-		.name = "power well 1",
+		.name = "PW_1",
 		/* Handled by the DMC firmware */
 		.domains = 0,
 		.ops = &hsw_power_well_ops,
@@ -490,12 +490,12 @@ static const struct i915_power_well_desc bxt_power_wells[] = {
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
@@ -589,7 +589,7 @@ static const struct i915_power_well_desc glk_power_wells[] = {
 		.always_on = true,
 		.id = DISP_PW_ID_NONE,
 	}, {
-		.name = "power well 1",
+		.name = "PW_1",
 		/* Handled by the DMC firmware */
 		.domains = 0,
 		.ops = &hsw_power_well_ops,
@@ -600,12 +600,12 @@ static const struct i915_power_well_desc glk_power_wells[] = {
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
@@ -640,7 +640,7 @@ static const struct i915_power_well_desc glk_power_wells[] = {
 			.bxt.phy = DPIO_PHY2,
 		},
 	}, {
-		.name = "AUX A",
+		.name = "AUX_A",
 		.domains = GLK_DISPLAY_AUX_A_POWER_DOMAINS,
 		.ops = &hsw_power_well_ops,
 		.id = DISP_PW_ID_NONE,
@@ -648,7 +648,7 @@ static const struct i915_power_well_desc glk_power_wells[] = {
 			.hsw.idx = GLK_PW_CTL_IDX_AUX_A,
 		},
 	}, {
-		.name = "AUX B",
+		.name = "AUX_B",
 		.domains = GLK_DISPLAY_AUX_B_POWER_DOMAINS,
 		.ops = &hsw_power_well_ops,
 		.id = DISP_PW_ID_NONE,
@@ -656,7 +656,7 @@ static const struct i915_power_well_desc glk_power_wells[] = {
 			.hsw.idx = GLK_PW_CTL_IDX_AUX_B,
 		},
 	}, {
-		.name = "AUX C",
+		.name = "AUX_C",
 		.domains = GLK_DISPLAY_AUX_C_POWER_DOMAINS,
 		.ops = &hsw_power_well_ops,
 		.id = DISP_PW_ID_NONE,
@@ -664,7 +664,7 @@ static const struct i915_power_well_desc glk_power_wells[] = {
 			.hsw.idx = GLK_PW_CTL_IDX_AUX_C,
 		},
 	}, {
-		.name = "DDI A IO power well",
+		.name = "DDI_IO_A",
 		.domains = GLK_DISPLAY_DDI_IO_A_POWER_DOMAINS,
 		.ops = &hsw_power_well_ops,
 		.id = DISP_PW_ID_NONE,
@@ -672,7 +672,7 @@ static const struct i915_power_well_desc glk_power_wells[] = {
 			.hsw.idx = GLK_PW_CTL_IDX_DDI_A,
 		},
 	}, {
-		.name = "DDI B IO power well",
+		.name = "DDI_IO_B",
 		.domains = GLK_DISPLAY_DDI_IO_B_POWER_DOMAINS,
 		.ops = &hsw_power_well_ops,
 		.id = DISP_PW_ID_NONE,
@@ -680,7 +680,7 @@ static const struct i915_power_well_desc glk_power_wells[] = {
 			.hsw.idx = SKL_PW_CTL_IDX_DDI_B,
 		},
 	}, {
-		.name = "DDI C IO power well",
+		.name = "DDI_IO_C",
 		.domains = GLK_DISPLAY_DDI_IO_C_POWER_DOMAINS,
 		.ops = &hsw_power_well_ops,
 		.id = DISP_PW_ID_NONE,
@@ -784,7 +784,7 @@ static const struct i915_power_well_desc icl_power_wells[] = {
 		.always_on = true,
 		.id = DISP_PW_ID_NONE,
 	}, {
-		.name = "power well 1",
+		.name = "PW_1",
 		/* Handled by the DMC firmware */
 		.domains = 0,
 		.ops = &hsw_power_well_ops,
@@ -795,12 +795,12 @@ static const struct i915_power_well_desc icl_power_wells[] = {
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
@@ -809,7 +809,7 @@ static const struct i915_power_well_desc icl_power_wells[] = {
 			.hsw.idx = ICL_PW_CTL_IDX_PW_2,
 		},
 	}, {
-		.name = "power well 3",
+		.name = "PW_3",
 		.domains = ICL_PW_3_POWER_DOMAINS,
 		.ops = &hsw_power_well_ops,
 		.has_vga = true,
@@ -820,7 +820,7 @@ static const struct i915_power_well_desc icl_power_wells[] = {
 			.hsw.idx = ICL_PW_CTL_IDX_PW_3,
 		},
 	}, {
-		.name = "DDI A IO",
+		.name = "DDI_IO_A",
 		.domains = ICL_DDI_IO_A_POWER_DOMAINS,
 		.ops = &icl_ddi_power_well_ops,
 		.id = DISP_PW_ID_NONE,
@@ -828,7 +828,7 @@ static const struct i915_power_well_desc icl_power_wells[] = {
 			.hsw.idx = ICL_PW_CTL_IDX_DDI_A,
 		},
 	}, {
-		.name = "DDI B IO",
+		.name = "DDI_IO_B",
 		.domains = ICL_DDI_IO_B_POWER_DOMAINS,
 		.ops = &icl_ddi_power_well_ops,
 		.id = DISP_PW_ID_NONE,
@@ -836,7 +836,7 @@ static const struct i915_power_well_desc icl_power_wells[] = {
 			.hsw.idx = ICL_PW_CTL_IDX_DDI_B,
 		},
 	}, {
-		.name = "DDI C IO",
+		.name = "DDI_IO_C",
 		.domains = ICL_DDI_IO_C_POWER_DOMAINS,
 		.ops = &icl_ddi_power_well_ops,
 		.id = DISP_PW_ID_NONE,
@@ -844,7 +844,7 @@ static const struct i915_power_well_desc icl_power_wells[] = {
 			.hsw.idx = ICL_PW_CTL_IDX_DDI_C,
 		},
 	}, {
-		.name = "DDI D IO",
+		.name = "DDI_IO_D",
 		.domains = ICL_DDI_IO_D_POWER_DOMAINS,
 		.ops = &icl_ddi_power_well_ops,
 		.id = DISP_PW_ID_NONE,
@@ -852,7 +852,7 @@ static const struct i915_power_well_desc icl_power_wells[] = {
 			.hsw.idx = ICL_PW_CTL_IDX_DDI_D,
 		},
 	}, {
-		.name = "DDI E IO",
+		.name = "DDI_IO_E",
 		.domains = ICL_DDI_IO_E_POWER_DOMAINS,
 		.ops = &icl_ddi_power_well_ops,
 		.id = DISP_PW_ID_NONE,
@@ -860,7 +860,7 @@ static const struct i915_power_well_desc icl_power_wells[] = {
 			.hsw.idx = ICL_PW_CTL_IDX_DDI_E,
 		},
 	}, {
-		.name = "DDI F IO",
+		.name = "DDI_IO_F",
 		.domains = ICL_DDI_IO_F_POWER_DOMAINS,
 		.ops = &icl_ddi_power_well_ops,
 		.id = DISP_PW_ID_NONE,
@@ -868,7 +868,7 @@ static const struct i915_power_well_desc icl_power_wells[] = {
 			.hsw.idx = ICL_PW_CTL_IDX_DDI_F,
 		},
 	}, {
-		.name = "AUX A",
+		.name = "AUX_A",
 		.domains = ICL_AUX_A_IO_POWER_DOMAINS,
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
@@ -876,7 +876,7 @@ static const struct i915_power_well_desc icl_power_wells[] = {
 			.hsw.idx = ICL_PW_CTL_IDX_AUX_A,
 		},
 	}, {
-		.name = "AUX B",
+		.name = "AUX_B",
 		.domains = ICL_AUX_B_IO_POWER_DOMAINS,
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
@@ -884,7 +884,7 @@ static const struct i915_power_well_desc icl_power_wells[] = {
 			.hsw.idx = ICL_PW_CTL_IDX_AUX_B,
 		},
 	}, {
-		.name = "AUX C TC1",
+		.name = "AUX_C",
 		.domains = ICL_AUX_C_TC1_IO_POWER_DOMAINS,
 		.ops = &icl_aux_power_well_ops,
 		.is_tc_tbt = false,
@@ -893,7 +893,7 @@ static const struct i915_power_well_desc icl_power_wells[] = {
 			.hsw.idx = ICL_PW_CTL_IDX_AUX_C,
 		},
 	}, {
-		.name = "AUX D TC2",
+		.name = "AUX_D",
 		.domains = ICL_AUX_D_TC2_IO_POWER_DOMAINS,
 		.ops = &icl_aux_power_well_ops,
 		.is_tc_tbt = false,
@@ -902,7 +902,7 @@ static const struct i915_power_well_desc icl_power_wells[] = {
 			.hsw.idx = ICL_PW_CTL_IDX_AUX_D,
 		},
 	}, {
-		.name = "AUX E TC3",
+		.name = "AUX_E",
 		.domains = ICL_AUX_E_TC3_IO_POWER_DOMAINS,
 		.ops = &icl_aux_power_well_ops,
 		.is_tc_tbt = false,
@@ -911,7 +911,7 @@ static const struct i915_power_well_desc icl_power_wells[] = {
 			.hsw.idx = ICL_PW_CTL_IDX_AUX_E,
 		},
 	}, {
-		.name = "AUX F TC4",
+		.name = "AUX_F",
 		.domains = ICL_AUX_F_TC4_IO_POWER_DOMAINS,
 		.ops = &icl_aux_power_well_ops,
 		.is_tc_tbt = false,
@@ -920,7 +920,7 @@ static const struct i915_power_well_desc icl_power_wells[] = {
 			.hsw.idx = ICL_PW_CTL_IDX_AUX_F,
 		},
 	}, {
-		.name = "AUX C TBT1",
+		.name = "AUX_TBT1",
 		.domains = ICL_AUX_C_TBT1_IO_POWER_DOMAINS,
 		.ops = &icl_aux_power_well_ops,
 		.is_tc_tbt = true,
@@ -929,7 +929,7 @@ static const struct i915_power_well_desc icl_power_wells[] = {
 			.hsw.idx = ICL_PW_CTL_IDX_AUX_TBT1,
 		},
 	}, {
-		.name = "AUX D TBT2",
+		.name = "AUX_TBT2",
 		.domains = ICL_AUX_D_TBT2_IO_POWER_DOMAINS,
 		.ops = &icl_aux_power_well_ops,
 		.is_tc_tbt = true,
@@ -938,7 +938,7 @@ static const struct i915_power_well_desc icl_power_wells[] = {
 			.hsw.idx = ICL_PW_CTL_IDX_AUX_TBT2,
 		},
 	}, {
-		.name = "AUX E TBT3",
+		.name = "AUX_TBT3",
 		.domains = ICL_AUX_E_TBT3_IO_POWER_DOMAINS,
 		.ops = &icl_aux_power_well_ops,
 		.is_tc_tbt = true,
@@ -947,7 +947,7 @@ static const struct i915_power_well_desc icl_power_wells[] = {
 			.hsw.idx = ICL_PW_CTL_IDX_AUX_TBT3,
 		},
 	}, {
-		.name = "AUX F TBT4",
+		.name = "AUX_TBT4",
 		.domains = ICL_AUX_F_TBT4_IO_POWER_DOMAINS,
 		.ops = &icl_aux_power_well_ops,
 		.is_tc_tbt = true,
@@ -956,7 +956,7 @@ static const struct i915_power_well_desc icl_power_wells[] = {
 			.hsw.idx = ICL_PW_CTL_IDX_AUX_TBT4,
 		},
 	}, {
-		.name = "power well 4",
+		.name = "PW_4",
 		.domains = ICL_PW_4_POWER_DOMAINS,
 		.ops = &hsw_power_well_ops,
 		.irq_pipe_mask = BIT(PIPE_C),
@@ -1072,7 +1072,7 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
 		.always_on = true,
 		.id = DISP_PW_ID_NONE,
 	}, {
-		.name = "power well 1",
+		.name = "PW_1",
 		/* Handled by the DMC firmware */
 		.domains = 0,
 		.ops = &hsw_power_well_ops,
@@ -1083,12 +1083,12 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
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
@@ -1097,7 +1097,7 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
 			.hsw.idx = ICL_PW_CTL_IDX_PW_2,
 		},
 	}, {
-		.name = "power well 3",
+		.name = "PW_3",
 		.domains = TGL_PW_3_POWER_DOMAINS,
 		.ops = &hsw_power_well_ops,
 		.has_vga = true,
@@ -1108,7 +1108,7 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
 			.hsw.idx = ICL_PW_CTL_IDX_PW_3,
 		},
 	}, {
-		.name = "DDI A IO",
+		.name = "DDI_IO_A",
 		.domains = ICL_DDI_IO_A_POWER_DOMAINS,
 		.ops = &icl_ddi_power_well_ops,
 		.id = DISP_PW_ID_NONE,
@@ -1116,7 +1116,7 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
 			.hsw.idx = ICL_PW_CTL_IDX_DDI_A,
 		}
 	}, {
-		.name = "DDI B IO",
+		.name = "DDI_IO_B",
 		.domains = ICL_DDI_IO_B_POWER_DOMAINS,
 		.ops = &icl_ddi_power_well_ops,
 		.id = DISP_PW_ID_NONE,
@@ -1124,7 +1124,7 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
 			.hsw.idx = ICL_PW_CTL_IDX_DDI_B,
 		}
 	}, {
-		.name = "DDI C IO",
+		.name = "DDI_IO_C",
 		.domains = ICL_DDI_IO_C_POWER_DOMAINS,
 		.ops = &icl_ddi_power_well_ops,
 		.id = DISP_PW_ID_NONE,
@@ -1132,7 +1132,7 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
 			.hsw.idx = ICL_PW_CTL_IDX_DDI_C,
 		}
 	}, {
-		.name = "DDI IO TC1",
+		.name = "DDI_IO_TC1",
 		.domains = TGL_DDI_IO_TC1_POWER_DOMAINS,
 		.ops = &icl_ddi_power_well_ops,
 		.id = DISP_PW_ID_NONE,
@@ -1140,7 +1140,7 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
 			.hsw.idx = TGL_PW_CTL_IDX_DDI_TC1,
 		},
 	}, {
-		.name = "DDI IO TC2",
+		.name = "DDI_IO_TC2",
 		.domains = TGL_DDI_IO_TC2_POWER_DOMAINS,
 		.ops = &icl_ddi_power_well_ops,
 		.id = DISP_PW_ID_NONE,
@@ -1148,7 +1148,7 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
 			.hsw.idx = TGL_PW_CTL_IDX_DDI_TC2,
 		},
 	}, {
-		.name = "DDI IO TC3",
+		.name = "DDI_IO_TC3",
 		.domains = TGL_DDI_IO_TC3_POWER_DOMAINS,
 		.ops = &icl_ddi_power_well_ops,
 		.id = DISP_PW_ID_NONE,
@@ -1156,7 +1156,7 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
 			.hsw.idx = TGL_PW_CTL_IDX_DDI_TC3,
 		},
 	}, {
-		.name = "DDI IO TC4",
+		.name = "DDI_IO_TC4",
 		.domains = TGL_DDI_IO_TC4_POWER_DOMAINS,
 		.ops = &icl_ddi_power_well_ops,
 		.id = DISP_PW_ID_NONE,
@@ -1164,7 +1164,7 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
 			.hsw.idx = TGL_PW_CTL_IDX_DDI_TC4,
 		},
 	}, {
-		.name = "DDI IO TC5",
+		.name = "DDI_IO_TC5",
 		.domains = TGL_DDI_IO_TC5_POWER_DOMAINS,
 		.ops = &icl_ddi_power_well_ops,
 		.id = DISP_PW_ID_NONE,
@@ -1172,7 +1172,7 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
 			.hsw.idx = TGL_PW_CTL_IDX_DDI_TC5,
 		},
 	}, {
-		.name = "DDI IO TC6",
+		.name = "DDI_IO_TC6",
 		.domains = TGL_DDI_IO_TC6_POWER_DOMAINS,
 		.ops = &icl_ddi_power_well_ops,
 		.id = DISP_PW_ID_NONE,
@@ -1180,12 +1180,12 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
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
@@ -1193,7 +1193,7 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
 			.hsw.idx = ICL_PW_CTL_IDX_AUX_A,
 		},
 	}, {
-		.name = "AUX B",
+		.name = "AUX_B",
 		.domains = TGL_AUX_B_IO_POWER_DOMAINS,
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
@@ -1201,7 +1201,7 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
 			.hsw.idx = ICL_PW_CTL_IDX_AUX_B,
 		},
 	}, {
-		.name = "AUX C",
+		.name = "AUX_C",
 		.domains = TGL_AUX_C_IO_POWER_DOMAINS,
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
@@ -1209,7 +1209,7 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
 			.hsw.idx = ICL_PW_CTL_IDX_AUX_C,
 		},
 	}, {
-		.name = "AUX USBC1",
+		.name = "AUX_USBC1",
 		.domains = TGL_AUX_IO_USBC1_POWER_DOMAINS,
 		.ops = &icl_aux_power_well_ops,
 		.is_tc_tbt = false,
@@ -1218,7 +1218,7 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
 			.hsw.idx = TGL_PW_CTL_IDX_AUX_TC1,
 		},
 	}, {
-		.name = "AUX USBC2",
+		.name = "AUX_USBC2",
 		.domains = TGL_AUX_IO_USBC2_POWER_DOMAINS,
 		.ops = &icl_aux_power_well_ops,
 		.is_tc_tbt = false,
@@ -1227,7 +1227,7 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
 			.hsw.idx = TGL_PW_CTL_IDX_AUX_TC2,
 		},
 	}, {
-		.name = "AUX USBC3",
+		.name = "AUX_USBC3",
 		.domains = TGL_AUX_IO_USBC3_POWER_DOMAINS,
 		.ops = &icl_aux_power_well_ops,
 		.is_tc_tbt = false,
@@ -1236,7 +1236,7 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
 			.hsw.idx = TGL_PW_CTL_IDX_AUX_TC3,
 		},
 	}, {
-		.name = "AUX USBC4",
+		.name = "AUX_USBC4",
 		.domains = TGL_AUX_IO_USBC4_POWER_DOMAINS,
 		.ops = &icl_aux_power_well_ops,
 		.is_tc_tbt = false,
@@ -1245,7 +1245,7 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
 			.hsw.idx = TGL_PW_CTL_IDX_AUX_TC4,
 		},
 	}, {
-		.name = "AUX USBC5",
+		.name = "AUX_USBC5",
 		.domains = TGL_AUX_IO_USBC5_POWER_DOMAINS,
 		.ops = &icl_aux_power_well_ops,
 		.is_tc_tbt = false,
@@ -1254,7 +1254,7 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
 			.hsw.idx = TGL_PW_CTL_IDX_AUX_TC5,
 		},
 	}, {
-		.name = "AUX USBC6",
+		.name = "AUX_USBC6",
 		.domains = TGL_AUX_IO_USBC6_POWER_DOMAINS,
 		.ops = &icl_aux_power_well_ops,
 		.is_tc_tbt = false,
@@ -1263,7 +1263,7 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
 			.hsw.idx = TGL_PW_CTL_IDX_AUX_TC6,
 		},
 	}, {
-		.name = "AUX TBT1",
+		.name = "AUX_TBT1",
 		.domains = TGL_AUX_IO_TBT1_POWER_DOMAINS,
 		.ops = &icl_aux_power_well_ops,
 		.is_tc_tbt = true,
@@ -1272,7 +1272,7 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
 			.hsw.idx = TGL_PW_CTL_IDX_AUX_TBT1,
 		},
 	}, {
-		.name = "AUX TBT2",
+		.name = "AUX_TBT2",
 		.domains = TGL_AUX_IO_TBT2_POWER_DOMAINS,
 		.ops = &icl_aux_power_well_ops,
 		.is_tc_tbt = true,
@@ -1281,7 +1281,7 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
 			.hsw.idx = TGL_PW_CTL_IDX_AUX_TBT2,
 		},
 	}, {
-		.name = "AUX TBT3",
+		.name = "AUX_TBT3",
 		.domains = TGL_AUX_IO_TBT3_POWER_DOMAINS,
 		.ops = &icl_aux_power_well_ops,
 		.is_tc_tbt = true,
@@ -1290,7 +1290,7 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
 			.hsw.idx = TGL_PW_CTL_IDX_AUX_TBT3,
 		},
 	}, {
-		.name = "AUX TBT4",
+		.name = "AUX_TBT4",
 		.domains = TGL_AUX_IO_TBT4_POWER_DOMAINS,
 		.ops = &icl_aux_power_well_ops,
 		.is_tc_tbt = true,
@@ -1299,7 +1299,7 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
 			.hsw.idx = TGL_PW_CTL_IDX_AUX_TBT4,
 		},
 	}, {
-		.name = "AUX TBT5",
+		.name = "AUX_TBT5",
 		.domains = TGL_AUX_IO_TBT5_POWER_DOMAINS,
 		.ops = &icl_aux_power_well_ops,
 		.is_tc_tbt = true,
@@ -1308,7 +1308,7 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
 			.hsw.idx = TGL_PW_CTL_IDX_AUX_TBT5,
 		},
 	}, {
-		.name = "AUX TBT6",
+		.name = "AUX_TBT6",
 		.domains = TGL_AUX_IO_TBT6_POWER_DOMAINS,
 		.ops = &icl_aux_power_well_ops,
 		.is_tc_tbt = true,
@@ -1317,7 +1317,7 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
 			.hsw.idx = TGL_PW_CTL_IDX_AUX_TBT6,
 		},
 	}, {
-		.name = "power well 4",
+		.name = "PW_4",
 		.domains = TGL_PW_4_POWER_DOMAINS,
 		.ops = &hsw_power_well_ops,
 		.has_fuses = true,
@@ -1327,7 +1327,7 @@ static const struct i915_power_well_desc tgl_power_wells[] = {
 			.hsw.idx = ICL_PW_CTL_IDX_PW_4,
 		}
 	}, {
-		.name = "power well 5",
+		.name = "PW_5",
 		.domains = TGL_PW_5_POWER_DOMAINS,
 		.ops = &hsw_power_well_ops,
 		.has_fuses = true,
@@ -1395,7 +1395,7 @@ static const struct i915_power_well_desc rkl_power_wells[] = {
 		.always_on = true,
 		.id = DISP_PW_ID_NONE,
 	}, {
-		.name = "power well 1",
+		.name = "PW_1",
 		/* Handled by the DMC firmware */
 		.domains = 0,
 		.ops = &hsw_power_well_ops,
@@ -1406,12 +1406,12 @@ static const struct i915_power_well_desc rkl_power_wells[] = {
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
@@ -1422,7 +1422,7 @@ static const struct i915_power_well_desc rkl_power_wells[] = {
 			.hsw.idx = ICL_PW_CTL_IDX_PW_3,
 		},
 	}, {
-		.name = "power well 4",
+		.name = "PW_4",
 		.domains = RKL_PW_4_POWER_DOMAINS,
 		.ops = &hsw_power_well_ops,
 		.has_fuses = true,
@@ -1432,7 +1432,7 @@ static const struct i915_power_well_desc rkl_power_wells[] = {
 			.hsw.idx = ICL_PW_CTL_IDX_PW_4,
 		}
 	}, {
-		.name = "DDI A IO",
+		.name = "DDI_IO_A",
 		.domains = ICL_DDI_IO_A_POWER_DOMAINS,
 		.ops = &icl_ddi_power_well_ops,
 		.id = DISP_PW_ID_NONE,
@@ -1440,7 +1440,7 @@ static const struct i915_power_well_desc rkl_power_wells[] = {
 			.hsw.idx = ICL_PW_CTL_IDX_DDI_A,
 		}
 	}, {
-		.name = "DDI B IO",
+		.name = "DDI_IO_B",
 		.domains = ICL_DDI_IO_B_POWER_DOMAINS,
 		.ops = &icl_ddi_power_well_ops,
 		.id = DISP_PW_ID_NONE,
@@ -1448,7 +1448,7 @@ static const struct i915_power_well_desc rkl_power_wells[] = {
 			.hsw.idx = ICL_PW_CTL_IDX_DDI_B,
 		}
 	}, {
-		.name = "DDI IO TC1",
+		.name = "DDI_IO_TC1",
 		.domains = TGL_DDI_IO_TC1_POWER_DOMAINS,
 		.ops = &icl_ddi_power_well_ops,
 		.id = DISP_PW_ID_NONE,
@@ -1456,7 +1456,7 @@ static const struct i915_power_well_desc rkl_power_wells[] = {
 			.hsw.idx = TGL_PW_CTL_IDX_DDI_TC1,
 		},
 	}, {
-		.name = "DDI IO TC2",
+		.name = "DDI_IO_TC2",
 		.domains = TGL_DDI_IO_TC2_POWER_DOMAINS,
 		.ops = &icl_ddi_power_well_ops,
 		.id = DISP_PW_ID_NONE,
@@ -1464,7 +1464,7 @@ static const struct i915_power_well_desc rkl_power_wells[] = {
 			.hsw.idx = TGL_PW_CTL_IDX_DDI_TC2,
 		},
 	}, {
-		.name = "AUX A",
+		.name = "AUX_A",
 		.domains = ICL_AUX_A_IO_POWER_DOMAINS,
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
@@ -1472,7 +1472,7 @@ static const struct i915_power_well_desc rkl_power_wells[] = {
 			.hsw.idx = ICL_PW_CTL_IDX_AUX_A,
 		},
 	}, {
-		.name = "AUX B",
+		.name = "AUX_B",
 		.domains = ICL_AUX_B_IO_POWER_DOMAINS,
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
@@ -1480,7 +1480,7 @@ static const struct i915_power_well_desc rkl_power_wells[] = {
 			.hsw.idx = ICL_PW_CTL_IDX_AUX_B,
 		},
 	}, {
-		.name = "AUX USBC1",
+		.name = "AUX_USBC1",
 		.domains = TGL_AUX_IO_USBC1_POWER_DOMAINS,
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
@@ -1488,7 +1488,7 @@ static const struct i915_power_well_desc rkl_power_wells[] = {
 			.hsw.idx = TGL_PW_CTL_IDX_AUX_TC1,
 		},
 	}, {
-		.name = "AUX USBC2",
+		.name = "AUX_USBC2",
 		.domains = TGL_AUX_IO_USBC2_POWER_DOMAINS,
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
@@ -1535,7 +1535,7 @@ static const struct i915_power_well_desc dg1_power_wells[] = {
 		.always_on = true,
 		.id = DISP_PW_ID_NONE,
 	}, {
-		.name = "power well 1",
+		.name = "PW_1",
 		/* Handled by the DMC firmware */
 		.domains = 0,
 		.ops = &hsw_power_well_ops,
@@ -1546,12 +1546,12 @@ static const struct i915_power_well_desc dg1_power_wells[] = {
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
@@ -1560,7 +1560,7 @@ static const struct i915_power_well_desc dg1_power_wells[] = {
 			.hsw.idx = ICL_PW_CTL_IDX_PW_2,
 		},
 	}, {
-		.name = "power well 3",
+		.name = "PW_3",
 		.domains = DG1_PW_3_POWER_DOMAINS,
 		.ops = &hsw_power_well_ops,
 		.irq_pipe_mask = BIT(PIPE_B),
@@ -1571,7 +1571,7 @@ static const struct i915_power_well_desc dg1_power_wells[] = {
 			.hsw.idx = ICL_PW_CTL_IDX_PW_3,
 		},
 	}, {
-		.name = "DDI A IO",
+		.name = "DDI_IO_A",
 		.domains = ICL_DDI_IO_A_POWER_DOMAINS,
 		.ops = &icl_ddi_power_well_ops,
 		.id = DISP_PW_ID_NONE,
@@ -1579,7 +1579,7 @@ static const struct i915_power_well_desc dg1_power_wells[] = {
 			.hsw.idx = ICL_PW_CTL_IDX_DDI_A,
 		}
 	}, {
-		.name = "DDI B IO",
+		.name = "DDI_IO_B",
 		.domains = ICL_DDI_IO_B_POWER_DOMAINS,
 		.ops = &icl_ddi_power_well_ops,
 		.id = DISP_PW_ID_NONE,
@@ -1587,7 +1587,7 @@ static const struct i915_power_well_desc dg1_power_wells[] = {
 			.hsw.idx = ICL_PW_CTL_IDX_DDI_B,
 		}
 	}, {
-		.name = "DDI IO TC1",
+		.name = "DDI_IO_TC1",
 		.domains = TGL_DDI_IO_TC1_POWER_DOMAINS,
 		.ops = &icl_ddi_power_well_ops,
 		.id = DISP_PW_ID_NONE,
@@ -1595,7 +1595,7 @@ static const struct i915_power_well_desc dg1_power_wells[] = {
 			.hsw.idx = TGL_PW_CTL_IDX_DDI_TC1,
 		},
 	}, {
-		.name = "DDI IO TC2",
+		.name = "DDI_IO_TC2",
 		.domains = TGL_DDI_IO_TC2_POWER_DOMAINS,
 		.ops = &icl_ddi_power_well_ops,
 		.id = DISP_PW_ID_NONE,
@@ -1603,7 +1603,7 @@ static const struct i915_power_well_desc dg1_power_wells[] = {
 			.hsw.idx = TGL_PW_CTL_IDX_DDI_TC2,
 		},
 	}, {
-		.name = "AUX A",
+		.name = "AUX_A",
 		.domains = TGL_AUX_A_IO_POWER_DOMAINS,
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
@@ -1611,7 +1611,7 @@ static const struct i915_power_well_desc dg1_power_wells[] = {
 			.hsw.idx = ICL_PW_CTL_IDX_AUX_A,
 		},
 	}, {
-		.name = "AUX B",
+		.name = "AUX_B",
 		.domains = TGL_AUX_B_IO_POWER_DOMAINS,
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
@@ -1619,7 +1619,7 @@ static const struct i915_power_well_desc dg1_power_wells[] = {
 			.hsw.idx = ICL_PW_CTL_IDX_AUX_B,
 		},
 	}, {
-		.name = "AUX USBC1",
+		.name = "AUX_USBC1",
 		.domains = TGL_AUX_IO_USBC1_POWER_DOMAINS,
 		.ops = &icl_aux_power_well_ops,
 		.is_tc_tbt = false,
@@ -1628,7 +1628,7 @@ static const struct i915_power_well_desc dg1_power_wells[] = {
 			.hsw.idx = TGL_PW_CTL_IDX_AUX_TC1,
 		},
 	}, {
-		.name = "AUX USBC2",
+		.name = "AUX_USBC2",
 		.domains = TGL_AUX_IO_USBC2_POWER_DOMAINS,
 		.ops = &icl_aux_power_well_ops,
 		.is_tc_tbt = false,
@@ -1637,7 +1637,7 @@ static const struct i915_power_well_desc dg1_power_wells[] = {
 			.hsw.idx = TGL_PW_CTL_IDX_AUX_TC2,
 		},
 	}, {
-		.name = "power well 4",
+		.name = "PW_4",
 		.domains = TGL_PW_4_POWER_DOMAINS,
 		.ops = &hsw_power_well_ops,
 		.has_fuses = true,
@@ -1647,7 +1647,7 @@ static const struct i915_power_well_desc dg1_power_wells[] = {
 			.hsw.idx = ICL_PW_CTL_IDX_PW_4,
 		}
 	}, {
-		.name = "power well 5",
+		.name = "PW_5",
 		.domains = TGL_PW_5_POWER_DOMAINS,
 		.ops = &hsw_power_well_ops,
 		.has_fuses = true,
@@ -1779,7 +1779,7 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
 		.always_on = true,
 		.id = DISP_PW_ID_NONE,
 	}, {
-		.name = "power well 1",
+		.name = "PW_1",
 		/* Handled by the DMC firmware */
 		.domains = 0,
 		.ops = &hsw_power_well_ops,
@@ -1790,12 +1790,12 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
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
@@ -1805,7 +1805,7 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
 			.hsw.idx = ICL_PW_CTL_IDX_PW_2,
 		},
 	}, {
-		.name = "power well A",
+		.name = "PW_A",
 		.domains = XELPD_PW_A_POWER_DOMAINS,
 		.ops = &hsw_power_well_ops,
 		.irq_pipe_mask = BIT(PIPE_A),
@@ -1815,7 +1815,7 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
 			.hsw.idx = XELPD_PW_CTL_IDX_PW_A,
 		},
 	}, {
-		.name = "power well B",
+		.name = "PW_B",
 		.domains = XELPD_PW_B_POWER_DOMAINS,
 		.ops = &hsw_power_well_ops,
 		.irq_pipe_mask = BIT(PIPE_B),
@@ -1825,7 +1825,7 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
 			.hsw.idx = XELPD_PW_CTL_IDX_PW_B,
 		},
 	}, {
-		.name = "power well C",
+		.name = "PW_C",
 		.domains = XELPD_PW_C_POWER_DOMAINS,
 		.ops = &hsw_power_well_ops,
 		.irq_pipe_mask = BIT(PIPE_C),
@@ -1835,7 +1835,7 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
 			.hsw.idx = XELPD_PW_CTL_IDX_PW_C,
 		},
 	}, {
-		.name = "power well D",
+		.name = "PW_D",
 		.domains = XELPD_PW_D_POWER_DOMAINS,
 		.ops = &hsw_power_well_ops,
 		.irq_pipe_mask = BIT(PIPE_D),
@@ -1845,7 +1845,7 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
 			.hsw.idx = XELPD_PW_CTL_IDX_PW_D,
 		},
 	}, {
-		.name = "DDI A IO",
+		.name = "DDI_IO_A",
 		.domains = ICL_DDI_IO_A_POWER_DOMAINS,
 		.ops = &icl_ddi_power_well_ops,
 		.id = DISP_PW_ID_NONE,
@@ -1853,7 +1853,7 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
 			.hsw.idx = ICL_PW_CTL_IDX_DDI_A,
 		}
 	}, {
-		.name = "DDI B IO",
+		.name = "DDI_IO_B",
 		.domains = ICL_DDI_IO_B_POWER_DOMAINS,
 		.ops = &icl_ddi_power_well_ops,
 		.id = DISP_PW_ID_NONE,
@@ -1861,7 +1861,7 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
 			.hsw.idx = ICL_PW_CTL_IDX_DDI_B,
 		}
 	}, {
-		.name = "DDI C IO",
+		.name = "DDI_IO_C",
 		.domains = ICL_DDI_IO_C_POWER_DOMAINS,
 		.ops = &icl_ddi_power_well_ops,
 		.id = DISP_PW_ID_NONE,
@@ -1869,7 +1869,7 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
 			.hsw.idx = ICL_PW_CTL_IDX_DDI_C,
 		}
 	}, {
-		.name = "DDI IO D_XELPD",
+		.name = "DDI_IO_D_XELPD",
 		.domains = XELPD_DDI_IO_D_XELPD_POWER_DOMAINS,
 		.ops = &icl_ddi_power_well_ops,
 		.id = DISP_PW_ID_NONE,
@@ -1877,7 +1877,7 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
 			.hsw.idx = XELPD_PW_CTL_IDX_DDI_D,
 		}
 	}, {
-		.name = "DDI IO E_XELPD",
+		.name = "DDI_IO_E_XELPD",
 		.domains = XELPD_DDI_IO_E_XELPD_POWER_DOMAINS,
 		.ops = &icl_ddi_power_well_ops,
 		.id = DISP_PW_ID_NONE,
@@ -1885,7 +1885,7 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
 			.hsw.idx = XELPD_PW_CTL_IDX_DDI_E,
 		}
 	}, {
-		.name = "DDI IO TC1",
+		.name = "DDI_IO_TC1",
 		.domains = XELPD_DDI_IO_TC1_POWER_DOMAINS,
 		.ops = &icl_ddi_power_well_ops,
 		.id = DISP_PW_ID_NONE,
@@ -1893,7 +1893,7 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
 			.hsw.idx = TGL_PW_CTL_IDX_DDI_TC1,
 		}
 	}, {
-		.name = "DDI IO TC2",
+		.name = "DDI_IO_TC2",
 		.domains = XELPD_DDI_IO_TC2_POWER_DOMAINS,
 		.ops = &icl_ddi_power_well_ops,
 		.id = DISP_PW_ID_NONE,
@@ -1901,7 +1901,7 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
 			.hsw.idx = TGL_PW_CTL_IDX_DDI_TC2,
 		}
 	}, {
-		.name = "DDI IO TC3",
+		.name = "DDI_IO_TC3",
 		.domains = XELPD_DDI_IO_TC3_POWER_DOMAINS,
 		.ops = &icl_ddi_power_well_ops,
 		.id = DISP_PW_ID_NONE,
@@ -1909,7 +1909,7 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
 			.hsw.idx = TGL_PW_CTL_IDX_DDI_TC3,
 		}
 	}, {
-		.name = "DDI IO TC4",
+		.name = "DDI_IO_TC4",
 		.domains = XELPD_DDI_IO_TC4_POWER_DOMAINS,
 		.ops = &icl_ddi_power_well_ops,
 		.id = DISP_PW_ID_NONE,
@@ -1917,7 +1917,7 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
 			.hsw.idx = TGL_PW_CTL_IDX_DDI_TC4,
 		}
 	}, {
-		.name = "AUX A",
+		.name = "AUX_A",
 		.domains = ICL_AUX_A_IO_POWER_DOMAINS,
 		.ops = &icl_aux_power_well_ops,
 		.fixed_enable_delay = true,
@@ -1926,7 +1926,7 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
 			.hsw.idx = ICL_PW_CTL_IDX_AUX_A,
 		},
 	}, {
-		.name = "AUX B",
+		.name = "AUX_B",
 		.domains = ICL_AUX_B_IO_POWER_DOMAINS,
 		.ops = &icl_aux_power_well_ops,
 		.fixed_enable_delay = true,
@@ -1935,7 +1935,7 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
 			.hsw.idx = ICL_PW_CTL_IDX_AUX_B,
 		},
 	}, {
-		.name = "AUX C",
+		.name = "AUX_C",
 		.domains = TGL_AUX_C_IO_POWER_DOMAINS,
 		.ops = &icl_aux_power_well_ops,
 		.fixed_enable_delay = true,
@@ -1944,7 +1944,7 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
 			.hsw.idx = ICL_PW_CTL_IDX_AUX_C,
 		},
 	}, {
-		.name = "AUX D_XELPD",
+		.name = "AUX_D_XELPD",
 		.domains = XELPD_AUX_IO_D_XELPD_POWER_DOMAINS,
 		.ops = &icl_aux_power_well_ops,
 		.fixed_enable_delay = true,
@@ -1953,7 +1953,7 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
 			.hsw.idx = XELPD_PW_CTL_IDX_AUX_D,
 		},
 	}, {
-		.name = "AUX E_XELPD",
+		.name = "AUX_E_XELPD",
 		.domains = XELPD_AUX_IO_E_XELPD_POWER_DOMAINS,
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
@@ -1961,7 +1961,7 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
 			.hsw.idx = XELPD_PW_CTL_IDX_AUX_E,
 		},
 	}, {
-		.name = "AUX USBC1",
+		.name = "AUX_USBC1",
 		.domains = XELPD_AUX_IO_USBC1_POWER_DOMAINS,
 		.ops = &icl_aux_power_well_ops,
 		.fixed_enable_delay = true,
@@ -1970,7 +1970,7 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
 			.hsw.idx = TGL_PW_CTL_IDX_AUX_TC1,
 		},
 	}, {
-		.name = "AUX USBC2",
+		.name = "AUX_USBC2",
 		.domains = XELPD_AUX_IO_USBC2_POWER_DOMAINS,
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
@@ -1978,7 +1978,7 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
 			.hsw.idx = TGL_PW_CTL_IDX_AUX_TC2,
 		},
 	}, {
-		.name = "AUX USBC3",
+		.name = "AUX_USBC3",
 		.domains = XELPD_AUX_IO_USBC3_POWER_DOMAINS,
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
@@ -1986,7 +1986,7 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
 			.hsw.idx = TGL_PW_CTL_IDX_AUX_TC3,
 		},
 	}, {
-		.name = "AUX USBC4",
+		.name = "AUX_USBC4",
 		.domains = XELPD_AUX_IO_USBC4_POWER_DOMAINS,
 		.ops = &icl_aux_power_well_ops,
 		.id = DISP_PW_ID_NONE,
@@ -1994,7 +1994,7 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
 			.hsw.idx = TGL_PW_CTL_IDX_AUX_TC4,
 		},
 	}, {
-		.name = "AUX TBT1",
+		.name = "AUX_TBT1",
 		.domains = XELPD_AUX_IO_TBT1_POWER_DOMAINS,
 		.ops = &icl_aux_power_well_ops,
 		.is_tc_tbt = true,
@@ -2003,7 +2003,7 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
 			.hsw.idx = TGL_PW_CTL_IDX_AUX_TBT1,
 		},
 	}, {
-		.name = "AUX TBT2",
+		.name = "AUX_TBT2",
 		.domains = XELPD_AUX_IO_TBT2_POWER_DOMAINS,
 		.ops = &icl_aux_power_well_ops,
 		.is_tc_tbt = true,
@@ -2012,7 +2012,7 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
 			.hsw.idx = TGL_PW_CTL_IDX_AUX_TBT2,
 		},
 	}, {
-		.name = "AUX TBT3",
+		.name = "AUX_TBT3",
 		.domains = XELPD_AUX_IO_TBT3_POWER_DOMAINS,
 		.ops = &icl_aux_power_well_ops,
 		.is_tc_tbt = true,
@@ -2021,7 +2021,7 @@ static const struct i915_power_well_desc xelpd_power_wells[] = {
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

