Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D312424305D
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Aug 2020 23:07:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 423A46E1ED;
	Wed, 12 Aug 2020 21:07:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 56AD16E1ED
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Aug 2020 21:07:08 +0000 (UTC)
IronPort-SDR: vvZtNMX3CKn7vsJhDFzG3V+ilAZbYo3mrOqhhPVuDPuoF1HZ6KB2OHrR4z7a3+/BVXvBezZS6u
 jZMfDCI8MdJQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9711"; a="218408848"
X-IronPort-AV: E=Sophos;i="5.76,305,1592895600"; d="scan'208";a="218408848"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Aug 2020 14:07:04 -0700
IronPort-SDR: wB/3BpKRal6M/XhtvOnmD6CgwW8lIVZa46yfers8H51SexCtY+6aCWZRcsOjX2bZoZY/R6wepC
 BY4xEj5nyoog==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,305,1592895600"; d="scan'208";a="308839295"
Received: from vramriex-mobl1.amr.corp.intel.com (HELO
 msatwood-mobl.intel.com) ([10.212.11.164])
 by orsmga002.jf.intel.com with ESMTP; 12 Aug 2020 14:07:03 -0700
From: Matt Atwood <matthew.s.atwood@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 12 Aug 2020 14:07:02 -0700
Message-Id: <20200812210702.7153-1-matthew.s.atwood@intel.com>
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

Add minimum width to planes, variable with specific formats for gen11+
to reflect recent bspec changes.

Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 54 +++++++++++++++++---
 1 file changed, 46 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 2ddabf92adde..b5ebcff8d56e 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -3762,6 +3762,44 @@ static int glk_max_plane_width(const struct drm_framebuffer *fb,
 	}
 }
 
+static int icl_min_plane_width(const struct drm_framebuffer *fb)
+{
+	/* Wa_14011264657, Wa_14011050563: gen11+ */
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
@@ -3844,15 +3882,15 @@ static int skl_check_main_surface(struct intel_plane_state *plane_state)
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
+		min_width = icl_min_plane_width(fb);
+	}
 	else if (INTEL_GEN(dev_priv) >= 10 || IS_GEMINILAKE(dev_priv))
 		max_width = glk_max_plane_width(fb, 0, rotation);
 	else
@@ -3863,10 +3901,10 @@ static int skl_check_main_surface(struct intel_plane_state *plane_state)
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
