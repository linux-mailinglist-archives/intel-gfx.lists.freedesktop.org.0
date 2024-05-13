Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 648148C469B
	for <lists+intel-gfx@lfdr.de>; Mon, 13 May 2024 20:00:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A7D310E8F1;
	Mon, 13 May 2024 17:59:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QnZKRLjE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E9C5D10E8F1;
 Mon, 13 May 2024 17:59:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715623197; x=1747159197;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ywNtwlUN9NNzMxbXlIUg6JX4TnKwYmT1l8MfIh6n9xY=;
 b=QnZKRLjEtmUpOdxWdluL7JD24OYHGa6JELNBGH+kif7Uvvd2vhdgttxs
 RJfS7ETWKATTQO9P8mcBn+ZhUxvRE8DXErNGv9rGKEWKZ+3Vi++TPLBMr
 B7f9k8hj0t4V/RLJfUHUpJKkU2re1rOfi6FYW+xq7RRywGrItPh2RKjYq
 F0+K5nmT+Zi7kY8vtCnw9MTSxTceS4v+b+FQ5hY+CJffXK+YE5L8RC3K+
 Mxn8IOPgokdFD1r2APjiWdb9fSctjUrzRZ5AmZ3Rny31Y8bGOFasAoVC8
 YOYsP00koQkWSTLfIIPtqYEsj/ZE4buKrtviHLEGFPkN8/5xa0EGPFWLU A==;
X-CSE-ConnectionGUID: HBlViQ93S42HX9R+if0nFg==
X-CSE-MsgGUID: S3XRA0tHQOqLCiNyK/5j2w==
X-IronPort-AV: E=McAfee;i="6600,9927,11072"; a="14517964"
X-IronPort-AV: E=Sophos;i="6.08,159,1712646000"; d="scan'208";a="14517964"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2024 10:59:56 -0700
X-CSE-ConnectionGUID: xh7D8tDlS9SUE0DkvxQ6ng==
X-CSE-MsgGUID: N4S6xU/XTw2Qd583g/6r7w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,159,1712646000"; d="scan'208";a="30395187"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 13 May 2024 10:59:55 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 13 May 2024 20:59:54 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: dri-devel@lists.freedesktop.org
Subject: [PATCH 4/9] drm/i915: Introduce fb->min_alignment
Date: Mon, 13 May 2024 20:59:37 +0300
Message-ID: <20240513175942.12910-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240513175942.12910-1-ville.syrjala@linux.intel.com>
References: <20240513175942.12910-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Different planes could have different alignment requirements
even for the same format/modifier. Collect the alignment
requirements across all planes capable of scanning out the
fb such that the alignment used when pinning the normal ggtt
view is satisfactory to all those planes.

When pinning per-plane views we only have to satisfy the
alignment requirements of the specific plane.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../drm/i915/display/intel_display_types.h    |  2 ++
 drivers/gpu/drm/i915/display/intel_fb.c       | 23 ++++++++++++++++
 drivers/gpu/drm/i915/display/intel_fb_pin.c   | 27 +++++++++++++++++--
 drivers/gpu/drm/i915/display/intel_fbdev.c    | 18 +------------
 4 files changed, 51 insertions(+), 19 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 40d6e5f4c350..58bb65832adf 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -145,6 +145,8 @@ struct intel_framebuffer {
 	};
 
 	struct i915_address_space *dpt_vm;
+
+	unsigned int min_alignment;
 };
 
 enum intel_hotplug_state {
diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
index 3f3a9cd534f4..c5bae05cbbc3 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fb.c
@@ -10,6 +10,7 @@
 #include <linux/dma-resv.h>
 
 #include "i915_drv.h"
+#include "intel_atomic_plane.h"
 #include "intel_display.h"
 #include "intel_display_types.h"
 #include "intel_dpt.h"
@@ -1616,6 +1617,26 @@ bool intel_fb_supports_90_270_rotation(const struct intel_framebuffer *fb)
 	       fb->base.modifier == I915_FORMAT_MOD_Yf_TILED;
 }
 
+static unsigned int intel_fb_min_alignment(const struct drm_framebuffer *fb)
+{
+	struct drm_i915_private *i915 = to_i915(fb->dev);
+	struct intel_plane *plane;
+	unsigned int min_alignment = 0;
+
+	for_each_intel_plane(&i915->drm, plane) {
+		if (!drm_plane_has_format(&plane->base, fb->format->format, fb->modifier))
+			continue;
+
+		if (intel_plane_needs_physical(plane))
+			continue;
+
+		min_alignment = max(min_alignment,
+				    plane->min_alignment(plane, fb, 0));
+	}
+
+	return min_alignment;
+}
+
 int intel_fill_fb_info(struct drm_i915_private *i915, struct intel_framebuffer *fb)
 {
 	struct drm_i915_gem_object *obj = intel_fb_obj(&fb->base);
@@ -1698,6 +1719,8 @@ int intel_fill_fb_info(struct drm_i915_private *i915, struct intel_framebuffer *
 		return -EINVAL;
 	}
 
+	fb->min_alignment = intel_fb_min_alignment(&fb->base);
+
 	return 0;
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_fb_pin.c b/drivers/gpu/drm/i915/display/intel_fb_pin.c
index 9b0f1ea41b70..1ae02de906f5 100644
--- a/drivers/gpu/drm/i915/display/intel_fb_pin.c
+++ b/drivers/gpu/drm/i915/display/intel_fb_pin.c
@@ -230,13 +230,36 @@ void intel_fb_unpin_vma(struct i915_vma *vma, unsigned long flags)
 	i915_vma_put(vma);
 }
 
+static bool gtt_view_is_per_plane(const struct intel_plane_state *plane_state)
+{
+	const struct intel_framebuffer *fb = to_intel_framebuffer(plane_state->hw.fb);
+
+	if (plane_state->view.gtt.type == I915_GTT_VIEW_REMAPPED &&
+	    intel_fb_needs_pot_stride_remap(fb))
+		return false;
+
+	return plane_state->view.gtt.type != I915_GTT_VIEW_NORMAL;
+}
+
 static unsigned int
 intel_plane_fb_min_alignment(const struct intel_plane_state *plane_state)
 {
 	struct intel_plane *plane = to_intel_plane(plane_state->uapi.plane);
-	const struct drm_framebuffer *fb = plane_state->hw.fb;
+	const struct intel_framebuffer *fb = to_intel_framebuffer(plane_state->hw.fb);
 
-	return plane->min_alignment(plane, fb, 0);
+	/*
+	 * Only use plane specific alignment for binding
+	 * a per-plane gtt view (remapped or rotated),
+	 * otherwise make sure the alignment is suitable
+	 * for all planes.
+	 */
+	if (!gtt_view_is_per_plane(plane_state))
+		return fb->min_alignment;
+
+	if (intel_plane_needs_physical(plane))
+		return 0;
+
+	return plane->min_alignment(plane, &fb->base, 0);
 }
 
 static unsigned int
diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.c b/drivers/gpu/drm/i915/display/intel_fbdev.c
index ff685aebbd1a..124aac172acb 100644
--- a/drivers/gpu/drm/i915/display/intel_fbdev.c
+++ b/drivers/gpu/drm/i915/display/intel_fbdev.c
@@ -46,7 +46,6 @@
 #include "gem/i915_gem_mman.h"
 
 #include "i915_drv.h"
-#include "intel_crtc.h"
 #include "intel_display_types.h"
 #include "intel_fb.h"
 #include "intel_fb_pin.h"
@@ -172,21 +171,6 @@ static const struct fb_ops intelfb_ops = {
 
 __diag_pop();
 
-static unsigned int intel_fbdev_min_alignment(const struct drm_framebuffer *fb)
-{
-	struct drm_i915_private *i915 = to_i915(fb->dev);
-	struct intel_plane *plane;
-	struct intel_crtc *crtc;
-
-	crtc = intel_first_crtc(i915);
-	if (!crtc)
-		return 0;
-
-	plane = to_intel_plane(crtc->base.primary);
-
-	return plane->min_alignment(plane, fb, 0);
-}
-
 static int intelfb_create(struct drm_fb_helper *helper,
 			  struct drm_fb_helper_surface_size *sizes)
 {
@@ -244,7 +228,7 @@ static int intelfb_create(struct drm_fb_helper *helper,
 	 * BIOS is suitable for own access.
 	 */
 	vma = intel_fb_pin_to_ggtt(&fb->base, &view,
-				   intel_fbdev_min_alignment(&fb->base), 0,
+				   fb->min_alignment, 0,
 				   false, &flags);
 	if (IS_ERR(vma)) {
 		ret = PTR_ERR(vma);
-- 
2.43.2

