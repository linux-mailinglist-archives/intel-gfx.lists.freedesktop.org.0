Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 42814999560
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Oct 2024 00:43:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B0B410E9F9;
	Thu, 10 Oct 2024 22:43:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fsqDKrfs";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2747C10E9F1;
 Thu, 10 Oct 2024 22:43:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728600200; x=1760136200;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=PVhaEOF88AiurjHxx8g6eH1YF4BbcNGNGEvi61+en1U=;
 b=fsqDKrfs37wNlcAAz/uTWMURVVm11djHIrD8wbb9dGjQnOLdD/Eqrzm1
 y5FZlKTwr+VvkxWXLUrFVBQV9ZJBnH+6feaaItHLu/qy17jLUoSx3aWEy
 e52RR5+SgsfshBBitwOTF2Ij1hASfhntWhpK5DHiGi0HFVE9jXQwH4iBQ
 9PxDz2Zp58n07J+hHvgQMj+mOc31gnDZcoXtv0WkHx9Jvlo1BGolXky5S
 60+Hzm8KE6gtbrxIr1RN5YMTGhv9+SkwK1R9WhUW1bbNW0kjJuVCRDqPG
 WVbOk2TyeBZ/Y+LKKoS4Nj7QJ6rxbYuhVi8zgbEKu+4Sscgg6CedZtFRq A==;
X-CSE-ConnectionGUID: 8r1EHE2VTzSDjpcKltaX7A==
X-CSE-MsgGUID: IE2w7i8xSD+Ga18H8uFjsg==
X-IronPort-AV: E=McAfee;i="6700,10204,11221"; a="39380865"
X-IronPort-AV: E=Sophos;i="6.11,194,1725346800"; d="scan'208";a="39380865"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2024 15:43:19 -0700
X-CSE-ConnectionGUID: oCC7AQ2rTle4rUWdGkWqGg==
X-CSE-MsgGUID: N5igB7SCQbmZf01vgZ8HGA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,194,1725346800"; d="scan'208";a="76732024"
Received: from msatwood-mobl.jf.intel.com ([10.24.12.132])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2024 15:43:18 -0700
From: Matt Atwood <matthew.s.atwood@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: Matt Roper <matthew.d.roper@intel.com>,
 Matt Atwood <matthew.s.atwood@intel.com>,
 Luca Coelho <luciano.coelho@intel.com>
Subject: [PATCH v2 03/10] drm/i915/xe3lpd: Add new display power wells
Date: Thu, 10 Oct 2024 15:43:04 -0700
Message-ID: <20241010224311.50133-4-matthew.s.atwood@intel.com>
X-Mailer: git-send-email 2.45.0
In-Reply-To: <20241010224311.50133-1-matthew.s.atwood@intel.com>
References: <20241010224311.50133-1-matthew.s.atwood@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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

From: Matt Roper <matthew.d.roper@intel.com>

Xe3's power well handling is similar to previous platforms, but there
are a few changes that need to be handled to ensure optimal power
management:
 - PGB now only depends on PG1, not PG2
 - Transcoder B is now in PG1 (was previously in PGB)
 - Transcoders C & D are now in PG2 (were previously in PGC/PGD)
 - DC states now require PG2 to be off (whereas on Xe2 it could remain
   on as a dependency of PGB, although the features inside of it could
   not be used).

Bspec: 72519, 68851
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
Reviewed-by: Luca Coelho <luciano.coelho@intel.com>
---
 .../i915/display/intel_display_power_map.c    | 135 +++++++++++++++++-
 1 file changed, 134 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power_map.c b/drivers/gpu/drm/i915/display/intel_display_power_map.c
index 10948b3964ee..255b2c09607c 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_map.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_map.c
@@ -1586,6 +1586,137 @@ static const struct i915_power_well_desc_list xe2lpd_power_wells[] = {
 	I915_PW_DESCRIPTORS(xe2lpd_power_wells_pica),
 };
 
+/*
+ * Xe3 changes the power well hierarchy slightly from Xe_LPD+; PGB now
+ * depends on PG1 instead of PG2:
+ *
+ *       PG0
+ *        |
+ *     --PG1--
+ *    /   |   \
+ *  PGA  PGB  PG2
+ *           /   \
+ *         PGC   PGD
+ */
+
+#define XE3LPD_PW_C_POWER_DOMAINS \
+	POWER_DOMAIN_PIPE_C, \
+	POWER_DOMAIN_PIPE_PANEL_FITTER_C
+
+#define XE3LPD_PW_D_POWER_DOMAINS \
+	POWER_DOMAIN_PIPE_D, \
+	POWER_DOMAIN_PIPE_PANEL_FITTER_D
+
+#define XE3LPD_PW_2_POWER_DOMAINS \
+	XE3LPD_PW_C_POWER_DOMAINS, \
+	XE3LPD_PW_D_POWER_DOMAINS, \
+	POWER_DOMAIN_TRANSCODER_C, \
+	POWER_DOMAIN_TRANSCODER_D, \
+	POWER_DOMAIN_VGA, \
+	POWER_DOMAIN_PORT_DDI_LANES_TC1, \
+	POWER_DOMAIN_PORT_DDI_LANES_TC2, \
+	POWER_DOMAIN_PORT_DDI_LANES_TC3, \
+	POWER_DOMAIN_PORT_DDI_LANES_TC4
+
+I915_DECL_PW_DOMAINS(xe3lpd_pwdoms_pw_2,
+		     XE3LPD_PW_2_POWER_DOMAINS,
+		     POWER_DOMAIN_INIT);
+
+I915_DECL_PW_DOMAINS(xe3lpd_pwdoms_pw_b,
+		     POWER_DOMAIN_PIPE_B,
+		     POWER_DOMAIN_PIPE_PANEL_FITTER_B,
+		     POWER_DOMAIN_INIT);
+
+I915_DECL_PW_DOMAINS(xe3lpd_pwdoms_pw_c,
+		     XE3LPD_PW_C_POWER_DOMAINS,
+		     POWER_DOMAIN_INIT);
+
+I915_DECL_PW_DOMAINS(xe3lpd_pwdoms_pw_d,
+		     XE3LPD_PW_D_POWER_DOMAINS,
+		     POWER_DOMAIN_INIT);
+
+static const struct i915_power_well_desc xe3lpd_power_wells_main[] = {
+	{
+		.instances = &I915_PW_INSTANCES(
+			I915_PW("PW_2", &xe3lpd_pwdoms_pw_2,
+				.hsw.idx = ICL_PW_CTL_IDX_PW_2,
+				.id = SKL_DISP_PW_2),
+		),
+		.ops = &hsw_power_well_ops,
+		.has_vga = true,
+		.has_fuses = true,
+	}, {
+		.instances = &I915_PW_INSTANCES(
+			I915_PW("PW_A", &xelpd_pwdoms_pw_a,
+				.hsw.idx = XELPD_PW_CTL_IDX_PW_A),
+		),
+		.ops = &hsw_power_well_ops,
+		.irq_pipe_mask = BIT(PIPE_A),
+		.has_fuses = true,
+	}, {
+		.instances = &I915_PW_INSTANCES(
+			I915_PW("PW_B", &xe3lpd_pwdoms_pw_b,
+				.hsw.idx = XELPD_PW_CTL_IDX_PW_B),
+		),
+		.ops = &hsw_power_well_ops,
+		.irq_pipe_mask = BIT(PIPE_B),
+		.has_fuses = true,
+	}, {
+		.instances = &I915_PW_INSTANCES(
+			I915_PW("PW_C", &xe3lpd_pwdoms_pw_c,
+				.hsw.idx = XELPD_PW_CTL_IDX_PW_C),
+		),
+		.ops = &hsw_power_well_ops,
+		.irq_pipe_mask = BIT(PIPE_C),
+		.has_fuses = true,
+	}, {
+		.instances = &I915_PW_INSTANCES(
+			I915_PW("PW_D", &xe3lpd_pwdoms_pw_d,
+				.hsw.idx = XELPD_PW_CTL_IDX_PW_D),
+		),
+		.ops = &hsw_power_well_ops,
+		.irq_pipe_mask = BIT(PIPE_D),
+		.has_fuses = true,
+	}, {
+		.instances = &I915_PW_INSTANCES(
+			I915_PW("AUX_A", &icl_pwdoms_aux_a, .xelpdp.aux_ch = AUX_CH_A),
+			I915_PW("AUX_B", &icl_pwdoms_aux_b, .xelpdp.aux_ch = AUX_CH_B),
+			I915_PW("AUX_TC1", &xelpdp_pwdoms_aux_tc1, .xelpdp.aux_ch = AUX_CH_USBC1),
+			I915_PW("AUX_TC2", &xelpdp_pwdoms_aux_tc2, .xelpdp.aux_ch = AUX_CH_USBC2),
+			I915_PW("AUX_TC3", &xelpdp_pwdoms_aux_tc3, .xelpdp.aux_ch = AUX_CH_USBC3),
+			I915_PW("AUX_TC4", &xelpdp_pwdoms_aux_tc4, .xelpdp.aux_ch = AUX_CH_USBC4),
+		),
+		.ops = &xelpdp_aux_power_well_ops,
+	},
+};
+
+I915_DECL_PW_DOMAINS(xe3lpd_pwdoms_dc_off,
+	POWER_DOMAIN_DC_OFF,
+	XE3LPD_PW_2_POWER_DOMAINS,
+	XE3LPD_PW_C_POWER_DOMAINS,
+	XE3LPD_PW_D_POWER_DOMAINS,
+	POWER_DOMAIN_AUDIO_MMIO,
+	POWER_DOMAIN_INIT);
+
+static const struct i915_power_well_desc xe3lpd_power_wells_dcoff[] = {
+	{
+		.instances = &I915_PW_INSTANCES(
+			I915_PW("DC_off", &xe3lpd_pwdoms_dc_off,
+				.id = SKL_DISP_DC_OFF),
+		),
+		.ops = &gen9_dc_off_power_well_ops,
+	},
+};
+
+
+static const struct i915_power_well_desc_list xe3lpd_power_wells[] = {
+	I915_PW_DESCRIPTORS(i9xx_power_wells_always_on),
+	I915_PW_DESCRIPTORS(icl_power_wells_pw_1),
+	I915_PW_DESCRIPTORS(xe3lpd_power_wells_dcoff),
+	I915_PW_DESCRIPTORS(xe3lpd_power_wells_main),
+	I915_PW_DESCRIPTORS(xe2lpd_power_wells_pica),
+};
+
 static void init_power_well_domains(const struct i915_power_well_instance *inst,
 				    struct i915_power_well *power_well)
 {
@@ -1693,7 +1824,9 @@ int intel_display_power_map_init(struct i915_power_domains *power_domains)
 		return 0;
 	}
 
-	if (DISPLAY_VER(i915) >= 20)
+	if (DISPLAY_VER(i915) >= 30)
+		return set_power_wells(power_domains, xe3lpd_power_wells);
+	else if (DISPLAY_VER(i915) >= 20)
 		return set_power_wells(power_domains, xe2lpd_power_wells);
 	else if (DISPLAY_VER(i915) >= 14)
 		return set_power_wells(power_domains, xelpdp_power_wells);
-- 
2.45.0

