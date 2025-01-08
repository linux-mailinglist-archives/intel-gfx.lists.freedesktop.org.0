Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D04BBA05863
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jan 2025 11:41:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7311710E856;
	Wed,  8 Jan 2025 10:41:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Q5TV7DWh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B76510E854
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Jan 2025 10:41:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736332917; x=1767868917;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=8ZPJGags9VI3lljEmG/7LmQsiMKbLTa76Splrxk2FgQ=;
 b=Q5TV7DWh+CQAgW43hTYUiKE/sJ0Ws1E88vav8+nd53XsBbZqv0vhs9BC
 pvKYUcY6FsqjqcNskQpA90OaSIAbTsB0gA2+uW+xM5T73vxEYAp17jl7C
 ykGExVNO/EOpTHDwvAD7AkfRqaA43qo/nmQyfAbVYNyLDa8vvZP5i7ZgG
 MNtc7fmk6SxMWRWSGGELcHYsW2RKnmpVn17ASo7xwIrh03J1u8bLXJFbx
 HSQG1h6UL5fo4CGlvzbWJfM1wLdnLWKdu5sp2gSrUe6fFKrh5B4h2amuG
 HvFcslj1K87VwiGtnrMS3kqVLQjJmhXzFXpOFwHY5AJNV4x3Ru7imQRku g==;
X-CSE-ConnectionGUID: iut01iNdSBODaTRGbIvQYw==
X-CSE-MsgGUID: sC6cxbWYQIa2pEG1MGrugg==
X-IronPort-AV: E=McAfee;i="6700,10204,11308"; a="47218603"
X-IronPort-AV: E=Sophos;i="6.12,298,1728975600"; d="scan'208";a="47218603"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2025 02:41:50 -0800
X-CSE-ConnectionGUID: YHd79Xr5TP2K0jLWG5eG2g==
X-CSE-MsgGUID: Z/7kbrZ1T/2v+WPENbdvBQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,298,1728975600"; d="scan'208";a="102979057"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.152])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2025 02:41:48 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 5/6] drm/i915: move gpu_reset_clobbers_display flag to display
 info
Date: Wed,  8 Jan 2025 12:41:20 +0200
Message-Id: <80abf659262f193829e840db3c4d172731f08e33.1736332802.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1736332802.git.jani.nikula@intel.com>
References: <cover.1736332802.git.jani.nikula@intel.com>
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

Arguably it's a display property whether it's impacted by GPU reset. And
we don't have to look at i915 device info from display.

Reverse the flag usage for gen 4. Only set it for the affected
platforms, instead of all gen 4 and disabling for the unaffected.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_device.c | 5 +++++
 drivers/gpu/drm/i915/display/intel_display_device.h | 1 +
 drivers/gpu/drm/i915/display/intel_display_reset.c  | 4 +---
 drivers/gpu/drm/i915/i915_pci.c                     | 6 ------
 drivers/gpu/drm/i915/intel_device_info.h            | 1 -
 5 files changed, 7 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
index 68cb7f9b9ef3..365120f3c7e1 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.c
+++ b/drivers/gpu/drm/i915/display/intel_display_device.c
@@ -226,6 +226,7 @@ static const struct intel_display_device_info no_display = {};
 	}
 
 #define I830_DISPLAY \
+	.gpu_reset_clobbers_display = 1, \
 	.has_overlay = 1, \
 	.cursor_needs_physical = 1, \
 	.overlay_needs_physical = 1, \
@@ -240,6 +241,7 @@ static const struct intel_display_device_info no_display = {};
 		BIT(TRANSCODER_A) | BIT(TRANSCODER_B)
 
 #define I845_DISPLAY \
+	.gpu_reset_clobbers_display = 1, \
 	.has_overlay = 1, \
 	.overlay_needs_physical = 1, \
 	.has_gmch = 1, \
@@ -292,6 +294,7 @@ static const struct platform_desc i865g_desc = {
 };
 
 #define GEN3_DISPLAY   \
+	.gpu_reset_clobbers_display = 1, \
 	.has_gmch = 1, \
 	.has_overlay = 1, \
 	I9XX_PIPE_OFFSETS, \
@@ -395,6 +398,7 @@ static const struct platform_desc i965g_desc = {
 	PLATFORM(i965g),
 	.info = &(const struct intel_display_device_info) {
 		GEN4_DISPLAY,
+		.gpu_reset_clobbers_display = 1,
 		.has_overlay = 1,
 
 		.__runtime_defaults.port_mask = BIT(PORT_B) | BIT(PORT_C), /* SDVO B/C */
@@ -406,6 +410,7 @@ static const struct platform_desc i965gm_desc = {
 	PLATFORM_GROUP(mobile),
 	.info = &(const struct intel_display_device_info) {
 		GEN4_DISPLAY,
+		.gpu_reset_clobbers_display = 1,
 		.has_overlay = 1,
 		.supports_tv = 1,
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
index 9a333d9e6601..3876ca39b7dd 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.h
+++ b/drivers/gpu/drm/i915/display/intel_display_device.h
@@ -124,6 +124,7 @@ struct intel_display_platforms {
 #define DEV_INFO_DISPLAY_FOR_EACH_FLAG(func) \
 	/* Keep in alphabetical order */ \
 	func(cursor_needs_physical); \
+	func(gpu_reset_clobbers_display); \
 	func(has_cdclk_crawl); \
 	func(has_cdclk_squash); \
 	func(has_ddi); \
diff --git a/drivers/gpu/drm/i915/display/intel_display_reset.c b/drivers/gpu/drm/i915/display/intel_display_reset.c
index 93399ace7761..e5c1650346fe 100644
--- a/drivers/gpu/drm/i915/display/intel_display_reset.c
+++ b/drivers/gpu/drm/i915/display/intel_display_reset.c
@@ -15,9 +15,7 @@
 
 bool intel_display_gpu_reset_clobbers_display(struct intel_display *display)
 {
-	struct drm_i915_private *i915 = to_i915(display->drm);
-
-	return INTEL_INFO(i915)->gpu_reset_clobbers_display;
+	return DISPLAY_INFO(display)->gpu_reset_clobbers_display;
 }
 
 static bool gpu_reset_clobbers_display(struct intel_display *display)
diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index 21006c7f615c..85b325bafafe 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -80,7 +80,6 @@ __diag_ignore_all("-Woverride-init", "Allow field initialization overrides for d
 #define I830_FEATURES \
 	GEN(2), \
 	.is_mobile = 1, \
-	.gpu_reset_clobbers_display = true, \
 	.has_3d_pipeline = 1, \
 	.hws_needs_physical = 1, \
 	.unfenced_needs_alignment = 1, \
@@ -96,7 +95,6 @@ __diag_ignore_all("-Woverride-init", "Allow field initialization overrides for d
 #define I845_FEATURES \
 	GEN(2), \
 	.has_3d_pipeline = 1, \
-	.gpu_reset_clobbers_display = true, \
 	.hws_needs_physical = 1, \
 	.unfenced_needs_alignment = 1, \
 	.platform_engine_mask = BIT(RCS0), \
@@ -130,7 +128,6 @@ static const struct intel_device_info i865g_info = {
 
 #define GEN3_FEATURES \
 	GEN(3), \
-	.gpu_reset_clobbers_display = true, \
 	.platform_engine_mask = BIT(RCS0), \
 	.has_3d_pipeline = 1, \
 	.has_snoop = true, \
@@ -193,7 +190,6 @@ static const struct intel_device_info pnv_m_info = {
 
 #define GEN4_FEATURES \
 	GEN(4), \
-	.gpu_reset_clobbers_display = true, \
 	.platform_engine_mask = BIT(RCS0), \
 	.has_3d_pipeline = 1, \
 	.has_snoop = true, \
@@ -223,7 +219,6 @@ static const struct intel_device_info g45_info = {
 	GEN4_FEATURES,
 	PLATFORM(INTEL_G45),
 	.platform_engine_mask = BIT(RCS0) | BIT(VCS0),
-	.gpu_reset_clobbers_display = false,
 };
 
 static const struct intel_device_info gm45_info = {
@@ -231,7 +226,6 @@ static const struct intel_device_info gm45_info = {
 	PLATFORM(INTEL_GM45),
 	.is_mobile = 1,
 	.platform_engine_mask = BIT(RCS0) | BIT(VCS0),
-	.gpu_reset_clobbers_display = false,
 };
 
 #define GEN5_FEATURES \
diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
index 9387385cb418..7296e7dcf828 100644
--- a/drivers/gpu/drm/i915/intel_device_info.h
+++ b/drivers/gpu/drm/i915/intel_device_info.h
@@ -148,7 +148,6 @@ enum intel_ppgtt_type {
 	/* Keep has_* in alphabetical order */ \
 	func(has_64bit_reloc); \
 	func(has_64k_pages); \
-	func(gpu_reset_clobbers_display); \
 	func(has_reset_engine); \
 	func(has_3d_pipeline); \
 	func(has_flat_ccs); \
-- 
2.39.5

