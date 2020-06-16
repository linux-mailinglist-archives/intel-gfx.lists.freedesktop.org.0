Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3710B1FBBD2
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2020 18:34:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D88F6E84A;
	Tue, 16 Jun 2020 16:34:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0E3A16E84A
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Jun 2020 16:34:17 +0000 (UTC)
IronPort-SDR: EWy7OwPEafFmfg0cGfHzYkVhbDObCw5+oDkmcExrfMu2s3yLRegdli8FmLg2pcI9xYr90L0suC
 LqqNDy4G7GOQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2020 09:34:16 -0700
IronPort-SDR: 4MzzWBFXu4WAeROaSGXRfR9OSY6dYNTD9QEEjvKZUzYVt0rLTFy/uVUdjCJ9v4S+FNO5LNlk2B
 zhxmTHdM48Ng==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,518,1583222400"; d="scan'208";a="449901457"
Received: from rerandal-mobl.amr.corp.intel.com (HELO msatwood-mobl.intel.com)
 ([10.254.42.88])
 by orsmga005.jf.intel.com with ESMTP; 16 Jun 2020 09:34:07 -0700
From: Matt Atwood <matthew.s.atwood@intel.com>
To: intel-gfx@lists.freedesktop.org,
	aditya.swarup@intel.com
Date: Tue, 16 Jun 2020 09:34:06 -0700
Message-Id: <20200616163406.27387-1-matthew.s.atwood@intel.com>
X-Mailer: git-send-email 2.21.3
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Apply Wa_14011264657:gen11+
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Add minimum width to planes, variable with specific formats, for gen11+.

Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 55 +++++++++++++++++---
 1 file changed, 47 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 7457813ef273..d4fdad6cb3b1 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -3760,6 +3760,45 @@ static int glk_max_plane_width(const struct drm_framebuffer *fb,
 	}
 }
 
+static int icl_min_plane_width(struct drm_i915_private *dev_priv,
+				 const struct drm_framebuffer *fb)
+{
+	/* Wa_14011264657, Wa_14011050563 */
+	switch (fb->format->format) {
+	case DRM_FORMAT_C8:
+		return 18;
+	case DRM_FORMAT_RGB565:
+		return 10;
+	case DRM_FORMAT_XRGB8888:
+	case DRM_FORMAT_XBGR8888:
+	case DRM_FORMAT_ARGB8888:
+	case DRM_FORMAT_ABGR8888:
+	case DRM_FORMAT_XRGB2101010:
+	case DRM_FORMAT_XBGR2101010:
+	case DRM_FORMAT_ARGB2101010:
+	case DRM_FORMAT_ABGR2101010:
+	case DRM_FORMAT_XVYU2101010:
+	case DRM_FORMAT_Y212:
+	case DRM_FORMAT_Y216:
+		return 6;
+	case DRM_FORMAT_NV12:
+		return 20;
+	case DRM_FORMAT_P010:
+	case DRM_FORMAT_P012:
+	case DRM_FORMAT_P016:
+		return 12;
+	case DRM_FORMAT_XRGB16161616F:
+	case DRM_FORMAT_XBGR16161616F:
+	case DRM_FORMAT_ARGB16161616F:
+	case DRM_FORMAT_ABGR16161616F:
+	case DRM_FORMAT_XVYU12_16161616:
+	case DRM_FORMAT_XVYU16161616:
+		return 4;
+	default:
+		return 1;
+	}
+}
+
 static int icl_max_plane_width(const struct drm_framebuffer *fb,
 			       int color_plane,
 			       unsigned int rotation)
@@ -3831,15 +3870,15 @@ static int skl_check_main_surface(struct intel_plane_state *plane_state)
 	int y = plane_state->uapi.src.y1 >> 16;
 	int w = drm_rect_width(&plane_state->uapi.src) >> 16;
 	int h = drm_rect_height(&plane_state->uapi.src) >> 16;
-	int max_width;
-	int max_height;
-	u32 alignment;
-	u32 offset;
+	int max_width, min_width = 1, max_height;
+	u32 alignment, offset;
 	int aux_plane = intel_main_to_aux_plane(fb, 0);
 	u32 aux_offset = plane_state->color_plane[aux_plane].offset;
 
-	if (INTEL_GEN(dev_priv) >= 11)
+	if (INTEL_GEN(dev_priv) >= 11) {
 		max_width = icl_max_plane_width(fb, 0, rotation);
+		min_width = icl_min_plane_width(dev_priv, fb);
+	}
 	else if (INTEL_GEN(dev_priv) >= 10 || IS_GEMINILAKE(dev_priv))
 		max_width = glk_max_plane_width(fb, 0, rotation);
 	else
@@ -3850,10 +3889,10 @@ static int skl_check_main_surface(struct intel_plane_state *plane_state)
 	else
 		max_height = skl_max_plane_height();
 
-	if (w > max_width || h > max_height) {
+	if (w > max_width || w < min_width || h > max_height) {
 		drm_dbg_kms(&dev_priv->drm,
-			    "requested Y/RGB source size %dx%d too big (limit %dx%d)\n",
-			    w, h, max_width, max_height);
+			    "requested Y/RGB source size %dx%d outside limits (min: %dx1 max: %dx%d)\n",
+			    w, h, min_width, max_width, max_height);
 		return -EINVAL;
 	}
 
-- 
2.21.3

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
