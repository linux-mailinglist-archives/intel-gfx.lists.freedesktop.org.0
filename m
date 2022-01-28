Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BB8F49F8B7
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Jan 2022 12:50:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4B06A10E5C9;
	Fri, 28 Jan 2022 11:49:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9529C10E839
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Jan 2022 11:49:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643370580; x=1674906580;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=nmiQBh594XuzCwkfPlnObfC1p49SkmobvhB6P5t0ObM=;
 b=m4Ed7urABLvB/1f46I1F1YoLoGN+BVjeKApJmxVR2jmsLyO2E6w5pkg9
 w5jF80TjHf4yJFDadNH95H2k9ytFb7lFhTbBaZEA/fWxUluN4OEqdXB0F
 TvERVcgxW1pyHRx9qH5MPqG5in/0yi5JZELC3u41iRlnUvchN3qKKHunS
 pO1NloPgewOIzhnMg60jGTJkPGagWbHFXhvLLgcfvxdzj09BWLlz1UNjr
 Fp2SLwHkxZtmoGMEdmo4n0dyOSigMIyPYLrFay+EIwFUjmGnLsa4aq5gc
 i02Tj/VftLfg8P/PTLdDZCapY1XFAt/DZ43+bs21HOaQ3JkEOZWSV2o09 w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10240"; a="310420969"
X-IronPort-AV: E=Sophos;i="5.88,323,1635231600"; d="scan'208";a="310420969"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2022 03:49:40 -0800
X-IronPort-AV: E=Sophos;i="5.88,323,1635231600"; d="scan'208";a="480712879"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2022 03:49:39 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 28 Jan 2022 13:49:14 +0200
Message-Id: <20220128114914.2339526-20-imre.deak@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20220128114914.2339526-1-imre.deak@intel.com>
References: <20220128114914.2339526-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 19/19] drm/i915: Remove the XELPD specific AUX
 and DDI power domains
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

The spec calls the XELPD_D/E ports just D/E, the platform prefix in the
domain names was only needed by the port->domain mapping relying on
matching enum values for the whole port/domain range (and the
corresponding aliasing between the platform specific domain enums).
Since a previous patch we can define the port->domain mapping explicitly
so do this by reusing the already existing D/E power domain names.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../drm/i915/display/intel_display_power.h    |  9 -----
 .../i915/display/intel_display_power_map.c    | 40 +++++--------------
 2 files changed, 11 insertions(+), 38 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h b/drivers/gpu/drm/i915/display/intel_display_power.h
index 28291decc3789..94cf2f03fdef5 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.h
+++ b/drivers/gpu/drm/i915/display/intel_display_power.h
@@ -57,9 +57,6 @@ enum intel_display_power_domain {
 	POWER_DOMAIN_PORT_DDI_LANES_TC5,
 	POWER_DOMAIN_PORT_DDI_LANES_TC6,
 
-	POWER_DOMAIN_PORT_DDI_LANES_D_XELPD,
-	POWER_DOMAIN_PORT_DDI_LANES_E_XELPD,
-
 	POWER_DOMAIN_PORT_DDI_IO_A,
 	POWER_DOMAIN_PORT_DDI_IO_B,
 	POWER_DOMAIN_PORT_DDI_IO_C,
@@ -74,9 +71,6 @@ enum intel_display_power_domain {
 	POWER_DOMAIN_PORT_DDI_IO_TC5,
 	POWER_DOMAIN_PORT_DDI_IO_TC6,
 
-	POWER_DOMAIN_PORT_DDI_IO_D_XELPD,
-	POWER_DOMAIN_PORT_DDI_IO_E_XELPD,
-
 	POWER_DOMAIN_PORT_DSI,
 	POWER_DOMAIN_PORT_CRT,
 	POWER_DOMAIN_PORT_OTHER,
@@ -97,9 +91,6 @@ enum intel_display_power_domain {
 	POWER_DOMAIN_AUX_USBC5,
 	POWER_DOMAIN_AUX_USBC6,
 
-	POWER_DOMAIN_AUX_D_XELPD,
-	POWER_DOMAIN_AUX_E_XELPD,
-
 	POWER_DOMAIN_AUX_IO_A,
 
 	POWER_DOMAIN_AUX_TBT1,
diff --git a/drivers/gpu/drm/i915/display/intel_display_power_map.c b/drivers/gpu/drm/i915/display/intel_display_power_map.c
index 2c9e55cb6e47d..79baf0ea588bb 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_map.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_map.c
@@ -107,10 +107,6 @@ intel_display_power_domain_str(enum intel_display_power_domain domain)
 		return "PORT_DDI_LANES_TC5";
 	case POWER_DOMAIN_PORT_DDI_LANES_TC6:
 		return "PORT_DDI_LANES_TC6";
-	case POWER_DOMAIN_PORT_DDI_LANES_D_XELPD:
-		return "PORT_DDI_LANES_D_XELPD";
-	case POWER_DOMAIN_PORT_DDI_LANES_E_XELPD:
-		return "PORT_DDI_LANES_E_XELPD";
 	case POWER_DOMAIN_PORT_DDI_IO_A:
 		return "PORT_DDI_IO_A";
 	case POWER_DOMAIN_PORT_DDI_IO_B:
@@ -135,10 +131,6 @@ intel_display_power_domain_str(enum intel_display_power_domain domain)
 		return "PORT_DDI_IO_TC5";
 	case POWER_DOMAIN_PORT_DDI_IO_TC6:
 		return "PORT_DDI_IO_TC6";
-	case POWER_DOMAIN_PORT_DDI_IO_D_XELPD:
-		return "PORT_DDI_IO_D_XELPD";
-	case POWER_DOMAIN_PORT_DDI_IO_E_XELPD:
-		return "PORT_DDI_IO_E_XELPD";
 	case POWER_DOMAIN_PORT_DSI:
 		return "PORT_DSI";
 	case POWER_DOMAIN_PORT_CRT:
@@ -175,10 +167,6 @@ intel_display_power_domain_str(enum intel_display_power_domain domain)
 		return "AUX_USBC5";
 	case POWER_DOMAIN_AUX_USBC6:
 		return "AUX_USBC6";
-	case POWER_DOMAIN_AUX_D_XELPD:
-		return "AUX_D_XELPD";
-	case POWER_DOMAIN_AUX_E_XELPD:
-		return "AUX_E_XELPD";
 	case POWER_DOMAIN_AUX_IO_A:
 		return "AUX_IO_A";
 	case POWER_DOMAIN_AUX_TBT1:
@@ -316,9 +304,9 @@ d13_port_map[] = {
 		.aux_ch_start = AUX_CH_D_XELPD,
 		.aux_ch_end = AUX_CH_E_XELPD,
 
-		.ddi_lanes = POWER_DOMAIN_PORT_DDI_LANES_D_XELPD,
-		.ddi_io = POWER_DOMAIN_PORT_DDI_IO_D_XELPD,
-		.aux_legacy_usbc = POWER_DOMAIN_AUX_D_XELPD,
+		.ddi_lanes = POWER_DOMAIN_PORT_DDI_LANES_D,
+		.ddi_io = POWER_DOMAIN_PORT_DDI_IO_D,
+		.aux_legacy_usbc = POWER_DOMAIN_AUX_D,
 		.aux_tbt = POWER_DOMAIN_INVALID,
 	},
 };
@@ -1578,8 +1566,8 @@ I915_DECL_PW_DOMAINS(xelpd_pwdoms_pw_a,
 	XELPD_PW_C_POWER_DOMAINS, \
 	XELPD_PW_D_POWER_DOMAINS, \
 	POWER_DOMAIN_PORT_DDI_LANES_C, \
-	POWER_DOMAIN_PORT_DDI_LANES_D_XELPD, \
-	POWER_DOMAIN_PORT_DDI_LANES_E_XELPD, \
+	POWER_DOMAIN_PORT_DDI_LANES_D, \
+	POWER_DOMAIN_PORT_DDI_LANES_E, \
 	POWER_DOMAIN_PORT_DDI_LANES_TC1, \
 	POWER_DOMAIN_PORT_DDI_LANES_TC2, \
 	POWER_DOMAIN_PORT_DDI_LANES_TC3, \
@@ -1587,8 +1575,8 @@ I915_DECL_PW_DOMAINS(xelpd_pwdoms_pw_a,
 	POWER_DOMAIN_VGA, \
 	POWER_DOMAIN_AUDIO_PLAYBACK, \
 	POWER_DOMAIN_AUX_C, \
-	POWER_DOMAIN_AUX_D_XELPD, \
-	POWER_DOMAIN_AUX_E_XELPD, \
+	POWER_DOMAIN_AUX_D, \
+	POWER_DOMAIN_AUX_E, \
 	POWER_DOMAIN_AUX_USBC1, \
 	POWER_DOMAIN_AUX_USBC2, \
 	POWER_DOMAIN_AUX_USBC3, \
@@ -1628,12 +1616,6 @@ I915_DECL_PW_DOMAINS(xelpd_pwdoms_dc_off,
 	POWER_DOMAIN_MODESET,
 	POWER_DOMAIN_INIT);
 
-I915_DECL_PW_DOMAINS(xelpd_pwdoms_aux_d_xelpd,		POWER_DOMAIN_AUX_D_XELPD);
-I915_DECL_PW_DOMAINS(xelpd_pwdoms_aux_e_xelpd,		POWER_DOMAIN_AUX_E_XELPD);
-
-I915_DECL_PW_DOMAINS(xelpd_pwdoms_ddi_io_d_xelpd,	POWER_DOMAIN_PORT_DDI_IO_D_XELPD);
-I915_DECL_PW_DOMAINS(xelpd_pwdoms_ddi_io_e_xelpd,	POWER_DOMAIN_PORT_DDI_IO_E_XELPD);
-
 static const struct i915_power_well_desc xelpd_power_wells_main[] = {
 	{
 		.instances = &I915_PW_INSTANCES(
@@ -1687,8 +1669,8 @@ static const struct i915_power_well_desc xelpd_power_wells_main[] = {
 			I915_PW("DDI_IO_A", &glk_pwdoms_ddi_io_a, .hsw.idx = ICL_PW_CTL_IDX_DDI_A),
 			I915_PW("DDI_IO_B", &glk_pwdoms_ddi_io_b, .hsw.idx = ICL_PW_CTL_IDX_DDI_B),
 			I915_PW("DDI_IO_C", &glk_pwdoms_ddi_io_c, .hsw.idx = ICL_PW_CTL_IDX_DDI_C),
-			I915_PW("DDI_IO_D_XELPD", &xelpd_pwdoms_ddi_io_d_xelpd, .hsw.idx = XELPD_PW_CTL_IDX_DDI_D),
-			I915_PW("DDI_IO_E_XELPD", &xelpd_pwdoms_ddi_io_e_xelpd, .hsw.idx = XELPD_PW_CTL_IDX_DDI_E),
+			I915_PW("DDI_IO_D", &icl_pwdoms_ddi_io_d, .hsw.idx = XELPD_PW_CTL_IDX_DDI_D),
+			I915_PW("DDI_IO_E", &icl_pwdoms_ddi_io_e, .hsw.idx = XELPD_PW_CTL_IDX_DDI_E),
 			I915_PW("DDI_IO_TC1", &tgl_pwdoms_ddi_io_tc1, .hsw.idx = TGL_PW_CTL_IDX_DDI_TC1),
 			I915_PW("DDI_IO_TC2", &tgl_pwdoms_ddi_io_tc2, .hsw.idx = TGL_PW_CTL_IDX_DDI_TC2),
 			I915_PW("DDI_IO_TC3", &tgl_pwdoms_ddi_io_tc3, .hsw.idx = TGL_PW_CTL_IDX_DDI_TC3),
@@ -1700,8 +1682,8 @@ static const struct i915_power_well_desc xelpd_power_wells_main[] = {
 			I915_PW("AUX_A", &icl_pwdoms_aux_a, .hsw.idx = ICL_PW_CTL_IDX_AUX_A),
 			I915_PW("AUX_B", &icl_pwdoms_aux_b, .hsw.idx = ICL_PW_CTL_IDX_AUX_B),
 			I915_PW("AUX_C", &icl_pwdoms_aux_c, .hsw.idx = ICL_PW_CTL_IDX_AUX_C),
-			I915_PW("AUX_D_XELPD", &xelpd_pwdoms_aux_d_xelpd, .hsw.idx = XELPD_PW_CTL_IDX_AUX_D),
-			I915_PW("AUX_E_XELPD", &xelpd_pwdoms_aux_e_xelpd, .hsw.idx = XELPD_PW_CTL_IDX_AUX_E),
+			I915_PW("AUX_D", &icl_pwdoms_aux_d, .hsw.idx = XELPD_PW_CTL_IDX_AUX_D),
+			I915_PW("AUX_E", &icl_pwdoms_aux_e, .hsw.idx = XELPD_PW_CTL_IDX_AUX_E),
 			I915_PW("AUX_USBC1", &tgl_pwdoms_aux_usbc1, .hsw.idx = TGL_PW_CTL_IDX_AUX_TC1),
 			I915_PW("AUX_USBC2", &tgl_pwdoms_aux_usbc2, .hsw.idx = TGL_PW_CTL_IDX_AUX_TC2),
 			I915_PW("AUX_USBC3", &tgl_pwdoms_aux_usbc3, .hsw.idx = TGL_PW_CTL_IDX_AUX_TC3),
-- 
2.27.0

