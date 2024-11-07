Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 39B949C1108
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Nov 2024 22:37:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D38D710E8E8;
	Thu,  7 Nov 2024 21:37:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nIA8dbWf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7682310E8E8;
 Thu,  7 Nov 2024 21:37:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731015432; x=1762551432;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=m0ufLXf3KSb9hHOzB/0WGEITKapWXSHyUHnvxaLwV/Q=;
 b=nIA8dbWfi2akRuNs86YD9/n8NQOWnUL81TEWfxwQ4H4KfEI21HQkiwnl
 TXbj+FT8CLIrGhcqGuHSafqrgA50Icq97OlRw2Ouy+itWtf1CAEFA7BCP
 epocaMPw1+x7BFPc7GBNE9AUErfRiUp5aVHyrucoCdMNq5mcgS8UCBiEd
 Hf44hrQSstcZvZzPPz8zmHNUUkOXycwg75cByhQo5DHdmmvHWb2ff4UOL
 hQVFntcF1JdiyOcy6703mK4gUdauxXAfzoa8ai3yZH47EKUuANLJF3rEm
 /yMNxWPhyG1yr5ESMPiyCDGcvOs6wp+NNq9G7rDmyj74ExdT4tqVw3Vvn Q==;
X-CSE-ConnectionGUID: Ve6dC18DRw2nr2iWAGW6Ag==
X-CSE-MsgGUID: 4pg92deLRSq+JbjtdRZrTQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11249"; a="41504422"
X-IronPort-AV: E=Sophos;i="6.12,136,1728975600"; d="scan'208";a="41504422"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2024 13:37:11 -0800
X-CSE-ConnectionGUID: p/JskEZjSVCN9BtM7vu/0Q==
X-CSE-MsgGUID: bEzEGBqPRkGji6N8iMU89w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,136,1728975600"; d="scan'208";a="85171088"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.233])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2024 13:37:10 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, Vinod Govindapillai <vinod.govindapillai@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: [CI v2 v2 03/15] drm/i915/display: convert HAS_4TILE() to struct
 intel_display
Date: Thu,  7 Nov 2024 23:36:37 +0200
Message-Id: <5372b5551603a2158447869809a01369b500d6fb.1731015334.git.jani.nikula@intel.com>
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
index 5a8a8e3379af..34c52680d589 100644
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

