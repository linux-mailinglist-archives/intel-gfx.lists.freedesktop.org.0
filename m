Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 166109C1116
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Nov 2024 22:38:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A713810E8F2;
	Thu,  7 Nov 2024 21:38:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IqzEHNf7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 52F1E10E8F7;
 Thu,  7 Nov 2024 21:38:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731015494; x=1762551494;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=1rAZ5OBUwfih28MLFfqJAiRPnCNBGJ9+E6m+bzID0Uk=;
 b=IqzEHNf7Wi6unLSBWE8WWTaiY+BilR3jGkjjYzJuPkuQYFHATHhAsaAj
 mI8iNQFDDVhACntp0VG1IRyxyOIQf89nnfLVge+33krF3KPmMDxZoy9nR
 2GzfKzvBFy/3j9USfhRASwDB+BqZdryDv5/texk27l6BS/9eVL+0iPKAE
 XIyHzp82xT6xZvy5bvYKuMp2ncOWNKmsSlUpQ0WqLN+Nl97RzQjNJHgBI
 kwExIqvXc8nQVPrPaQhxWEM6IL2kGSefVq+W2nWkkfEZm0aOiZmToiYZX
 ICD1SklUnVcTn/iWZbh9m9GpFbm93ZKPzmqFyzUIoEEFqhp5Vrqx2NMQG w==;
X-CSE-ConnectionGUID: zhG9/dYwSKuy/U/pJ+jS3g==
X-CSE-MsgGUID: gk4P7vkoT0m8jGiKXSeKUg==
X-IronPort-AV: E=McAfee;i="6700,10204,11249"; a="56283051"
X-IronPort-AV: E=Sophos;i="6.12,136,1728975600"; d="scan'208";a="56283051"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2024 13:38:14 -0800
X-CSE-ConnectionGUID: YTITAPCjTH2Zr53wGsrHjQ==
X-CSE-MsgGUID: uE5FYAE8QMilJHRquVptVg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,136,1728975600"; d="scan'208";a="85574940"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.233])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2024 13:38:12 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, Vinod Govindapillai <vinod.govindapillai@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: [CI v2 v2 15/15] drm/i915/display: add mobile platform group
Date: Thu,  7 Nov 2024 23:36:49 +0200
Message-Id: <77d9cf006c6dde46c0ffdd35b2ecbc20cda447ef.1731015334.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1731015333.git.jani.nikula@intel.com>
References: <cover.1731015333.git.jani.nikula@intel.com>
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

Identify mobile platforms separately in display, using the platform
group mechanism. This enables dropping the dependency on i915_drv.h
IS_MOBILE() from display code.

v2: Make snb_display static (kernel test robot)

Reviewed-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../drm/i915/display/intel_display_device.c   | 104 ++++++++++++------
 .../drm/i915/display/intel_display_device.h   |   1 +
 2 files changed, 70 insertions(+), 35 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
index 41df7a8fd32e..68cb7f9b9ef3 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.c
+++ b/drivers/gpu/drm/i915/display/intel_display_device.c
@@ -253,6 +253,7 @@ static const struct intel_display_device_info no_display = {};
 
 static const struct platform_desc i830_desc = {
 	PLATFORM(i830),
+	PLATFORM_GROUP(mobile),
 	.info = &(const struct intel_display_device_info) {
 		I830_DISPLAY,
 
@@ -271,6 +272,7 @@ static const struct platform_desc i845_desc = {
 
 static const struct platform_desc i85x_desc = {
 	PLATFORM(i85x),
+	PLATFORM_GROUP(mobile),
 	.info = &(const struct intel_display_device_info) {
 		I830_DISPLAY,
 
@@ -313,6 +315,7 @@ static const struct platform_desc i915g_desc = {
 
 static const struct platform_desc i915gm_desc = {
 	PLATFORM(i915gm),
+	PLATFORM_GROUP(mobile),
 	.info = &(const struct intel_display_device_info) {
 		GEN3_DISPLAY,
 		I9XX_COLORS,
@@ -337,6 +340,7 @@ static const struct platform_desc i945g_desc = {
 
 static const struct platform_desc i945gm_desc = {
 	PLATFORM(i915gm),
+	PLATFORM_GROUP(mobile),
 	.info = &(const struct intel_display_device_info) {
 		GEN3_DISPLAY,
 		I9XX_COLORS,
@@ -358,13 +362,21 @@ static const struct platform_desc g33_desc = {
 	},
 };
 
-static const struct platform_desc pnv_desc = {
+static const struct intel_display_device_info pnv_display = {
+	GEN3_DISPLAY,
+	I9XX_COLORS,
+	.has_hotplug = 1,
+};
+
+static const struct platform_desc pnv_g_desc = {
 	PLATFORM(pineview),
-	.info = &(const struct intel_display_device_info) {
-		GEN3_DISPLAY,
-		I9XX_COLORS,
-		.has_hotplug = 1,
-	},
+	.info = &pnv_display,
+};
+
+static const struct platform_desc pnv_m_desc = {
+	PLATFORM(pineview),
+	PLATFORM_GROUP(mobile),
+	.info = &pnv_display,
 };
 
 #define GEN4_DISPLAY \
@@ -391,6 +403,7 @@ static const struct platform_desc i965g_desc = {
 
 static const struct platform_desc i965gm_desc = {
 	PLATFORM(i965gm),
+	PLATFORM_GROUP(mobile),
 	.info = &(const struct intel_display_device_info) {
 		GEN4_DISPLAY,
 		.has_overlay = 1,
@@ -414,6 +427,7 @@ static const struct platform_desc g45_desc = {
 static const struct platform_desc gm45_desc = {
 	PLATFORM(gm45),
 	PLATFORM_GROUP(g4x),
+	PLATFORM_GROUP(mobile),
 	.info = &(const struct intel_display_device_info) {
 		GEN4_DISPLAY,
 		.supports_tv = 1,
@@ -444,6 +458,7 @@ static const struct platform_desc ilk_d_desc = {
 
 static const struct platform_desc ilk_m_desc = {
 	PLATFORM(ironlake),
+	PLATFORM_GROUP(mobile),
 	.info = &(const struct intel_display_device_info) {
 		ILK_DISPLAY,
 
@@ -451,38 +466,54 @@ static const struct platform_desc ilk_m_desc = {
 	},
 };
 
-static const struct platform_desc snb_desc = {
+static const struct intel_display_device_info snb_display = {
+	.has_hotplug = 1,
+	I9XX_PIPE_OFFSETS,
+	I9XX_CURSOR_OFFSETS,
+	ILK_COLORS,
+
+	.__runtime_defaults.ip.ver = 6,
+	.__runtime_defaults.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B),
+	.__runtime_defaults.cpu_transcoder_mask =
+	BIT(TRANSCODER_A) | BIT(TRANSCODER_B),
+	.__runtime_defaults.port_mask = BIT(PORT_A) | BIT(PORT_B) | BIT(PORT_C) | BIT(PORT_D), /* DP A, SDVO/HDMI/DP B, HDMI/DP C/D */
+	.__runtime_defaults.fbc_mask = BIT(INTEL_FBC_A),
+};
+
+static const struct platform_desc snb_d_desc = {
 	PLATFORM(sandybridge),
-	.info = &(const struct intel_display_device_info) {
-		.has_hotplug = 1,
-		I9XX_PIPE_OFFSETS,
-		I9XX_CURSOR_OFFSETS,
-		ILK_COLORS,
+	.info = &snb_display,
+};
 
-		.__runtime_defaults.ip.ver = 6,
-		.__runtime_defaults.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B),
-		.__runtime_defaults.cpu_transcoder_mask =
-		BIT(TRANSCODER_A) | BIT(TRANSCODER_B),
-		.__runtime_defaults.port_mask = BIT(PORT_A) | BIT(PORT_B) | BIT(PORT_C) | BIT(PORT_D), /* DP A, SDVO/HDMI/DP B, HDMI/DP C/D */
-		.__runtime_defaults.fbc_mask = BIT(INTEL_FBC_A),
-	},
+static const struct platform_desc snb_m_desc = {
+	PLATFORM(sandybridge),
+	PLATFORM_GROUP(mobile),
+	.info = &snb_display,
+};
+
+static const struct intel_display_device_info ivb_display = {
+	.has_hotplug = 1,
+	IVB_PIPE_OFFSETS,
+	IVB_CURSOR_OFFSETS,
+	IVB_COLORS,
+
+	.__runtime_defaults.ip.ver = 7,
+	.__runtime_defaults.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C),
+	.__runtime_defaults.cpu_transcoder_mask =
+	BIT(TRANSCODER_A) | BIT(TRANSCODER_B) | BIT(TRANSCODER_C),
+	.__runtime_defaults.port_mask = BIT(PORT_A) | BIT(PORT_B) | BIT(PORT_C) | BIT(PORT_D), /* DP A, SDVO/HDMI/DP B, HDMI/DP C/D */
+	.__runtime_defaults.fbc_mask = BIT(INTEL_FBC_A),
 };
 
-static const struct platform_desc ivb_desc = {
+static const struct platform_desc ivb_d_desc = {
 	PLATFORM(ivybridge),
-	.info = &(const struct intel_display_device_info) {
-		.has_hotplug = 1,
-		IVB_PIPE_OFFSETS,
-		IVB_CURSOR_OFFSETS,
-		IVB_COLORS,
+	.info = &ivb_display,
+};
 
-		.__runtime_defaults.ip.ver = 7,
-		.__runtime_defaults.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C),
-		.__runtime_defaults.cpu_transcoder_mask =
-		BIT(TRANSCODER_A) | BIT(TRANSCODER_B) | BIT(TRANSCODER_C),
-		.__runtime_defaults.port_mask = BIT(PORT_A) | BIT(PORT_B) | BIT(PORT_C) | BIT(PORT_D), /* DP A, SDVO/HDMI/DP B, HDMI/DP C/D */
-		.__runtime_defaults.fbc_mask = BIT(INTEL_FBC_A),
-	},
+static const struct platform_desc ivb_m_desc = {
+	PLATFORM(ivybridge),
+	PLATFORM_GROUP(mobile),
+	.info = &ivb_display,
 };
 
 static const struct platform_desc vlv_desc = {
@@ -1385,11 +1416,14 @@ static const struct {
 	INTEL_I965GM_IDS(INTEL_DISPLAY_DEVICE, &i965gm_desc),
 	INTEL_GM45_IDS(INTEL_DISPLAY_DEVICE, &gm45_desc),
 	INTEL_G45_IDS(INTEL_DISPLAY_DEVICE, &g45_desc),
-	INTEL_PNV_IDS(INTEL_DISPLAY_DEVICE, &pnv_desc),
+	INTEL_PNV_G_IDS(INTEL_DISPLAY_DEVICE, &pnv_g_desc),
+	INTEL_PNV_M_IDS(INTEL_DISPLAY_DEVICE, &pnv_m_desc),
 	INTEL_ILK_D_IDS(INTEL_DISPLAY_DEVICE, &ilk_d_desc),
 	INTEL_ILK_M_IDS(INTEL_DISPLAY_DEVICE, &ilk_m_desc),
-	INTEL_SNB_IDS(INTEL_DISPLAY_DEVICE, &snb_desc),
-	INTEL_IVB_IDS(INTEL_DISPLAY_DEVICE, &ivb_desc),
+	INTEL_SNB_D_IDS(INTEL_DISPLAY_DEVICE, &snb_d_desc),
+	INTEL_SNB_M_IDS(INTEL_DISPLAY_DEVICE, &snb_m_desc),
+	INTEL_IVB_D_IDS(INTEL_DISPLAY_DEVICE, &ivb_d_desc),
+	INTEL_IVB_M_IDS(INTEL_DISPLAY_DEVICE, &ivb_m_desc),
 	INTEL_HSW_IDS(INTEL_DISPLAY_DEVICE, &hsw_desc),
 	INTEL_VLV_IDS(INTEL_DISPLAY_DEVICE, &vlv_desc),
 	INTEL_BDW_IDS(INTEL_DISPLAY_DEVICE, &bdw_desc),
diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
index 26b2c246b87d..4f098f5a5a40 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.h
+++ b/drivers/gpu/drm/i915/display/intel_display_device.h
@@ -24,6 +24,7 @@ struct pci_dev;
 #define INTEL_DISPLAY_PLATFORMS(func) \
 	/* Platform group aliases */ \
 	func(g4x) /* g45 and gm45 */ \
+	func(mobile) /* mobile platforms */ \
 	func(dgfx) /* discrete graphics */ \
 	/* Display ver 2 */ \
 	func(i830) \
-- 
2.39.5

