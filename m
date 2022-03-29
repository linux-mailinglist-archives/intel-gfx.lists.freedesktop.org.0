Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AF7DB4EB20D
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Mar 2022 18:46:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D682210F0DA;
	Tue, 29 Mar 2022 16:46:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5637810F0CF
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Mar 2022 16:46:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648572364; x=1680108364;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ZKZ8mRTe8XjXwU5Q8kerTyqfBaV91KSqAQKYpnDZIso=;
 b=G3DEKM27OGHqrL8oc2AYK9NixPDCHIXR8x7yCQQL3GS5ULmsZOLdfJ03
 qDAZDOCR+Duxe30rG7pnEWymqSkwqaai16Lx/Bn/6HGTkn4XcbS3oJIgn
 uKjou5xfA8aEY2LqcJ/JlP8NWtWptsadsFA7UCVxryb4uo5MRhRepRQU6
 Obb32Wggf8rGsdbNMbt7avSNIjkIj0AkzHPTYCqjZkyutPGwO5VPG0frk
 blo4Hfz0H2kFpBLj6pUdjBRu4v4SETAM9wDba3Cc+UpvMw0gCS17zGDPs
 E/kKpSVbCLaiVFat/pGl6Cw6iAZYrvhVy4dj5RXTsRxl0R8B2pvZEP10/ w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10301"; a="239237148"
X-IronPort-AV: E=Sophos;i="5.90,220,1643702400"; d="scan'208";a="239237148"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2022 09:44:09 -0700
X-IronPort-AV: E=Sophos;i="5.90,220,1643702400"; d="scan'208";a="521514071"
Received: from ideak-desk.fi.intel.com ([10.237.72.175])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2022 09:44:07 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 29 Mar 2022 19:43:36 +0300
Message-Id: <20220329164336.1199359-19-imre.deak@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220329164336.1199359-1-imre.deak@intel.com>
References: <20220329164336.1199359-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 18/18] drm/i915: Remove the XELPD specific
 AUX and DDI power domains
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
Reviewed-by: Jouni Högander <jouni.hogander@intel.com>
---
 .../drm/i915/display/intel_display_power.c    | 18 +++------------
 .../drm/i915/display/intel_display_power.h    |  9 --------
 .../i915/display/intel_display_power_map.c    | 22 +++++++------------
 3 files changed, 11 insertions(+), 38 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 21da53aabff8b..831eb122953c6 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -92,10 +92,6 @@ intel_display_power_domain_str(enum intel_display_power_domain domain)
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
@@ -120,10 +116,6 @@ intel_display_power_domain_str(enum intel_display_power_domain domain)
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
@@ -160,10 +152,6 @@ intel_display_power_domain_str(enum intel_display_power_domain domain)
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
@@ -2390,9 +2378,9 @@ d13_port_domains[] = {
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
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h b/drivers/gpu/drm/i915/display/intel_display_power.h
index e04b2ff7b4b99..7136ea3f233e9 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.h
+++ b/drivers/gpu/drm/i915/display/intel_display_power.h
@@ -56,9 +56,6 @@ enum intel_display_power_domain {
 	POWER_DOMAIN_PORT_DDI_LANES_TC5,
 	POWER_DOMAIN_PORT_DDI_LANES_TC6,
 
-	POWER_DOMAIN_PORT_DDI_LANES_D_XELPD,
-	POWER_DOMAIN_PORT_DDI_LANES_E_XELPD,
-
 	POWER_DOMAIN_PORT_DDI_IO_A,
 	POWER_DOMAIN_PORT_DDI_IO_B,
 	POWER_DOMAIN_PORT_DDI_IO_C,
@@ -73,9 +70,6 @@ enum intel_display_power_domain {
 	POWER_DOMAIN_PORT_DDI_IO_TC5,
 	POWER_DOMAIN_PORT_DDI_IO_TC6,
 
-	POWER_DOMAIN_PORT_DDI_IO_D_XELPD,
-	POWER_DOMAIN_PORT_DDI_IO_E_XELPD,
-
 	POWER_DOMAIN_PORT_DSI,
 	POWER_DOMAIN_PORT_CRT,
 	POWER_DOMAIN_PORT_OTHER,
@@ -96,9 +90,6 @@ enum intel_display_power_domain {
 	POWER_DOMAIN_AUX_USBC5,
 	POWER_DOMAIN_AUX_USBC6,
 
-	POWER_DOMAIN_AUX_D_XELPD,
-	POWER_DOMAIN_AUX_E_XELPD,
-
 	POWER_DOMAIN_AUX_IO_A,
 
 	POWER_DOMAIN_AUX_TBT1,
diff --git a/drivers/gpu/drm/i915/display/intel_display_power_map.c b/drivers/gpu/drm/i915/display/intel_display_power_map.c
index d647fb5da6b44..af6f54a26a351 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_map.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_map.c
@@ -1207,8 +1207,8 @@ I915_DECL_PW_DOMAINS(xelpd_pwdoms_pw_a,
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
@@ -1216,8 +1216,8 @@ I915_DECL_PW_DOMAINS(xelpd_pwdoms_pw_a,
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
@@ -1257,12 +1257,6 @@ I915_DECL_PW_DOMAINS(xelpd_pwdoms_dc_off,
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
@@ -1316,8 +1310,8 @@ static const struct i915_power_well_desc xelpd_power_wells_main[] = {
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
@@ -1329,8 +1323,8 @@ static const struct i915_power_well_desc xelpd_power_wells_main[] = {
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
2.30.2

