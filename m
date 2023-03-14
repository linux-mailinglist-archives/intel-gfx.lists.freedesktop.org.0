Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 172146B952E
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Mar 2023 14:03:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 841B410E7D7;
	Tue, 14 Mar 2023 13:03:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3905F10E7D7
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Mar 2023 13:03:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678799004; x=1710335004;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=xw6K145kiEqClPjrcHQA9WO9HWNm+Cbk4uOzWyBQ7AA=;
 b=HJX2e901kfoQnEc3xMXMx/nyBtVWuD/FrqLRLcq3ZT+F/EhZRsBexZym
 LBfQKQzyffvs02sTFs+jj1DChcQw3oLwmeNH3zvKxzTOye0vvWg6EgPGt
 iPB3dVyznX6dKmOCilkXsw+xE0z8rNSJ6li+XslIzQVnms7eeMJ/MBnlS
 b2l8X8nB49pthMTz7V8xLaHjobo4yCxxMVlXpt+JOvrSvw8iZHRMek1T0
 ztUi2fp4Flg4+TJ6YFYxKqssjl3LQSu39LBV6KN76v1dZ+4/cCUFWw3KC
 rXZx2H2n5r3e/Dxna1aV8xaRuoonZ6f5SCGV655Z4QL4bmxjp5G1cLyJU w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10648"; a="365080001"
X-IronPort-AV: E=Sophos;i="5.98,259,1673942400"; d="scan'208";a="365080001"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2023 06:03:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10648"; a="672323885"
X-IronPort-AV: E=Sophos;i="5.98,259,1673942400"; d="scan'208";a="672323885"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga007.jf.intel.com with SMTP; 14 Mar 2023 06:03:21 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 14 Mar 2023 15:03:20 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 14 Mar 2023 15:02:54 +0200
Message-Id: <20230314130255.23273-9-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230314130255.23273-1-ville.syrjala@linux.intel.com>
References: <20230314130255.23273-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 8/9] drm/i915: Relocate
 intel_plane_check_src_coordinates()
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Move intel_plane_check_src_coordinates() from the pre-skl sprite
plane specific code to a more suitable place for common plane code.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../gpu/drm/i915/display/intel_atomic_plane.c | 60 ++++++++++++++++++-
 .../gpu/drm/i915/display/intel_atomic_plane.h |  1 +
 drivers/gpu/drm/i915/display/intel_cursor.c   |  1 -
 drivers/gpu/drm/i915/display/intel_ddi.c      |  1 -
 drivers/gpu/drm/i915/display/intel_display.c  |  1 -
 drivers/gpu/drm/i915/display/intel_sprite.c   | 58 ------------------
 .../drm/i915/display/skl_universal_plane.c    |  1 -
 7 files changed, 60 insertions(+), 63 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
index 719a60e278f3..40de9f0f171b 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
@@ -32,6 +32,7 @@
  */
 
 #include <drm/drm_atomic_helper.h>
+#include <drm/drm_blend.h>
 #include <drm/drm_fourcc.h>
 
 #include "i915_config.h"
@@ -42,7 +43,6 @@
 #include "intel_display_types.h"
 #include "intel_fb.h"
 #include "intel_fb_pin.h"
-#include "intel_sprite.h"
 #include "skl_scaler.h"
 #include "skl_watermark.h"
 
@@ -940,6 +940,64 @@ int intel_atomic_plane_check_clipping(struct intel_plane_state *plane_state,
 	return 0;
 }
 
+int intel_plane_check_src_coordinates(struct intel_plane_state *plane_state)
+{
+	struct drm_i915_private *i915 = to_i915(plane_state->uapi.plane->dev);
+	const struct drm_framebuffer *fb = plane_state->hw.fb;
+	struct drm_rect *src = &plane_state->uapi.src;
+	u32 src_x, src_y, src_w, src_h, hsub, vsub;
+	bool rotated = drm_rotation_90_or_270(plane_state->hw.rotation);
+
+	/*
+	 * FIXME hsub/vsub vs. block size is a mess. Pre-tgl CCS
+	 * abuses hsub/vsub so we can't use them here. But as they
+	 * are limited to 32bpp RGB formats we don't actually need
+	 * to check anything.
+	 */
+	if (fb->modifier == I915_FORMAT_MOD_Y_TILED_CCS ||
+	    fb->modifier == I915_FORMAT_MOD_Yf_TILED_CCS)
+		return 0;
+
+	/*
+	 * Hardware doesn't handle subpixel coordinates.
+	 * Adjust to (macro)pixel boundary, but be careful not to
+	 * increase the source viewport size, because that could
+	 * push the downscaling factor out of bounds.
+	 */
+	src_x = src->x1 >> 16;
+	src_w = drm_rect_width(src) >> 16;
+	src_y = src->y1 >> 16;
+	src_h = drm_rect_height(src) >> 16;
+
+	drm_rect_init(src, src_x << 16, src_y << 16,
+		      src_w << 16, src_h << 16);
+
+	if (fb->format->format == DRM_FORMAT_RGB565 && rotated) {
+		hsub = 2;
+		vsub = 2;
+	} else {
+		hsub = fb->format->hsub;
+		vsub = fb->format->vsub;
+	}
+
+	if (rotated)
+		hsub = vsub = max(hsub, vsub);
+
+	if (src_x % hsub || src_w % hsub) {
+		drm_dbg_kms(&i915->drm, "src x/w (%u, %u) must be a multiple of %u (rotated: %s)\n",
+			    src_x, src_w, hsub, str_yes_no(rotated));
+		return -EINVAL;
+	}
+
+	if (src_y % vsub || src_h % vsub) {
+		drm_dbg_kms(&i915->drm, "src y/h (%u, %u) must be a multiple of %u (rotated: %s)\n",
+			    src_y, src_h, vsub, str_yes_no(rotated));
+		return -EINVAL;
+	}
+
+	return 0;
+}
+
 /**
  * intel_prepare_plane_fb - Prepare fb for usage on plane
  * @_plane: drm plane to prepare for
diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.h b/drivers/gpu/drm/i915/display/intel_atomic_plane.h
index 74b6d3b169a7..191dad0efc8e 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic_plane.h
+++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.h
@@ -62,6 +62,7 @@ int intel_atomic_plane_check_clipping(struct intel_plane_state *plane_state,
 				      struct intel_crtc_state *crtc_state,
 				      int min_scale, int max_scale,
 				      bool can_position);
+int intel_plane_check_src_coordinates(struct intel_plane_state *plane_state);
 void intel_plane_set_invisible(struct intel_crtc_state *crtc_state,
 			       struct intel_plane_state *plane_state);
 void intel_plane_helper_add(struct intel_plane *plane);
diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c b/drivers/gpu/drm/i915/display/intel_cursor.c
index c3173c0c2068..31bef0427377 100644
--- a/drivers/gpu/drm/i915/display/intel_cursor.c
+++ b/drivers/gpu/drm/i915/display/intel_cursor.c
@@ -21,7 +21,6 @@
 #include "intel_fb_pin.h"
 #include "intel_frontbuffer.h"
 #include "intel_psr.h"
-#include "intel_sprite.h"
 #include "skl_watermark.h"
 
 /* Cursor formats */
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 0950bcfea4c0..fe8d6f3e9e2f 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -65,7 +65,6 @@
 #include "intel_psr.h"
 #include "intel_quirks.h"
 #include "intel_snps_phy.h"
-#include "intel_sprite.h"
 #include "intel_tc.h"
 #include "intel_vdsc.h"
 #include "intel_vdsc_regs.h"
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 7b371d2746b5..8a6884571843 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -111,7 +111,6 @@
 #include "intel_quirks.h"
 #include "intel_sdvo.h"
 #include "intel_snps_phy.h"
-#include "intel_sprite.h"
 #include "intel_tc.h"
 #include "intel_tv.h"
 #include "intel_vblank.h"
diff --git a/drivers/gpu/drm/i915/display/intel_sprite.c b/drivers/gpu/drm/i915/display/intel_sprite.c
index a16e56a60c30..3563fecee838 100644
--- a/drivers/gpu/drm/i915/display/intel_sprite.c
+++ b/drivers/gpu/drm/i915/display/intel_sprite.c
@@ -54,64 +54,6 @@
 #include "intel_sprite.h"
 #include "intel_vrr.h"
 
-int intel_plane_check_src_coordinates(struct intel_plane_state *plane_state)
-{
-	struct drm_i915_private *i915 = to_i915(plane_state->uapi.plane->dev);
-	const struct drm_framebuffer *fb = plane_state->hw.fb;
-	struct drm_rect *src = &plane_state->uapi.src;
-	u32 src_x, src_y, src_w, src_h, hsub, vsub;
-	bool rotated = drm_rotation_90_or_270(plane_state->hw.rotation);
-
-	/*
-	 * FIXME hsub/vsub vs. block size is a mess. Pre-tgl CCS
-	 * abuses hsub/vsub so we can't use them here. But as they
-	 * are limited to 32bpp RGB formats we don't actually need
-	 * to check anything.
-	 */
-	if (fb->modifier == I915_FORMAT_MOD_Y_TILED_CCS ||
-	    fb->modifier == I915_FORMAT_MOD_Yf_TILED_CCS)
-		return 0;
-
-	/*
-	 * Hardware doesn't handle subpixel coordinates.
-	 * Adjust to (macro)pixel boundary, but be careful not to
-	 * increase the source viewport size, because that could
-	 * push the downscaling factor out of bounds.
-	 */
-	src_x = src->x1 >> 16;
-	src_w = drm_rect_width(src) >> 16;
-	src_y = src->y1 >> 16;
-	src_h = drm_rect_height(src) >> 16;
-
-	drm_rect_init(src, src_x << 16, src_y << 16,
-		      src_w << 16, src_h << 16);
-
-	if (fb->format->format == DRM_FORMAT_RGB565 && rotated) {
-		hsub = 2;
-		vsub = 2;
-	} else {
-		hsub = fb->format->hsub;
-		vsub = fb->format->vsub;
-	}
-
-	if (rotated)
-		hsub = vsub = max(hsub, vsub);
-
-	if (src_x % hsub || src_w % hsub) {
-		drm_dbg_kms(&i915->drm, "src x/w (%u, %u) must be a multiple of %u (rotated: %s)\n",
-			    src_x, src_w, hsub, str_yes_no(rotated));
-		return -EINVAL;
-	}
-
-	if (src_y % vsub || src_h % vsub) {
-		drm_dbg_kms(&i915->drm, "src y/h (%u, %u) must be a multiple of %u (rotated: %s)\n",
-			    src_y, src_h, vsub, str_yes_no(rotated));
-		return -EINVAL;
-	}
-
-	return 0;
-}
-
 static void i9xx_plane_linear_gamma(u16 gamma[8])
 {
 	/* The points are not evenly spaced. */
diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index ce55b8f09301..fd0065a46ec5 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -17,7 +17,6 @@
 #include "intel_fb.h"
 #include "intel_fbc.h"
 #include "intel_psr.h"
-#include "intel_sprite.h"
 #include "skl_scaler.h"
 #include "skl_universal_plane.h"
 #include "skl_watermark.h"
-- 
2.39.2

