Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A1629BBBA7
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Nov 2024 18:20:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E962D10E297;
	Mon,  4 Nov 2024 17:20:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OSDBJJgw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1990510E008;
 Mon,  4 Nov 2024 17:20:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730740813; x=1762276813;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=EyXPUF9cBaoZ43OnI9T3ngUojKFKdXF4uYHQwQ3qgL4=;
 b=OSDBJJgwz1VW8ghWtWXqs7IauusJhdm0kiWMYXIpmsDg45AORK9PKdbW
 zi3dic0DI8lfldlbe8uz19EatmLbc95oFBmrMVOVOP0W2tdpd5GjqPLRp
 z384DEHOoXnSWSIWq5rZwyNcMrAMakJzfs/rk9RkWVlDyQbANJvb67LZf
 KRoat/P4BWx/GA/p7TvMTLe5b1JlQT7HR5VYCPTyGZqU7jKQ2BvTnXQUE
 dSPIAgkeyaCQMmGi573oKQY7VvV4PqdEKroK/QJrEbsCfsx1ZRycMOPje
 M5CCJhI2U92DQX5aODh1v1yQAJ2rJua8xEkNyI1hA42olMuBu/2R8MlX3 A==;
X-CSE-ConnectionGUID: UAEYyuu4Q3i5Yr2qwEdCsw==
X-CSE-MsgGUID: UsFvxrRQRy2PJukGi69xJg==
X-IronPort-AV: E=McAfee;i="6700,10204,11246"; a="30563869"
X-IronPort-AV: E=Sophos;i="6.11,257,1725346800"; d="scan'208";a="30563869"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2024 09:20:13 -0800
X-CSE-ConnectionGUID: d5sCMbQNRG2uR9IAGiHkQw==
X-CSE-MsgGUID: s3vB6bryRU+6af3wnSHw7w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,257,1725346800"; d="scan'208";a="83815796"
Received: from carterle-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.33])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2024 09:20:11 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 08/15] drm/i915/display: convert HAS_MBUS_JOINING() to struct
 intel_display
Date: Mon,  4 Nov 2024 19:19:22 +0200
Message-Id: <754f1d16612082ef48e7e33b1240418549ed1407.1730740629.git.jani.nikula@intel.com>
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

Convert HAS_MBUS_JOINING() to struct intel_display. Do minimal drive-by
conversions to struct intel_display in the callers while at it.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../drm/i915/display/intel_display_device.h    |  2 +-
 drivers/gpu/drm/i915/display/skl_watermark.c   | 18 ++++++++++--------
 2 files changed, 11 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
index b85b1d3ff708..a0fed40b7779 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.h
+++ b/drivers/gpu/drm/i915/display/intel_display_device.h
@@ -167,7 +167,7 @@ struct intel_display_platforms {
 #define HAS_IPS(__display)		((__display)->platform.haswell_ult || (__display)->platform.broadwell)
 #define HAS_LRR(i915)			(DISPLAY_VER(i915) >= 12)
 #define HAS_LSPCON(i915)		(IS_DISPLAY_VER(i915, 9, 10))
-#define HAS_MBUS_JOINING(i915)		(IS_ALDERLAKE_P(i915) || DISPLAY_VER(i915) >= 14)
+#define HAS_MBUS_JOINING(__display)	((__display)->platform.alderlake_p || DISPLAY_VER(__display) >= 14)
 #define HAS_MSO(i915)			(DISPLAY_VER(i915) >= 12)
 #define HAS_OVERLAY(i915)		(DISPLAY_INFO(i915)->has_overlay)
 #define HAS_PSR(i915)			(DISPLAY_INFO(i915)->has_psr)
diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 3b0e87edbacf..83e2cbbfcaf0 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -2496,6 +2496,7 @@ static u8 intel_dbuf_enabled_slices(const struct intel_dbuf_state *dbuf_state)
 static int
 skl_compute_ddb(struct intel_atomic_state *state)
 {
+	struct intel_display *display = to_intel_display(state);
 	struct drm_i915_private *i915 = to_i915(state->base.dev);
 	const struct intel_dbuf_state *old_dbuf_state;
 	struct intel_dbuf_state *new_dbuf_state = NULL;
@@ -2524,7 +2525,7 @@ skl_compute_ddb(struct intel_atomic_state *state)
 			return ret;
 	}
 
-	if (HAS_MBUS_JOINING(i915)) {
+	if (HAS_MBUS_JOINING(display)) {
 		new_dbuf_state->joined_mbus =
 			adlp_check_mbus_joined(new_dbuf_state->active_pipes);
 
@@ -2984,7 +2985,7 @@ static void skl_wm_get_hw_state(struct drm_i915_private *i915)
 		to_intel_dbuf_state(i915->display.dbuf.obj.state);
 	struct intel_crtc *crtc;
 
-	if (HAS_MBUS_JOINING(i915))
+	if (HAS_MBUS_JOINING(display))
 		dbuf_state->joined_mbus = intel_de_read(i915, MBUS_CTL) & MBUS_JOIN;
 
 	dbuf_state->mdclk_cdclk_ratio = intel_mdclk_cdclk_ratio(display, &display->cdclk.hw);
@@ -3562,23 +3563,24 @@ int intel_dbuf_state_set_mdclk_cdclk_ratio(struct intel_atomic_state *state,
 void intel_dbuf_mdclk_cdclk_ratio_update(struct drm_i915_private *i915,
 					 int ratio, bool joined_mbus)
 {
+	struct intel_display *display = &i915->display;
 	enum dbuf_slice slice;
 
-	if (!HAS_MBUS_JOINING(i915))
+	if (!HAS_MBUS_JOINING(display))
 		return;
 
-	if (DISPLAY_VER(i915) >= 20)
-		intel_de_rmw(i915, MBUS_CTL, MBUS_TRANSLATION_THROTTLE_MIN_MASK,
+	if (DISPLAY_VER(display) >= 20)
+		intel_de_rmw(display, MBUS_CTL, MBUS_TRANSLATION_THROTTLE_MIN_MASK,
 			     MBUS_TRANSLATION_THROTTLE_MIN(ratio - 1));
 
 	if (joined_mbus)
 		ratio *= 2;
 
-	drm_dbg_kms(&i915->drm, "Updating dbuf ratio to %d (mbus joined: %s)\n",
+	drm_dbg_kms(display->drm, "Updating dbuf ratio to %d (mbus joined: %s)\n",
 		    ratio, str_yes_no(joined_mbus));
 
-	for_each_dbuf_slice(i915, slice)
-		intel_de_rmw(i915, DBUF_CTL_S(slice),
+	for_each_dbuf_slice(display, slice)
+		intel_de_rmw(display, DBUF_CTL_S(slice),
 			     DBUF_MIN_TRACKER_STATE_SERVICE_MASK,
 			     DBUF_MIN_TRACKER_STATE_SERVICE(ratio - 1));
 }
-- 
2.39.5

