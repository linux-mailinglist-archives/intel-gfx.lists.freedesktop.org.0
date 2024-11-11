Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A08E9C3C10
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Nov 2024 11:34:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F0C6710E46B;
	Mon, 11 Nov 2024 10:34:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VrxfL25L";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F04CC10E46B;
 Mon, 11 Nov 2024 10:34:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731321265; x=1762857265;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=t43YRWT9VIc+H4d1bAJyFZc2nyb4xCsnUfh79WMWUsI=;
 b=VrxfL25L3Ksit4AsEvlg0xnvxTu5LHuGp5DQpXUUZu4B0rid6KxKKHxZ
 LnrFWRG/rh3JsF1I0TWsibB7CUup7Sa5FZuGGwxSJHa2vj6qnwpe2NLpQ
 3QoFPlz88Jf9udRVaQ3Fkj7GEDCMuso/CtDNEkFE+3K+DiwcMJq9IWUkr
 FrQQjAwv8uzJu/uT63gQ55m+QkYWToKC4P7Pz9fCzY53n+GQfTcqKL9U1
 fFYJpxGZ2WBrml5oE3J+ZVKs/Ulf40uw0WgXmdP8auF7XpIBqJadrGJM4
 RAgb2JzrDvNvL3U0i2s5kwLZkM0nKdgE8eZZ27Y5lsF2N9Kt5G0YXCRP6 Q==;
X-CSE-ConnectionGUID: XAfrt7dZTlaFzxsGx1en0g==
X-CSE-MsgGUID: XHpz2cRWR6apY0DUSaALBw==
X-IronPort-AV: E=McAfee;i="6700,10204,11252"; a="31343999"
X-IronPort-AV: E=Sophos;i="6.12,144,1728975600"; d="scan'208";a="31343999"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2024 02:34:25 -0800
X-CSE-ConnectionGUID: W5zdEROxSuOH+Ak59YWPeQ==
X-CSE-MsgGUID: EjaN7FvZQ1yhn1zaTmSu3A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,144,1728975600"; d="scan'208";a="87196334"
Received: from carterle-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.75])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2024 02:34:22 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, Vinod Govindapillai <vinod.govindapillai@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: [CI v3 03/15] drm/i915/display: convert HAS_4TILE() to struct
 intel_display
Date: Mon, 11 Nov 2024 12:33:52 +0200
Message-Id: <123799e7c96d03d8eea7d9bea3d450e82c88ae5d.1731321183.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1731321183.git.jani.nikula@intel.com>
References: <cover.1731321183.git.jani.nikula@intel.com>
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

Convert HAS_4TILE() to struct intel_display. Do minimal drive-by
conversions to struct intel_display in the callers while at it.

Reviewed-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../gpu/drm/i915/display/intel_display_device.h    |  2 +-
 drivers/gpu/drm/i915/display/skl_universal_plane.c | 14 ++++++++------
 2 files changed, 9 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
index 886be1ffb85d..5176d109251a 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.h
+++ b/drivers/gpu/drm/i915/display/intel_display_device.h
@@ -138,7 +138,7 @@ struct intel_display_platforms {
 	func(overlay_needs_physical); \
 	func(supports_tv);
 
-#define HAS_4TILE(i915)			(IS_DG2(i915) || DISPLAY_VER(i915) >= 14)
+#define HAS_4TILE(__display)		((__display)->platform.dg2 || DISPLAY_VER(__display) >= 14)
 #define HAS_ASYNC_FLIPS(i915)		(DISPLAY_VER(i915) >= 5)
 #define HAS_BIGJOINER(i915)		(DISPLAY_VER(i915) >= 11 && HAS_DSC(i915))
 #define HAS_CDCLK_CRAWL(i915)		(DISPLAY_INFO(i915)->has_cdclk_crawl)
diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index c6e464d70cc7..28f7f2405ef3 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -2550,13 +2550,14 @@ static bool tgl_plane_has_mc_ccs(struct drm_i915_private *i915,
 static u8 skl_get_plane_caps(struct drm_i915_private *i915,
 			     enum pipe pipe, enum plane_id plane_id)
 {
+	struct intel_display *display = &i915->display;
 	u8 caps = INTEL_PLANE_CAP_TILING_X;
 
-	if (DISPLAY_VER(i915) < 13 || IS_ALDERLAKE_P(i915))
+	if (DISPLAY_VER(display) < 13 || display->platform.alderlake_p)
 		caps |= INTEL_PLANE_CAP_TILING_Y;
-	if (DISPLAY_VER(i915) < 12)
+	if (DISPLAY_VER(display) < 12)
 		caps |= INTEL_PLANE_CAP_TILING_Yf;
-	if (HAS_4TILE(i915))
+	if (HAS_4TILE(display))
 		caps |= INTEL_PLANE_CAP_TILING_4;
 
 	if (!IS_ENABLED(I915) && !HAS_FLAT_CCS(i915))
@@ -2564,14 +2565,14 @@ static u8 skl_get_plane_caps(struct drm_i915_private *i915,
 
 	if (skl_plane_has_rc_ccs(i915, pipe, plane_id)) {
 		caps |= INTEL_PLANE_CAP_CCS_RC;
-		if (DISPLAY_VER(i915) >= 12)
+		if (DISPLAY_VER(display) >= 12)
 			caps |= INTEL_PLANE_CAP_CCS_RC_CC;
 	}
 
 	if (tgl_plane_has_mc_ccs(i915, plane_id))
 		caps |= INTEL_PLANE_CAP_CCS_MC;
 
-	if (DISPLAY_VER(i915) >= 14 && IS_DGFX(i915))
+	if (DISPLAY_VER(display) >= 14 && display->platform.dgfx)
 		caps |= INTEL_PLANE_CAP_NEED64K_PHYS;
 
 	return caps;
@@ -2745,6 +2746,7 @@ void
 skl_get_initial_plane_config(struct intel_crtc *crtc,
 			     struct intel_initial_plane_config *plane_config)
 {
+	struct intel_display *display = to_intel_display(crtc);
 	struct intel_crtc_state *crtc_state = to_intel_crtc_state(crtc->base.state);
 	struct drm_device *dev = crtc->base.dev;
 	struct drm_i915_private *dev_priv = to_i915(dev);
@@ -2826,7 +2828,7 @@ skl_get_initial_plane_config(struct intel_crtc *crtc,
 			fb->modifier = I915_FORMAT_MOD_Y_TILED;
 		break;
 	case PLANE_CTL_TILED_YF: /* aka PLANE_CTL_TILED_4 on XE_LPD+ */
-		if (HAS_4TILE(dev_priv)) {
+		if (HAS_4TILE(display)) {
 			u32 rc_mask = PLANE_CTL_RENDER_DECOMPRESSION_ENABLE |
 				      PLANE_CTL_CLEAR_COLOR_DISABLE;
 
-- 
2.39.5

