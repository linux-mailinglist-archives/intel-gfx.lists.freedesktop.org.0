Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 44ADB9BBBA9
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Nov 2024 18:20:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 998DA10E490;
	Mon,  4 Nov 2024 17:20:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Eu3/zzXj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5F95610E48E;
 Mon,  4 Nov 2024 17:20:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730740817; x=1762276817;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=oraoa6WsRGoxRNGPkVj9v1IGmvw2HGCQKVT9glqStOA=;
 b=Eu3/zzXjOPtGfkupb7GruLJNfDdQ+N4xCdYPTyb/9Jajr3QSIL+gxSdl
 oApiCOyqJLX1RbXRBjAadiJbTpU1elPrkGgJEhntitmNI8fXwuNLMMjqc
 5MXNpADTJQmneCJN/Nrgx3GJz0pE0rJS++XUVEozP8eJxR3meVXrdblWU
 jNYW+wEdSYZ5MGLMgxIRofJMHpiafMGRn4ExCfdo82xm3g3IXPvzkEDpH
 XBHTEu0uQB4jX5t0BEn/OcL4cBG0U2I1nrN32f1pR3FIMjrerE7Dl8ytZ
 PeQ6P2EBczn/BMKn2cZ9tBaiRnHivj57F/cTDoIv4HgZiTrTgLS81boqK Q==;
X-CSE-ConnectionGUID: yq+3XUgTRtGJuRfs5X/Qlg==
X-CSE-MsgGUID: pZrFeup1ROaek6oXInKuMA==
X-IronPort-AV: E=McAfee;i="6700,10204,11246"; a="30563887"
X-IronPort-AV: E=Sophos;i="6.11,257,1725346800"; d="scan'208";a="30563887"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2024 09:20:17 -0800
X-CSE-ConnectionGUID: NghlGzsGSAGWt+sLMaAlkw==
X-CSE-MsgGUID: RpC1uikSSHa0OW0J0owyog==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,257,1725346800"; d="scan'208";a="83815809"
Received: from carterle-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.33])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2024 09:20:16 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 09/15] drm/i915/display: convert HAS_SAGV() to struct
 intel_display
Date: Mon,  4 Nov 2024 19:19:23 +0200
Message-Id: <2341a40233a1e14a445f6cacd318521d6308cd12.1730740629.git.jani.nikula@intel.com>
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

Convert HAS_SAGV() to struct intel_display. Do minimal drive-by
conversions to struct intel_display in the callers while at it.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../drm/i915/display/intel_display_device.h   |  3 +-
 drivers/gpu/drm/i915/display/skl_watermark.c  | 50 +++++++++++--------
 2 files changed, 30 insertions(+), 23 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
index a0fed40b7779..c23823769911 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.h
+++ b/drivers/gpu/drm/i915/display/intel_display_device.h
@@ -173,7 +173,8 @@ struct intel_display_platforms {
 #define HAS_PSR(i915)			(DISPLAY_INFO(i915)->has_psr)
 #define HAS_PSR_HW_TRACKING(i915)	(DISPLAY_INFO(i915)->has_psr_hw_tracking)
 #define HAS_PSR2_SEL_FETCH(i915)	(DISPLAY_VER(i915) >= 12)
-#define HAS_SAGV(i915)			(DISPLAY_VER(i915) >= 9 && !IS_BROXTON(i915) && !IS_GEMINILAKE(i915))
+#define HAS_SAGV(__display)		(DISPLAY_VER(__display) >= 9 && \
+					 !(__display)->platform.broxton && !(__display)->platform.geminilake)
 #define HAS_TRANSCODER(i915, trans)	((DISPLAY_RUNTIME_INFO(i915)->cpu_transcoder_mask & \
 					  BIT(trans)) != 0)
 #define HAS_UNCOMPRESSED_JOINER(i915)	(DISPLAY_VER(i915) >= 13)
diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 83e2cbbfcaf0..09af693da586 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -77,20 +77,23 @@ static bool skl_needs_memory_bw_wa(struct drm_i915_private *i915)
 bool
 intel_has_sagv(struct drm_i915_private *i915)
 {
-	return HAS_SAGV(i915) &&
-		i915->display.sagv.status != I915_SAGV_NOT_CONTROLLED;
+	struct intel_display *display = &i915->display;
+
+	return HAS_SAGV(display) && display->sagv.status != I915_SAGV_NOT_CONTROLLED;
 }
 
 static u32
 intel_sagv_block_time(struct drm_i915_private *i915)
 {
-	if (DISPLAY_VER(i915) >= 14) {
+	struct intel_display *display = &i915->display;
+
+	if (DISPLAY_VER(display) >= 14) {
 		u32 val;
 
-		val = intel_de_read(i915, MTL_LATENCY_SAGV);
+		val = intel_de_read(display, MTL_LATENCY_SAGV);
 
 		return REG_FIELD_GET(MTL_LATENCY_QCLK_SAGV, val);
-	} else if (DISPLAY_VER(i915) >= 12) {
+	} else if (DISPLAY_VER(display) >= 12) {
 		u32 val = 0;
 		int ret;
 
@@ -98,14 +101,14 @@ intel_sagv_block_time(struct drm_i915_private *i915)
 				     GEN12_PCODE_READ_SAGV_BLOCK_TIME_US,
 				     &val, NULL);
 		if (ret) {
-			drm_dbg_kms(&i915->drm, "Couldn't read SAGV block time!\n");
+			drm_dbg_kms(display->drm, "Couldn't read SAGV block time!\n");
 			return 0;
 		}
 
 		return val;
-	} else if (DISPLAY_VER(i915) == 11) {
+	} else if (DISPLAY_VER(display) == 11) {
 		return 10;
-	} else if (HAS_SAGV(i915)) {
+	} else if (HAS_SAGV(display)) {
 		return 30;
 	} else {
 		return 0;
@@ -114,31 +117,33 @@ intel_sagv_block_time(struct drm_i915_private *i915)
 
 static void intel_sagv_init(struct drm_i915_private *i915)
 {
-	if (!HAS_SAGV(i915))
-		i915->display.sagv.status = I915_SAGV_NOT_CONTROLLED;
+	struct intel_display *display = &i915->display;
+
+	if (!HAS_SAGV(display))
+		display->sagv.status = I915_SAGV_NOT_CONTROLLED;
 
 	/*
 	 * Probe to see if we have working SAGV control.
 	 * For icl+ this was already determined by intel_bw_init_hw().
 	 */
-	if (DISPLAY_VER(i915) < 11)
+	if (DISPLAY_VER(display) < 11)
 		skl_sagv_disable(i915);
 
-	drm_WARN_ON(&i915->drm, i915->display.sagv.status == I915_SAGV_UNKNOWN);
+	drm_WARN_ON(display->drm, display->sagv.status == I915_SAGV_UNKNOWN);
 
-	i915->display.sagv.block_time_us = intel_sagv_block_time(i915);
+	display->sagv.block_time_us = intel_sagv_block_time(i915);
 
-	drm_dbg_kms(&i915->drm, "SAGV supported: %s, original SAGV block time: %u us\n",
-		    str_yes_no(intel_has_sagv(i915)), i915->display.sagv.block_time_us);
+	drm_dbg_kms(display->drm, "SAGV supported: %s, original SAGV block time: %u us\n",
+		    str_yes_no(intel_has_sagv(i915)), display->sagv.block_time_us);
 
 	/* avoid overflow when adding with wm0 latency/etc. */
-	if (drm_WARN(&i915->drm, i915->display.sagv.block_time_us > U16_MAX,
+	if (drm_WARN(display->drm, display->sagv.block_time_us > U16_MAX,
 		     "Excessive SAGV block time %u, ignoring\n",
-		     i915->display.sagv.block_time_us))
-		i915->display.sagv.block_time_us = 0;
+		     display->sagv.block_time_us))
+		display->sagv.block_time_us = 0;
 
 	if (!intel_has_sagv(i915))
-		i915->display.sagv.block_time_us = 0;
+		display->sagv.block_time_us = 0;
 }
 
 /*
@@ -3832,13 +3837,14 @@ DEFINE_SHOW_ATTRIBUTE(intel_sagv_status);
 
 void skl_watermark_debugfs_register(struct drm_i915_private *i915)
 {
-	struct drm_minor *minor = i915->drm.primary;
+	struct intel_display *display = &i915->display;
+	struct drm_minor *minor = display->drm->primary;
 
-	if (HAS_IPC(i915))
+	if (HAS_IPC(display))
 		debugfs_create_file("i915_ipc_status", 0644, minor->debugfs_root, i915,
 				    &skl_watermark_ipc_status_fops);
 
-	if (HAS_SAGV(i915))
+	if (HAS_SAGV(display))
 		debugfs_create_file("i915_sagv_status", 0444, minor->debugfs_root, i915,
 				    &intel_sagv_status_fops);
 }
-- 
2.39.5

