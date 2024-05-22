Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F353C8CC59B
	for <lists+intel-gfx@lfdr.de>; Wed, 22 May 2024 19:34:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7BE3410E2E9;
	Wed, 22 May 2024 17:34:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NGFBesIs";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9216F10E2A3;
 Wed, 22 May 2024 17:34:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716399261; x=1747935261;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=tAmI2s2N6O/2j/pe94xlYgOT12ZpGt0ErWXpwTiQqZg=;
 b=NGFBesIs6OVRVGs4Jz1TF2lUZuJfExuFN4+XnBpRlGjGfzc1FMY/U4pc
 Rwl6SlvHk+cji1Bgz4CZC2/r3/FVCRTDftIfhS7PA28ovT1yXfCOIy3H+
 OuQH6WpH4N88Zq7+ACn9JdKvDIGMAf7NpLhgkLCfvHuC/GqoTRptgC/Z7
 66z5RD18eGEh7hX8Pmphytwt64DXxQg9y3WIQuGG86F2bpcSRRm92Ault
 Wjl26qJBL6bOMLP2gWP39niV3BJKc6fBnoxAribcqCx8TIW8aOCikR/qQ
 RfdN7ZAsTSeV9nzIS+H3yqJPOdptk/UE0Tds4XUSv8rcCd3wEyxUF01HI Q==;
X-CSE-ConnectionGUID: 7ih66tTDSX+CpSvQ+amhwQ==
X-CSE-MsgGUID: dvputes3Tl+OKHDSrV3NCg==
X-IronPort-AV: E=McAfee;i="6600,9927,11080"; a="38053848"
X-IronPort-AV: E=Sophos;i="6.08,181,1712646000"; d="scan'208";a="38053848"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2024 10:34:20 -0700
X-CSE-ConnectionGUID: 7rezB12YQdK8/bceqqCb9g==
X-CSE-MsgGUID: AzMpFrj2SMmL4LM8pUpD3A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,181,1712646000"; d="scan'208";a="33425246"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.230])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2024 10:34:18 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	rodrigo.vivi@intel.com,
	lucas.demarchi@intel.com
Subject: [PATCH 05/10] drm/i915/display: add platform descriptors
Date: Wed, 22 May 2024 20:33:42 +0300
Message-Id: <45425c155608403efc149d4a022c0b443aa71200.1716399081.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1716399081.git.jani.nikula@intel.com>
References: <cover.1716399081.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

We'll need to start identifying the platforms independently in display
code in order to break free from the i915 and xe IS_<PLATFORM>()
macros. This is fairly straightforward, as we already identify most
platforms by PCI ID in display probe anyway.

As the first step, add platform descriptors with pointers to display
info. We'll have more platforms than display info, so minimize
duplication:

- Add separate skl/kbl/cfl/cml descriptors while they share the display
  info.

- Add separate jsl/ehl descriptors while they share the display info.

Identify ADL-P (and derivatives) and DG2 descriptors by their names even
though their display info is Xe LPD or HPD.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../drm/i915/display/intel_display_device.c   | 558 ++++++++++--------
 1 file changed, 326 insertions(+), 232 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
index 56b27546d1b3..d1e03437abb3 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.c
+++ b/drivers/gpu/drm/i915/display/intel_display_device.c
@@ -20,6 +20,10 @@
 __diag_push();
 __diag_ignore_all("-Woverride-init", "Allow field initialization overrides for display info");
 
+struct platform_desc {
+	const struct intel_display_device_info *info;
+};
+
 static const struct intel_display_device_info no_display = {};
 
 #define PIPE_A_OFFSET		0x70000
@@ -200,33 +204,41 @@ static const struct intel_display_device_info no_display = {};
 	.__runtime_defaults.pipe_mask = BIT(PIPE_A), \
 	.__runtime_defaults.cpu_transcoder_mask = BIT(TRANSCODER_A)
 
-static const struct intel_display_device_info i830_display = {
-	I830_DISPLAY,
+static const struct platform_desc i830_desc = {
+	.info = &(const struct intel_display_device_info) {
+		I830_DISPLAY,
 
-	.__runtime_defaults.port_mask = BIT(PORT_A) | BIT(PORT_B) | BIT(PORT_C), /* DVO A/B/C */
+		.__runtime_defaults.port_mask = BIT(PORT_A) | BIT(PORT_B) | BIT(PORT_C), /* DVO A/B/C */
+	},
 };
 
-static const struct intel_display_device_info i845_display = {
-	I845_DISPLAY,
+static const struct platform_desc i845_desc = {
+	.info = &(const struct intel_display_device_info) {
+		I845_DISPLAY,
 
-	.__runtime_defaults.port_mask = BIT(PORT_B) | BIT(PORT_C), /* DVO B/C */
+		.__runtime_defaults.port_mask = BIT(PORT_B) | BIT(PORT_C), /* DVO B/C */
+	},
 };
 
-static const struct intel_display_device_info i85x_display = {
-	I830_DISPLAY,
+static const struct platform_desc i85x_desc = {
+	.info = &(const struct intel_display_device_info) {
+		I830_DISPLAY,
 
-	.__runtime_defaults.port_mask = BIT(PORT_B) | BIT(PORT_C), /* DVO B/C */
-	.__runtime_defaults.fbc_mask = BIT(INTEL_FBC_A),
+		.__runtime_defaults.port_mask = BIT(PORT_B) | BIT(PORT_C), /* DVO B/C */
+		.__runtime_defaults.fbc_mask = BIT(INTEL_FBC_A),
+	},
 };
 
-static const struct intel_display_device_info i865g_display = {
-	I845_DISPLAY,
+static const struct platform_desc i865g_desc = {
+	.info = &(const struct intel_display_device_info) {
+		I845_DISPLAY,
 
-	.__runtime_defaults.port_mask = BIT(PORT_B) | BIT(PORT_C), /* DVO B/C */
-	.__runtime_defaults.fbc_mask = BIT(INTEL_FBC_A),
+		.__runtime_defaults.port_mask = BIT(PORT_B) | BIT(PORT_C), /* DVO B/C */
+		.__runtime_defaults.fbc_mask = BIT(INTEL_FBC_A),
+	},
 };
 
-#define GEN3_DISPLAY \
+#define GEN3_DISPLAY   \
 	.has_gmch = 1, \
 	.has_overlay = 1, \
 	I9XX_PIPE_OFFSETS, \
@@ -238,52 +250,64 @@ static const struct intel_display_device_info i865g_display = {
 		BIT(TRANSCODER_A) | BIT(TRANSCODER_B), \
 	.__runtime_defaults.port_mask = BIT(PORT_B) | BIT(PORT_C) /* SDVO B/C */
 
-static const struct intel_display_device_info i915g_display = {
-	GEN3_DISPLAY,
-	I845_COLORS,
-	.cursor_needs_physical = 1,
-	.overlay_needs_physical = 1,
+static const struct platform_desc i915g_desc = {
+	.info = &(const struct intel_display_device_info) {
+		GEN3_DISPLAY,
+		I845_COLORS,
+		.cursor_needs_physical = 1,
+		.overlay_needs_physical = 1,
+	},
 };
 
-static const struct intel_display_device_info i915gm_display = {
-	GEN3_DISPLAY,
-	I9XX_COLORS,
-	.cursor_needs_physical = 1,
-	.overlay_needs_physical = 1,
-	.supports_tv = 1,
+static const struct platform_desc i915gm_desc = {
+	.info = &(const struct intel_display_device_info) {
+		GEN3_DISPLAY,
+		I9XX_COLORS,
+		.cursor_needs_physical = 1,
+		.overlay_needs_physical = 1,
+		.supports_tv = 1,
 
-	.__runtime_defaults.fbc_mask = BIT(INTEL_FBC_A),
+		.__runtime_defaults.fbc_mask = BIT(INTEL_FBC_A),
+	},
 };
 
-static const struct intel_display_device_info i945g_display = {
-	GEN3_DISPLAY,
-	I845_COLORS,
-	.has_hotplug = 1,
-	.cursor_needs_physical = 1,
-	.overlay_needs_physical = 1,
+static const struct platform_desc i945g_desc = {
+	.info = &(const struct intel_display_device_info) {
+		GEN3_DISPLAY,
+		I845_COLORS,
+		.has_hotplug = 1,
+		.cursor_needs_physical = 1,
+		.overlay_needs_physical = 1,
+	},
 };
 
-static const struct intel_display_device_info i945gm_display = {
-	GEN3_DISPLAY,
-	I9XX_COLORS,
-	.has_hotplug = 1,
-	.cursor_needs_physical = 1,
-	.overlay_needs_physical = 1,
-	.supports_tv = 1,
-
-	.__runtime_defaults.fbc_mask = BIT(INTEL_FBC_A),
+static const struct platform_desc i945gm_desc = {
+	.info = &(const struct intel_display_device_info) {
+		GEN3_DISPLAY,
+		I9XX_COLORS,
+		.has_hotplug = 1,
+		.cursor_needs_physical = 1,
+		.overlay_needs_physical = 1,
+		.supports_tv = 1,
+
+		.__runtime_defaults.fbc_mask = BIT(INTEL_FBC_A),
+	},
 };
 
-static const struct intel_display_device_info g33_display = {
-	GEN3_DISPLAY,
-	I845_COLORS,
-	.has_hotplug = 1,
+static const struct platform_desc g33_desc = {
+	.info = &(const struct intel_display_device_info) {
+		GEN3_DISPLAY,
+		I845_COLORS,
+		.has_hotplug = 1,
+	},
 };
 
-static const struct intel_display_device_info pnv_display = {
-	GEN3_DISPLAY,
-	I9XX_COLORS,
-	.has_hotplug = 1,
+static const struct platform_desc pnv_desc = {
+	.info = &(const struct intel_display_device_info) {
+		GEN3_DISPLAY,
+		I9XX_COLORS,
+		.has_hotplug = 1,
+	},
 };
 
 #define GEN4_DISPLAY \
@@ -298,34 +322,42 @@ static const struct intel_display_device_info pnv_display = {
 	.__runtime_defaults.cpu_transcoder_mask = \
 		BIT(TRANSCODER_A) | BIT(TRANSCODER_B)
 
-static const struct intel_display_device_info i965g_display = {
-	GEN4_DISPLAY,
-	.has_overlay = 1,
+static const struct platform_desc i965g_desc = {
+	.info = &(const struct intel_display_device_info) {
+		GEN4_DISPLAY,
+		.has_overlay = 1,
 
-	.__runtime_defaults.port_mask = BIT(PORT_B) | BIT(PORT_C), /* SDVO B/C */
+		.__runtime_defaults.port_mask = BIT(PORT_B) | BIT(PORT_C), /* SDVO B/C */
+	},
 };
 
-static const struct intel_display_device_info i965gm_display = {
-	GEN4_DISPLAY,
-	.has_overlay = 1,
-	.supports_tv = 1,
+static const struct platform_desc i965gm_desc = {
+	.info = &(const struct intel_display_device_info) {
+		GEN4_DISPLAY,
+		.has_overlay = 1,
+		.supports_tv = 1,
 
-	.__runtime_defaults.port_mask = BIT(PORT_B) | BIT(PORT_C), /* SDVO B/C */
-	.__runtime_defaults.fbc_mask = BIT(INTEL_FBC_A),
+		.__runtime_defaults.port_mask = BIT(PORT_B) | BIT(PORT_C), /* SDVO B/C */
+		.__runtime_defaults.fbc_mask = BIT(INTEL_FBC_A),
+	},
 };
 
-static const struct intel_display_device_info g45_display = {
-	GEN4_DISPLAY,
+static const struct platform_desc g45_desc = {
+	.info = &(const struct intel_display_device_info) {
+		GEN4_DISPLAY,
 
-	.__runtime_defaults.port_mask = BIT(PORT_B) | BIT(PORT_C) | BIT(PORT_D), /* SDVO/HDMI/DP B/C, DP D */
+		.__runtime_defaults.port_mask = BIT(PORT_B) | BIT(PORT_C) | BIT(PORT_D), /* SDVO/HDMI/DP B/C, DP D */
+	},
 };
 
-static const struct intel_display_device_info gm45_display = {
-	GEN4_DISPLAY,
-	.supports_tv = 1,
+static const struct platform_desc gm45_desc = {
+	.info = &(const struct intel_display_device_info) {
+		GEN4_DISPLAY,
+		.supports_tv = 1,
 
-	.__runtime_defaults.port_mask = BIT(PORT_B) | BIT(PORT_C) | BIT(PORT_D), /* SDVO/HDMI/DP B/C, DP D */
-	.__runtime_defaults.fbc_mask = BIT(INTEL_FBC_A),
+		.__runtime_defaults.port_mask = BIT(PORT_B) | BIT(PORT_C) | BIT(PORT_D), /* SDVO/HDMI/DP B/C, DP D */
+		.__runtime_defaults.fbc_mask = BIT(INTEL_FBC_A),
+	},
 };
 
 #define ILK_DISPLAY \
@@ -340,112 +372,128 @@ static const struct intel_display_device_info gm45_display = {
 		BIT(TRANSCODER_A) | BIT(TRANSCODER_B), \
 	.__runtime_defaults.port_mask = BIT(PORT_A) | BIT(PORT_B) | BIT(PORT_C) | BIT(PORT_D) /* DP A, SDVO/HDMI/DP B, HDMI/DP C/D */
 
-static const struct intel_display_device_info ilk_d_display = {
-	ILK_DISPLAY,
+static const struct platform_desc ilk_d_desc = {
+	.info = &(const struct intel_display_device_info) {
+		ILK_DISPLAY,
+	},
 };
 
-static const struct intel_display_device_info ilk_m_display = {
-	ILK_DISPLAY,
+static const struct platform_desc ilk_m_desc = {
+	.info = &(const struct intel_display_device_info) {
+		ILK_DISPLAY,
 
-	.__runtime_defaults.fbc_mask = BIT(INTEL_FBC_A),
+		.__runtime_defaults.fbc_mask = BIT(INTEL_FBC_A),
+	},
 };
 
-static const struct intel_display_device_info snb_display = {
-	.has_hotplug = 1,
-	I9XX_PIPE_OFFSETS,
-	I9XX_CURSOR_OFFSETS,
-	ILK_COLORS,
+static const struct platform_desc snb_desc = {
+	.info = &(const struct intel_display_device_info) {
+		.has_hotplug = 1,
+		I9XX_PIPE_OFFSETS,
+		I9XX_CURSOR_OFFSETS,
+		ILK_COLORS,
 
-	.__runtime_defaults.ip.ver = 6,
-	.__runtime_defaults.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B),
-	.__runtime_defaults.cpu_transcoder_mask =
+		.__runtime_defaults.ip.ver = 6,
+		.__runtime_defaults.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B),
+		.__runtime_defaults.cpu_transcoder_mask =
 		BIT(TRANSCODER_A) | BIT(TRANSCODER_B),
-	.__runtime_defaults.port_mask = BIT(PORT_A) | BIT(PORT_B) | BIT(PORT_C) | BIT(PORT_D), /* DP A, SDVO/HDMI/DP B, HDMI/DP C/D */
-	.__runtime_defaults.fbc_mask = BIT(INTEL_FBC_A),
+		.__runtime_defaults.port_mask = BIT(PORT_A) | BIT(PORT_B) | BIT(PORT_C) | BIT(PORT_D), /* DP A, SDVO/HDMI/DP B, HDMI/DP C/D */
+		.__runtime_defaults.fbc_mask = BIT(INTEL_FBC_A),
+	},
 };
 
-static const struct intel_display_device_info ivb_display = {
-	.has_hotplug = 1,
-	IVB_PIPE_OFFSETS,
-	IVB_CURSOR_OFFSETS,
-	IVB_COLORS,
+static const struct platform_desc ivb_desc = {
+	.info = &(const struct intel_display_device_info) {
+		.has_hotplug = 1,
+		IVB_PIPE_OFFSETS,
+		IVB_CURSOR_OFFSETS,
+		IVB_COLORS,
 
-	.__runtime_defaults.ip.ver = 7,
-	.__runtime_defaults.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C),
-	.__runtime_defaults.cpu_transcoder_mask =
+		.__runtime_defaults.ip.ver = 7,
+		.__runtime_defaults.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C),
+		.__runtime_defaults.cpu_transcoder_mask =
 		BIT(TRANSCODER_A) | BIT(TRANSCODER_B) | BIT(TRANSCODER_C),
-	.__runtime_defaults.port_mask = BIT(PORT_A) | BIT(PORT_B) | BIT(PORT_C) | BIT(PORT_D), /* DP A, SDVO/HDMI/DP B, HDMI/DP C/D */
-	.__runtime_defaults.fbc_mask = BIT(INTEL_FBC_A),
+		.__runtime_defaults.port_mask = BIT(PORT_A) | BIT(PORT_B) | BIT(PORT_C) | BIT(PORT_D), /* DP A, SDVO/HDMI/DP B, HDMI/DP C/D */
+		.__runtime_defaults.fbc_mask = BIT(INTEL_FBC_A),
+	},
 };
 
-static const struct intel_display_device_info vlv_display = {
-	.has_gmch = 1,
-	.has_hotplug = 1,
-	.mmio_offset = VLV_DISPLAY_BASE,
-	I9XX_PIPE_OFFSETS,
-	I9XX_CURSOR_OFFSETS,
-	I9XX_COLORS,
-
-	.__runtime_defaults.ip.ver = 7,
-	.__runtime_defaults.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B),
-	.__runtime_defaults.cpu_transcoder_mask =
+static const struct platform_desc vlv_desc = {
+	.info = &(const struct intel_display_device_info) {
+		.has_gmch = 1,
+		.has_hotplug = 1,
+		.mmio_offset = VLV_DISPLAY_BASE,
+		I9XX_PIPE_OFFSETS,
+		I9XX_CURSOR_OFFSETS,
+		I9XX_COLORS,
+
+		.__runtime_defaults.ip.ver = 7,
+		.__runtime_defaults.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B),
+		.__runtime_defaults.cpu_transcoder_mask =
 		BIT(TRANSCODER_A) | BIT(TRANSCODER_B),
-	.__runtime_defaults.port_mask = BIT(PORT_B) | BIT(PORT_C), /* HDMI/DP B/C */
+		.__runtime_defaults.port_mask = BIT(PORT_B) | BIT(PORT_C), /* HDMI/DP B/C */
+	},
 };
 
-static const struct intel_display_device_info hsw_display = {
-	.has_ddi = 1,
-	.has_dp_mst = 1,
-	.has_fpga_dbg = 1,
-	.has_hotplug = 1,
-	.has_psr = 1,
-	.has_psr_hw_tracking = 1,
-	HSW_PIPE_OFFSETS,
-	IVB_CURSOR_OFFSETS,
-	IVB_COLORS,
-
-	.__runtime_defaults.ip.ver = 7,
-	.__runtime_defaults.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C),
-	.__runtime_defaults.cpu_transcoder_mask =
+static const struct platform_desc hsw_desc = {
+	.info = &(const struct intel_display_device_info) {
+		.has_ddi = 1,
+		.has_dp_mst = 1,
+		.has_fpga_dbg = 1,
+		.has_hotplug = 1,
+		.has_psr = 1,
+		.has_psr_hw_tracking = 1,
+		HSW_PIPE_OFFSETS,
+		IVB_CURSOR_OFFSETS,
+		IVB_COLORS,
+
+		.__runtime_defaults.ip.ver = 7,
+		.__runtime_defaults.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C),
+		.__runtime_defaults.cpu_transcoder_mask =
 		BIT(TRANSCODER_A) | BIT(TRANSCODER_B) |
 		BIT(TRANSCODER_C) | BIT(TRANSCODER_EDP),
-	.__runtime_defaults.port_mask = BIT(PORT_A) | BIT(PORT_B) | BIT(PORT_C) | BIT(PORT_D) | BIT(PORT_E),
-	.__runtime_defaults.fbc_mask = BIT(INTEL_FBC_A),
+		.__runtime_defaults.port_mask = BIT(PORT_A) | BIT(PORT_B) | BIT(PORT_C) | BIT(PORT_D) | BIT(PORT_E),
+		.__runtime_defaults.fbc_mask = BIT(INTEL_FBC_A),
+	},
 };
 
-static const struct intel_display_device_info bdw_display = {
-	.has_ddi = 1,
-	.has_dp_mst = 1,
-	.has_fpga_dbg = 1,
-	.has_hotplug = 1,
-	.has_psr = 1,
-	.has_psr_hw_tracking = 1,
-	HSW_PIPE_OFFSETS,
-	IVB_CURSOR_OFFSETS,
-	IVB_COLORS,
-
-	.__runtime_defaults.ip.ver = 8,
-	.__runtime_defaults.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C),
-	.__runtime_defaults.cpu_transcoder_mask =
+static const struct platform_desc bdw_desc = {
+	.info = &(const struct intel_display_device_info) {
+		.has_ddi = 1,
+		.has_dp_mst = 1,
+		.has_fpga_dbg = 1,
+		.has_hotplug = 1,
+		.has_psr = 1,
+		.has_psr_hw_tracking = 1,
+		HSW_PIPE_OFFSETS,
+		IVB_CURSOR_OFFSETS,
+		IVB_COLORS,
+
+		.__runtime_defaults.ip.ver = 8,
+		.__runtime_defaults.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C),
+		.__runtime_defaults.cpu_transcoder_mask =
 		BIT(TRANSCODER_A) | BIT(TRANSCODER_B) |
 		BIT(TRANSCODER_C) | BIT(TRANSCODER_EDP),
-	.__runtime_defaults.port_mask = BIT(PORT_A) | BIT(PORT_B) | BIT(PORT_C) | BIT(PORT_D) | BIT(PORT_E),
-	.__runtime_defaults.fbc_mask = BIT(INTEL_FBC_A),
+		.__runtime_defaults.port_mask = BIT(PORT_A) | BIT(PORT_B) | BIT(PORT_C) | BIT(PORT_D) | BIT(PORT_E),
+		.__runtime_defaults.fbc_mask = BIT(INTEL_FBC_A),
+	},
 };
 
-static const struct intel_display_device_info chv_display = {
-	.has_hotplug = 1,
-	.has_gmch = 1,
-	.mmio_offset = VLV_DISPLAY_BASE,
-	CHV_PIPE_OFFSETS,
-	CHV_CURSOR_OFFSETS,
-	CHV_COLORS,
-
-	.__runtime_defaults.ip.ver = 8,
-	.__runtime_defaults.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C),
-	.__runtime_defaults.cpu_transcoder_mask =
+static const struct platform_desc chv_desc = {
+	.info = &(const struct intel_display_device_info) {
+		.has_hotplug = 1,
+		.has_gmch = 1,
+		.mmio_offset = VLV_DISPLAY_BASE,
+		CHV_PIPE_OFFSETS,
+		CHV_CURSOR_OFFSETS,
+		CHV_COLORS,
+
+		.__runtime_defaults.ip.ver = 8,
+		.__runtime_defaults.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C),
+		.__runtime_defaults.cpu_transcoder_mask =
 		BIT(TRANSCODER_A) | BIT(TRANSCODER_B) | BIT(TRANSCODER_C),
-	.__runtime_defaults.port_mask = BIT(PORT_B) | BIT(PORT_C) | BIT(PORT_D), /* HDMI/DP B/C/D */
+		.__runtime_defaults.port_mask = BIT(PORT_B) | BIT(PORT_C) | BIT(PORT_D), /* HDMI/DP B/C/D */
+	},
 };
 
 static const struct intel_display_device_info skl_display = {
@@ -467,13 +515,29 @@ static const struct intel_display_device_info skl_display = {
 	.__runtime_defaults.has_hdcp = 1,
 	.__runtime_defaults.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C),
 	.__runtime_defaults.cpu_transcoder_mask =
-		BIT(TRANSCODER_A) | BIT(TRANSCODER_B) |
-		BIT(TRANSCODER_C) | BIT(TRANSCODER_EDP),
+	BIT(TRANSCODER_A) | BIT(TRANSCODER_B) |
+	BIT(TRANSCODER_C) | BIT(TRANSCODER_EDP),
 	.__runtime_defaults.port_mask = BIT(PORT_A) | BIT(PORT_B) | BIT(PORT_C) | BIT(PORT_D) | BIT(PORT_E),
 	.__runtime_defaults.fbc_mask = BIT(INTEL_FBC_A),
 };
 
-#define GEN9_LP_DISPLAY \
+static const struct platform_desc skl_desc = {
+	.info = &skl_display,
+};
+
+static const struct platform_desc kbl_desc = {
+	.info = &skl_display,
+};
+
+static const struct platform_desc cfl_desc = {
+	.info = &skl_display,
+};
+
+static const struct platform_desc cml_desc = {
+	.info = &skl_display,
+};
+
+#define GEN9_LP_DISPLAY			 \
 	.dbuf.slice_mask = BIT(DBUF_S1), \
 	.has_dp_mst = 1, \
 	.has_ddi = 1, \
@@ -496,19 +560,23 @@ static const struct intel_display_device_info skl_display = {
 		BIT(TRANSCODER_DSI_A) | BIT(TRANSCODER_DSI_C), \
 	.__runtime_defaults.port_mask = BIT(PORT_A) | BIT(PORT_B) | BIT(PORT_C)
 
-static const struct intel_display_device_info bxt_display = {
-	GEN9_LP_DISPLAY,
-	.dbuf.size = 512 - 4, /* 4 blocks for bypass path allocation */
+static const struct platform_desc bxt_desc = {
+	.info = &(const struct intel_display_device_info) {
+		GEN9_LP_DISPLAY,
+		.dbuf.size = 512 - 4, /* 4 blocks for bypass path allocation */
 
-	.__runtime_defaults.ip.ver = 9,
+		.__runtime_defaults.ip.ver = 9,
+	},
 };
 
-static const struct intel_display_device_info glk_display = {
-	GEN9_LP_DISPLAY,
-	.dbuf.size = 1024 - 4, /* 4 blocks for bypass path allocation */
-	GLK_COLORS,
+static const struct platform_desc glk_desc = {
+	.info = &(const struct intel_display_device_info) {
+		GEN9_LP_DISPLAY,
+		.dbuf.size = 1024 - 4, /* 4 blocks for bypass path allocation */
+		GLK_COLORS,
 
-	.__runtime_defaults.ip.ver = 10,
+		.__runtime_defaults.ip.ver = 10,
+	},
 };
 
 #define ICL_DISPLAY \
@@ -552,10 +620,12 @@ static const struct intel_display_device_info glk_display = {
 		BIT(TRANSCODER_DSI_0) | BIT(TRANSCODER_DSI_1), \
 	.__runtime_defaults.fbc_mask = BIT(INTEL_FBC_A)
 
-static const struct intel_display_device_info icl_display = {
-	ICL_DISPLAY,
+static const struct platform_desc icl_desc = {
+	.info = &(const struct intel_display_device_info) {
+		ICL_DISPLAY,
 
-	.__runtime_defaults.port_mask = BIT(PORT_A) | BIT(PORT_B) | BIT(PORT_C) | BIT(PORT_D) | BIT(PORT_E),
+		.__runtime_defaults.port_mask = BIT(PORT_A) | BIT(PORT_B) | BIT(PORT_C) | BIT(PORT_D) | BIT(PORT_E),
+	},
 };
 
 static const struct intel_display_device_info jsl_ehl_display = {
@@ -564,6 +634,14 @@ static const struct intel_display_device_info jsl_ehl_display = {
 	.__runtime_defaults.port_mask = BIT(PORT_A) | BIT(PORT_B) | BIT(PORT_C) | BIT(PORT_D),
 };
 
+static const struct platform_desc jsl_desc = {
+	.info = &jsl_ehl_display,
+};
+
+static const struct platform_desc ehl_desc = {
+	.info = &jsl_ehl_display,
+};
+
 #define XE_D_DISPLAY \
 	.abox_mask = GENMASK(2, 1), \
 	.dbuf.size = 2048, \
@@ -607,44 +685,52 @@ static const struct intel_display_device_info jsl_ehl_display = {
 		BIT(TRANSCODER_DSI_0) | BIT(TRANSCODER_DSI_1), \
 	.__runtime_defaults.fbc_mask = BIT(INTEL_FBC_A)
 
-static const struct intel_display_device_info tgl_display = {
-	XE_D_DISPLAY,
+static const struct platform_desc tgl_desc = {
+	.info = &(const struct intel_display_device_info) {
+		XE_D_DISPLAY,
 
-	/*
-	 * FIXME DDI C/combo PHY C missing due to combo PHY
-	 * code making a mess on SKUs where the PHY is missing.
-	 */
-	.__runtime_defaults.port_mask = BIT(PORT_A) | BIT(PORT_B) |
+		/*
+		 * FIXME DDI C/combo PHY C missing due to combo PHY
+		 * code making a mess on SKUs where the PHY is missing.
+		 */
+		.__runtime_defaults.port_mask = BIT(PORT_A) | BIT(PORT_B) |
 		BIT(PORT_TC1) | BIT(PORT_TC2) | BIT(PORT_TC3) | BIT(PORT_TC4) | BIT(PORT_TC5) | BIT(PORT_TC6),
+	},
 };
 
-static const struct intel_display_device_info dg1_display = {
-	XE_D_DISPLAY,
+static const struct platform_desc dg1_desc = {
+	.info = &(const struct intel_display_device_info) {
+		XE_D_DISPLAY,
 
-	.__runtime_defaults.port_mask = BIT(PORT_A) | BIT(PORT_B) |
+		.__runtime_defaults.port_mask = BIT(PORT_A) | BIT(PORT_B) |
 		BIT(PORT_TC1) | BIT(PORT_TC2),
+	},
 };
 
-static const struct intel_display_device_info rkl_display = {
-	XE_D_DISPLAY,
-	.abox_mask = BIT(0),
-	.has_hti = 1,
-	.has_psr_hw_tracking = 0,
+static const struct platform_desc rkl_desc = {
+	.info = &(const struct intel_display_device_info) {
+		XE_D_DISPLAY,
+		.abox_mask = BIT(0),
+		.has_hti = 1,
+		.has_psr_hw_tracking = 0,
 
-	.__runtime_defaults.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C),
-	.__runtime_defaults.cpu_transcoder_mask =
+		.__runtime_defaults.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C),
+		.__runtime_defaults.cpu_transcoder_mask =
 		BIT(TRANSCODER_A) | BIT(TRANSCODER_B) | BIT(TRANSCODER_C),
-	.__runtime_defaults.port_mask = BIT(PORT_A) | BIT(PORT_B) |
+		.__runtime_defaults.port_mask = BIT(PORT_A) | BIT(PORT_B) |
 		BIT(PORT_TC1) | BIT(PORT_TC2),
+	},
 };
 
-static const struct intel_display_device_info adl_s_display = {
-	XE_D_DISPLAY,
-	.has_hti = 1,
-	.has_psr_hw_tracking = 0,
+static const struct platform_desc adl_s_desc = {
+	.info = &(const struct intel_display_device_info) {
+		XE_D_DISPLAY,
+		.has_hti = 1,
+		.has_psr_hw_tracking = 0,
 
-	.__runtime_defaults.port_mask = BIT(PORT_A) |
+		.__runtime_defaults.port_mask = BIT(PORT_A) |
 		BIT(PORT_TC1) | BIT(PORT_TC2) | BIT(PORT_TC3) | BIT(PORT_TC4),
+	},
 };
 
 #define XE_LPD_FEATURES \
@@ -703,6 +789,10 @@ static const struct intel_display_device_info xe_lpd_display = {
 		BIT(PORT_TC1) | BIT(PORT_TC2) | BIT(PORT_TC3) | BIT(PORT_TC4),
 };
 
+static const struct platform_desc adl_p_desc = {
+	.info = &xe_lpd_display,
+};
+
 static const struct intel_display_device_info xe_hpd_display = {
 	XE_LPD_FEATURES,
 	.has_cdclk_squash = 1,
@@ -714,6 +804,10 @@ static const struct intel_display_device_info xe_hpd_display = {
 		BIT(PORT_TC1),
 };
 
+static const struct platform_desc dg2_desc = {
+	.info = &xe_hpd_display,
+};
+
 #define XE_LPDP_FEATURES							\
 	.abox_mask = GENMASK(1, 0),						\
 	.color = {								\
@@ -795,54 +889,54 @@ static bool has_no_display(struct pci_dev *pdev)
 	return pci_match_id(ids, pdev);
 }
 
-#define INTEL_DISPLAY_DEVICE(_id, _info) { .devid = (_id), .info = (_info) }
+#define INTEL_DISPLAY_DEVICE(_id, _desc) { .devid = (_id), .desc = (_desc) }
 
 static const struct {
 	u32 devid;
-	const struct intel_display_device_info *info;
+	const struct platform_desc *desc;
 } intel_display_ids[] = {
-	INTEL_I830_IDS(INTEL_DISPLAY_DEVICE, &i830_display),
-	INTEL_I845G_IDS(INTEL_DISPLAY_DEVICE, &i845_display),
-	INTEL_I85X_IDS(INTEL_DISPLAY_DEVICE, &i85x_display),
-	INTEL_I865G_IDS(INTEL_DISPLAY_DEVICE, &i865g_display),
-	INTEL_I915G_IDS(INTEL_DISPLAY_DEVICE, &i915g_display),
-	INTEL_I915GM_IDS(INTEL_DISPLAY_DEVICE, &i915gm_display),
-	INTEL_I945G_IDS(INTEL_DISPLAY_DEVICE, &i945g_display),
-	INTEL_I945GM_IDS(INTEL_DISPLAY_DEVICE, &i945gm_display),
-	INTEL_I965G_IDS(INTEL_DISPLAY_DEVICE, &i965g_display),
-	INTEL_G33_IDS(INTEL_DISPLAY_DEVICE, &g33_display),
-	INTEL_I965GM_IDS(INTEL_DISPLAY_DEVICE, &i965gm_display),
-	INTEL_GM45_IDS(INTEL_DISPLAY_DEVICE, &gm45_display),
-	INTEL_G45_IDS(INTEL_DISPLAY_DEVICE, &g45_display),
-	INTEL_PNV_IDS(INTEL_DISPLAY_DEVICE, &pnv_display),
-	INTEL_ILK_D_IDS(INTEL_DISPLAY_DEVICE, &ilk_d_display),
-	INTEL_ILK_M_IDS(INTEL_DISPLAY_DEVICE, &ilk_m_display),
-	INTEL_SNB_IDS(INTEL_DISPLAY_DEVICE, &snb_display),
-	INTEL_IVB_IDS(INTEL_DISPLAY_DEVICE, &ivb_display),
-	INTEL_HSW_IDS(INTEL_DISPLAY_DEVICE, &hsw_display),
-	INTEL_VLV_IDS(INTEL_DISPLAY_DEVICE, &vlv_display),
-	INTEL_BDW_IDS(INTEL_DISPLAY_DEVICE, &bdw_display),
-	INTEL_CHV_IDS(INTEL_DISPLAY_DEVICE, &chv_display),
-	INTEL_SKL_IDS(INTEL_DISPLAY_DEVICE, &skl_display),
-	INTEL_BXT_IDS(INTEL_DISPLAY_DEVICE, &bxt_display),
-	INTEL_GLK_IDS(INTEL_DISPLAY_DEVICE, &glk_display),
-	INTEL_KBL_IDS(INTEL_DISPLAY_DEVICE, &skl_display),
-	INTEL_CFL_IDS(INTEL_DISPLAY_DEVICE, &skl_display),
-	INTEL_WHL_IDS(INTEL_DISPLAY_DEVICE, &skl_display),
-	INTEL_CML_IDS(INTEL_DISPLAY_DEVICE, &skl_display),
-	INTEL_ICL_IDS(INTEL_DISPLAY_DEVICE, &icl_display),
-	INTEL_EHL_IDS(INTEL_DISPLAY_DEVICE, &jsl_ehl_display),
-	INTEL_JSL_IDS(INTEL_DISPLAY_DEVICE, &jsl_ehl_display),
-	INTEL_TGL_IDS(INTEL_DISPLAY_DEVICE, &tgl_display),
-	INTEL_DG1_IDS(INTEL_DISPLAY_DEVICE, &dg1_display),
-	INTEL_RKL_IDS(INTEL_DISPLAY_DEVICE, &rkl_display),
-	INTEL_ADLS_IDS(INTEL_DISPLAY_DEVICE, &adl_s_display),
-	INTEL_RPLS_IDS(INTEL_DISPLAY_DEVICE, &adl_s_display),
-	INTEL_ADLP_IDS(INTEL_DISPLAY_DEVICE, &xe_lpd_display),
-	INTEL_ADLN_IDS(INTEL_DISPLAY_DEVICE, &xe_lpd_display),
-	INTEL_RPLU_IDS(INTEL_DISPLAY_DEVICE, &xe_lpd_display),
-	INTEL_RPLP_IDS(INTEL_DISPLAY_DEVICE, &xe_lpd_display),
-	INTEL_DG2_IDS(INTEL_DISPLAY_DEVICE, &xe_hpd_display),
+	INTEL_I830_IDS(INTEL_DISPLAY_DEVICE, &i830_desc),
+	INTEL_I845G_IDS(INTEL_DISPLAY_DEVICE, &i845_desc),
+	INTEL_I85X_IDS(INTEL_DISPLAY_DEVICE, &i85x_desc),
+	INTEL_I865G_IDS(INTEL_DISPLAY_DEVICE, &i865g_desc),
+	INTEL_I915G_IDS(INTEL_DISPLAY_DEVICE, &i915g_desc),
+	INTEL_I915GM_IDS(INTEL_DISPLAY_DEVICE, &i915gm_desc),
+	INTEL_I945G_IDS(INTEL_DISPLAY_DEVICE, &i945g_desc),
+	INTEL_I945GM_IDS(INTEL_DISPLAY_DEVICE, &i945gm_desc),
+	INTEL_I965G_IDS(INTEL_DISPLAY_DEVICE, &i965g_desc),
+	INTEL_G33_IDS(INTEL_DISPLAY_DEVICE, &g33_desc),
+	INTEL_I965GM_IDS(INTEL_DISPLAY_DEVICE, &i965gm_desc),
+	INTEL_GM45_IDS(INTEL_DISPLAY_DEVICE, &gm45_desc),
+	INTEL_G45_IDS(INTEL_DISPLAY_DEVICE, &g45_desc),
+	INTEL_PNV_IDS(INTEL_DISPLAY_DEVICE, &pnv_desc),
+	INTEL_ILK_D_IDS(INTEL_DISPLAY_DEVICE, &ilk_d_desc),
+	INTEL_ILK_M_IDS(INTEL_DISPLAY_DEVICE, &ilk_m_desc),
+	INTEL_SNB_IDS(INTEL_DISPLAY_DEVICE, &snb_desc),
+	INTEL_IVB_IDS(INTEL_DISPLAY_DEVICE, &ivb_desc),
+	INTEL_HSW_IDS(INTEL_DISPLAY_DEVICE, &hsw_desc),
+	INTEL_VLV_IDS(INTEL_DISPLAY_DEVICE, &vlv_desc),
+	INTEL_BDW_IDS(INTEL_DISPLAY_DEVICE, &bdw_desc),
+	INTEL_CHV_IDS(INTEL_DISPLAY_DEVICE, &chv_desc),
+	INTEL_SKL_IDS(INTEL_DISPLAY_DEVICE, &skl_desc),
+	INTEL_BXT_IDS(INTEL_DISPLAY_DEVICE, &bxt_desc),
+	INTEL_GLK_IDS(INTEL_DISPLAY_DEVICE, &glk_desc),
+	INTEL_KBL_IDS(INTEL_DISPLAY_DEVICE, &kbl_desc),
+	INTEL_CFL_IDS(INTEL_DISPLAY_DEVICE, &cfl_desc),
+	INTEL_WHL_IDS(INTEL_DISPLAY_DEVICE, &cfl_desc),
+	INTEL_CML_IDS(INTEL_DISPLAY_DEVICE, &cml_desc),
+	INTEL_ICL_IDS(INTEL_DISPLAY_DEVICE, &icl_desc),
+	INTEL_EHL_IDS(INTEL_DISPLAY_DEVICE, &ehl_desc),
+	INTEL_JSL_IDS(INTEL_DISPLAY_DEVICE, &jsl_desc),
+	INTEL_TGL_IDS(INTEL_DISPLAY_DEVICE, &tgl_desc),
+	INTEL_DG1_IDS(INTEL_DISPLAY_DEVICE, &dg1_desc),
+	INTEL_RKL_IDS(INTEL_DISPLAY_DEVICE, &rkl_desc),
+	INTEL_ADLS_IDS(INTEL_DISPLAY_DEVICE, &adl_s_desc),
+	INTEL_RPLS_IDS(INTEL_DISPLAY_DEVICE, &adl_s_desc),
+	INTEL_ADLP_IDS(INTEL_DISPLAY_DEVICE, &adl_p_desc),
+	INTEL_ADLN_IDS(INTEL_DISPLAY_DEVICE, &adl_p_desc),
+	INTEL_RPLU_IDS(INTEL_DISPLAY_DEVICE, &adl_p_desc),
+	INTEL_RPLP_IDS(INTEL_DISPLAY_DEVICE, &adl_p_desc),
+	INTEL_DG2_IDS(INTEL_DISPLAY_DEVICE, &dg2_desc),
 
 	/*
 	 * Do not add any GMD_ID-based platforms to this list.  They will
@@ -909,7 +1003,7 @@ probe_display(struct drm_i915_private *i915)
 
 	for (i = 0; i < ARRAY_SIZE(intel_display_ids); i++) {
 		if (intel_display_ids[i].devid == pdev->device)
-			return intel_display_ids[i].info;
+			return intel_display_ids[i].desc->info;
 	}
 
 	drm_dbg(&i915->drm, "No display ID found for device ID %04x; disabling display.\n",
-- 
2.39.2

