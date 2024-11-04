Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 943FF9BBBBB
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Nov 2024 18:20:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 36A5610E49D;
	Mon,  4 Nov 2024 17:20:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DsyfOcTA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2925010E49C;
 Mon,  4 Nov 2024 17:20:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730740846; x=1762276846;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=l4CZCsjrMecdj21oc5FPC6x64uqeZBHMm8RXmptmSqc=;
 b=DsyfOcTAYnFDRnWSpSZES5FZyDSTg3E9TTsy1u2Q4lj9IJpZmEbSSkZv
 fVG5EdLabGkzHm8h90ll+364P/0bIIzFW0NeG608HFNxOAdCHYVmd4XTk
 MX+Cm1jkFaZcrb53j/teVgxF5Ryeqqva6EkmbjHJoQ5r66sVdidpWJ3On
 HhA+08sYdCX9HBdQt9Agt1yf3FrKALPOsSQ1O/C+xvMPi+gcqEYUiFhgs
 vHAiz8G0FQTy3hpq/AmBwj8rcuuV++BoeHhYB+BeD6yrmbqw+ZUSLTCkY
 +GaplnzWAUHkLu2hH1IAIUAAH5fKAHgEAb7l3s8hR+DyLdNJstZdgs8I4 Q==;
X-CSE-ConnectionGUID: yRjwGPYLT1qKSUkoynTodg==
X-CSE-MsgGUID: smshlikIQ3ey8/ZT41kckg==
X-IronPort-AV: E=McAfee;i="6700,10204,11246"; a="18070933"
X-IronPort-AV: E=Sophos;i="6.11,257,1725346800"; d="scan'208";a="18070933"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2024 09:20:46 -0800
X-CSE-ConnectionGUID: wVT4UQvOT5KtdBziEOfGuA==
X-CSE-MsgGUID: Sb2YHhcuT/K4MDtchrZ7mw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,257,1725346800"; d="scan'208";a="83841297"
Received: from carterle-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.33])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2024 09:20:45 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 15/15] drm/i915/display: add mobile platform group
Date: Mon,  4 Nov 2024 19:19:29 +0200
Message-Id: <e9277a5635fc02106ca69b9071928c2249323500.1730740629.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1730740629.git.jani.nikula@intel.com>
References: <cover.1730740629.git.jani.nikula@intel.com>
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

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../drm/i915/display/intel_display_device.c   | 104 ++++++++++++------
 .../drm/i915/display/intel_display_device.h   |   1 +
 2 files changed, 70 insertions(+), 35 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
index 8ba1b4652ca9..5689c5e5db0e 100644
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
+const struct intel_display_device_info snb_display = {
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
index e1398689cda5..84378c787923 100644
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

