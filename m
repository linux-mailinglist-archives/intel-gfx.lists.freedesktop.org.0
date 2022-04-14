Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A3A70501D25
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Apr 2022 23:07:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D4DD310E905;
	Thu, 14 Apr 2022 21:07:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CAD4810E7B6
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Apr 2022 21:07:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649970445; x=1681506445;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=4Nc6h8srrl2+yq0n2Vte/5mEsn/7L0r5FK2KAnsWBZA=;
 b=f9AKSSOa/Nb4KZTZGbafjM3t6amPxFbgiOpXDgMPW6Ti1kAJ5dQI0o6n
 FbdI56S2uT+RRvBoOcO2QoUAU2U9GSw037PP5fv2rvIvY5jl3DVkOSsvY
 8a/eAKMjKb9VN+Q5TPwDBDMphZ6Xi1oORBmPXjIFjzVwEQlPiwi4zqhKl
 D9jRHNuLojJAeqE1z2x7JyVSx93N2GUa4FCGFFszbTnw8PlWF9py7iqGk
 ht08vcDUe3stELcrj1OsQzpeNGFNOcgkpnC3h5Eo3pamAc5oTkGul6gFl
 IxH7dVplC52EP2988uJu/10mVVmyNqP72sHVjBH+/4NXBs5CGf7ZtEiXb A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10317"; a="288089804"
X-IronPort-AV: E=Sophos;i="5.90,260,1643702400"; d="scan'208";a="288089804"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2022 14:07:25 -0700
X-IronPort-AV: E=Sophos;i="5.90,260,1643702400"; d="scan'208";a="527550451"
Received: from ideak-desk.fi.intel.com ([10.237.72.175])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2022 14:07:24 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 15 Apr 2022 00:06:57 +0300
Message-Id: <20220414210657.1785773-18-imre.deak@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220414210657.1785773-1-imre.deak@intel.com>
References: <20220414210657.1785773-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI 18/18] drm/i915: Remove the XELPD specific AUX and
 DDI power domains
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
index 8b7b7a87df03e..1d9bd5808849f 100644
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

