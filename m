Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3159A9D4BDF
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Nov 2024 12:27:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C721110E2E5;
	Thu, 21 Nov 2024 11:27:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZidzfOkG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7CD1410E1BB;
 Thu, 21 Nov 2024 11:27:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732188474; x=1763724474;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=CqGE3GjpjoaZK9EdhngGRIIO7lc5TrTCdZ8nhlwI530=;
 b=ZidzfOkGMnYPDRmXvW0rSld1+v2Tg/tGA16O/uuFfTDOU1PhQl6TfSQg
 ByUx2Ja7qG3lV2Y9NOScjLLdqNGsOPp4R54mmHizk0r4ygjGq4VlAXrso
 Whb9idohAlXXPK5+P/SOXRFaHdzPM+Evo0MOI0gVkz7YURUpL2EVWtcgA
 5Gfn/cBcazpLspD9erlX9x6drDJZZGtlicgxrRL2jLdF41lJMeHRIj23R
 sbYNPIOMHJLBIN1wURXNjj8y7g7oSeBaBhV4bc6aTlOddYO89I2V1S1gE
 TtV3HZzshxRv1ds8VfvoL80weCSR1PsnUTyR6hX4WzRg9V5XglW4U99QL Q==;
X-CSE-ConnectionGUID: FbbIQFX3S5qmaqJ4mVt/CQ==
X-CSE-MsgGUID: tQKKS9xATtumabIxPx4wiw==
X-IronPort-AV: E=McAfee;i="6700,10204,11262"; a="49821039"
X-IronPort-AV: E=Sophos;i="6.12,172,1728975600"; d="scan'208";a="49821039"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2024 03:27:53 -0800
X-CSE-ConnectionGUID: kmw+HcvkTXWqSt4MRkNiug==
X-CSE-MsgGUID: KhvSfXLhS9G5AwKLNT+ckA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,172,1728975600"; d="scan'208";a="90165778"
Received: from vgovind2-mobl3.fi.intel.com ([10.237.66.37])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2024 03:27:51 -0800
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, jani.nikula@intel.com,
 ville.syrjala@intel.com, jani.saarinen@intel.com
Subject: [PATCH v2 2/3] drm/i915/display: update to relative data rate handling
Date: Thu, 21 Nov 2024 13:27:25 +0200
Message-Id: <20241121112726.510220-3-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241121112726.510220-1-vinod.govindapillai@intel.com>
References: <20241121112726.510220-1-vinod.govindapillai@intel.com>
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

Move the relative data rate handling to the skl_watermarks.c
where other similar functions are implemented. Also get rid of
use_min_ddb() and use use_minimal_wm0() instead to decide whether
the relative data rate can be returned as 0

Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
---
 .../gpu/drm/i915/display/intel_atomic_plane.c | 27 +++++--------------
 drivers/gpu/drm/i915/display/skl_watermark.c  | 16 +++++++++++
 drivers/gpu/drm/i915/display/skl_watermark.h  |  4 +++
 3 files changed, 26 insertions(+), 21 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
index d89630b2d5c1..162bd20632cd 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
@@ -207,17 +207,6 @@ unsigned int intel_plane_data_rate(const struct intel_crtc_state *crtc_state,
 		fb->format->cpp[color_plane];
 }
 
-static bool
-use_min_ddb(const struct intel_crtc_state *crtc_state,
-	    struct intel_plane *plane)
-{
-	struct drm_i915_private *i915 = to_i915(plane->base.dev);
-
-	return DISPLAY_VER(i915) >= 13 &&
-	       crtc_state->uapi.async_flip &&
-	       plane->async_flip;
-}
-
 static unsigned int
 intel_plane_relative_data_rate(const struct intel_crtc_state *crtc_state,
 			       const struct intel_plane_state *plane_state,
@@ -225,8 +214,8 @@ intel_plane_relative_data_rate(const struct intel_crtc_state *crtc_state,
 {
 	struct intel_plane *plane = to_intel_plane(plane_state->uapi.plane);
 	const struct drm_framebuffer *fb = plane_state->hw.fb;
-	int width, height;
 	unsigned int rel_data_rate;
+	int width, height;
 
 	if (plane->id == PLANE_CURSOR)
 		return 0;
@@ -234,14 +223,6 @@ intel_plane_relative_data_rate(const struct intel_crtc_state *crtc_state,
 	if (!plane_state->uapi.visible)
 		return 0;
 
-	/*
-	 * We calculate extra ddb based on ratio plane rate/total data rate
-	 * in case, in some cases we should not allocate extra ddb for the plane,
-	 * so do not count its data rate, if this is the case.
-	 */
-	if (use_min_ddb(crtc_state, plane))
-		return 0;
-
 	/*
 	 * Src coordinates are already rotated by 270 degrees for
 	 * the 90/270 degree plane rotation cases (to match the
@@ -256,7 +237,11 @@ intel_plane_relative_data_rate(const struct intel_crtc_state *crtc_state,
 		height /= 2;
 	}
 
-	rel_data_rate = width * height * fb->format->cpp[color_plane];
+	rel_data_rate =
+		skl_plane_relative_data_rate(crtc_state, plane, width, height,
+					     fb->format->cpp[color_plane]);
+	if (!rel_data_rate)
+		return 0;
 
 	return intel_adjusted_rate(&plane_state->uapi.src,
 				   &plane_state->uapi.dst,
diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 7c1c491c2fe0..23ed989f01dc 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -1383,6 +1383,22 @@ use_minimal_wm0_only(const struct intel_crtc_state *crtc_state,
 	       plane->async_flip;
 }
 
+unsigned int
+skl_plane_relative_data_rate(const struct intel_crtc_state *crtc_state,
+			     struct intel_plane *plane, int width, int height,
+			     int cpp)
+{
+	/*
+	 * We calculate extra ddb based on ratio plane rate/total data rate
+	 * in case, in some cases we should not allocate extra ddb for the plane,
+	 * so do not count its data rate, if this is the case.
+	 */
+	if (use_minimal_wm0_only(crtc_state, plane))
+		return 0;
+
+	return width * height * cpp;
+}
+
 static u64
 skl_total_relative_data_rate(const struct intel_crtc_state *crtc_state)
 {
diff --git a/drivers/gpu/drm/i915/display/skl_watermark.h b/drivers/gpu/drm/i915/display/skl_watermark.h
index e73baec94873..e79eee80e66f 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.h
+++ b/drivers/gpu/drm/i915/display/skl_watermark.h
@@ -18,6 +18,7 @@ struct intel_bw_state;
 struct intel_crtc;
 struct intel_crtc_state;
 struct intel_plane;
+struct intel_plane_state;
 struct skl_pipe_wm;
 struct skl_wm_level;
 
@@ -53,6 +54,9 @@ const struct skl_wm_level *skl_plane_wm_level(const struct skl_pipe_wm *pipe_wm,
 					      int level);
 const struct skl_wm_level *skl_plane_trans_wm(const struct skl_pipe_wm *pipe_wm,
 					      enum plane_id plane_id);
+unsigned int skl_plane_relative_data_rate(const struct intel_crtc_state *crtc_state,
+					  struct intel_plane *plane, int width,
+					  int height, int cpp);
 
 struct intel_dbuf_state {
 	struct intel_global_state base;
-- 
2.34.1

