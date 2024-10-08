Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ED967995A1E
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Oct 2024 00:37:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD69C10E605;
	Tue,  8 Oct 2024 22:37:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WRg9fa2x";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BBA0310E287;
 Tue,  8 Oct 2024 22:37:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728427067; x=1759963067;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=X4yFoYG09nBDCVGDiZa3j9lk+3PKGtYPHU6d9kBAYt8=;
 b=WRg9fa2xQBc8P74jkVoeJbKTOYS5fJQkVgw01aI7CXaFMFJJkjsWbqlU
 6SG5xsr+18G5oy3trPwZUdEn9Ssfl/ocjV3lMfdvHmFWPI8flpgelOOCo
 sp6Z+jQntCzCKFgiyBw6Ahj9CGORZcRa+M+PUDJhGE3luOGKmsavOK0k8
 ZQG4+9VBWvcpkAjSatwftL2xR6P0XwT2zWFp/0WD0CV+VYnPNp6GpDGD/
 2PD0fvYZOvO6PLHW4w/6LzXFhH7ZeZoy6aYwY6VXcBpwjNljzKlX2DsHF
 WazAToh2099RDvBDf6+FmTMwosoFsRG1EJBTd5JuAmBQRDEirNwZng3ji w==;
X-CSE-ConnectionGUID: UwQvN7+jRUGhUf61Z3EJrg==
X-CSE-MsgGUID: qX2/x22KTPq+bisS3bNoUA==
X-IronPort-AV: E=McAfee;i="6700,10204,11219"; a="39037282"
X-IronPort-AV: E=Sophos;i="6.11,188,1725346800"; d="scan'208";a="39037282"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2024 15:37:46 -0700
X-CSE-ConnectionGUID: 0+8QxvPDS66j3AlNm/7ksg==
X-CSE-MsgGUID: waNaBbhjSpCpS9rp8s7Lqg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,188,1725346800"; d="scan'208";a="80811832"
Received: from msatwood-mobl.jf.intel.com ([10.24.12.132])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2024 15:37:46 -0700
From: Matt Atwood <matthew.s.atwood@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: Matt Roper <matthew.d.roper@intel.com>,
 Matt Atwood <matthew.s.atwood@intel.com>
Subject: [PATCH 02/10] drm/i915/xe3lpd: Adjust watermark calculations
Date: Tue,  8 Oct 2024 15:37:33 -0700
Message-ID: <20241008223741.82790-3-matthew.s.atwood@intel.com>
X-Mailer: git-send-email 2.45.0
In-Reply-To: <20241008223741.82790-1-matthew.s.atwood@intel.com>
References: <20241008223741.82790-1-matthew.s.atwood@intel.com>
MIME-Version: 1.0
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

From: Matt Roper <matthew.d.roper@intel.com>

Xe3 makes a couple minor tweaks to the watermark algorithm's block count
calculations.

Bspec: 68985
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 18 ++++++++++++------
 1 file changed, 12 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 6e1f04d5ef47..31de33e868df 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -718,7 +718,7 @@ static int skl_compute_wm_params(const struct intel_crtc_state *crtc_state,
 				 int width, const struct drm_format_info *format,
 				 u64 modifier, unsigned int rotation,
 				 u32 plane_pixel_rate, struct skl_wm_params *wp,
-				 int color_plane);
+				 int color_plane, unsigned int pan_x);
 
 static void skl_compute_plane_wm(const struct intel_crtc_state *crtc_state,
 				 struct intel_plane *plane,
@@ -765,7 +765,7 @@ skl_cursor_allocation(const struct intel_crtc_state *crtc_state,
 				    drm_format_info(DRM_FORMAT_ARGB8888),
 				    DRM_FORMAT_MOD_LINEAR,
 				    DRM_MODE_ROTATE_0,
-				    crtc_state->pixel_rate, &wp, 0);
+				    crtc_state->pixel_rate, &wp, 0, 0);
 	drm_WARN_ON(&i915->drm, ret);
 
 	for (level = 0; level < i915->display.wm.num_levels; level++) {
@@ -1742,7 +1742,7 @@ skl_compute_wm_params(const struct intel_crtc_state *crtc_state,
 		      int width, const struct drm_format_info *format,
 		      u64 modifier, unsigned int rotation,
 		      u32 plane_pixel_rate, struct skl_wm_params *wp,
-		      int color_plane)
+		      int color_plane, unsigned int pan_x)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
@@ -1803,7 +1803,9 @@ skl_compute_wm_params(const struct intel_crtc_state *crtc_state,
 					   wp->y_min_scanlines,
 					   wp->dbuf_block_size);
 
-		if (DISPLAY_VER(i915) >= 10)
+		if (DISPLAY_VER(i915) >= 30)
+			interm_pbpl += (pan_x != 0);
+		else if (DISPLAY_VER(i915) >= 10)
 			interm_pbpl++;
 
 		wp->plane_blocks_per_line = div_fixed16(interm_pbpl,
@@ -1845,7 +1847,8 @@ skl_compute_plane_wm_params(const struct intel_crtc_state *crtc_state,
 				     fb->format, fb->modifier,
 				     plane_state->hw.rotation,
 				     intel_plane_pixel_rate(crtc_state, plane_state),
-				     wp, color_plane);
+				     wp, color_plane,
+				     plane_state->uapi.src.x1);
 }
 
 static bool skl_wm_has_lines(struct drm_i915_private *i915, int level)
@@ -1909,7 +1912,10 @@ static void skl_compute_plane_wm(const struct intel_crtc_state *crtc_state,
 		}
 	}
 
-	blocks = fixed16_to_u32_round_up(selected_result) + 1;
+	blocks = fixed16_to_u32_round_up(selected_result);
+	if (DISPLAY_VER(i915) < 30)
+		blocks++;
+
 	/*
 	 * Lets have blocks at minimum equivalent to plane_blocks_per_line
 	 * as there will be at minimum one line for lines configuration. This
-- 
2.45.0

