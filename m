Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 53ACB8BCE97
	for <lists+intel-gfx@lfdr.de>; Mon,  6 May 2024 14:57:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C0BB10EFEC;
	Mon,  6 May 2024 12:57:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XTfG6Rxl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 237CE10F734;
 Mon,  6 May 2024 12:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715000253; x=1746536253;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=IVvfpwa8VpljKrq5AdBaIbYbpVnbpHnnF2D4WoBYTuo=;
 b=XTfG6Rxly46XFnFZfTfONIe5YB74WFbeR0NJj0x6x1dMepMa5Fi8X0nJ
 eMX97i6ErPTWUv+A66yqwsty4GPdK8IZKuuaa3zUI/k23NrsmkHLUsoX0
 6ectrR/defXROC17udEYZXsM5MIj4zYEGv8flnpUTtWzKC4GRnmLeEywB
 cgrZd9UYH0bHeOXvtfWWxvg5XY4qxFDzhDDeCa6xYovoxT7L+xNiqRhB6
 2unBm72wwJKRrpa27oybPjaN8C8T4+CBTfCcFGvTx964xOFInNsg4oXG2
 lIVKPs2TPW8KD1YEdwKNJRRDlYXPPtALkTYchvRl1Bb6tQbmTWsGY2i8f A==;
X-CSE-ConnectionGUID: HF2H6C5HSBi/sYI6TtNCLA==
X-CSE-MsgGUID: VXyHlnVVSmO+U3Zoo3aTVQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11065"; a="10865324"
X-IronPort-AV: E=Sophos;i="6.07,258,1708416000"; d="scan'208";a="10865324"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2024 05:57:33 -0700
X-CSE-ConnectionGUID: kljFkLzpTnWuQnwzemzlZQ==
X-CSE-MsgGUID: 1+FLcBADS5mphU+LoBf+fA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,258,1708416000"; d="scan'208";a="28164946"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 06 May 2024 05:57:31 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 06 May 2024 15:57:30 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 4/9] drm/i915: Extract intel_plane_needs_physical()
Date: Mon,  6 May 2024 15:57:13 +0300
Message-ID: <20240506125718.26001-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240506125718.26001-1-ville.syrjala@linux.intel.com>
References: <20240506125718.26001-1-ville.syrjala@linux.intel.com>
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

Pull the "does this plane need a physical address?" check into
a small helper.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_atomic_plane.c | 8 ++++++++
 drivers/gpu/drm/i915/display/intel_atomic_plane.h | 1 +
 drivers/gpu/drm/i915/display/intel_fb_pin.c       | 9 +++------
 3 files changed, 12 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
index b083b985d170..27224ecdc94c 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
@@ -144,6 +144,14 @@ intel_plane_destroy_state(struct drm_plane *plane,
 	kfree(plane_state);
 }
 
+bool intel_plane_needs_physical(struct intel_plane *plane)
+{
+	struct drm_i915_private *i915 = to_i915(plane->base.dev);
+
+	return plane->id == PLANE_CURSOR &&
+		DISPLAY_INFO(i915)->cursor_needs_physical;
+}
+
 unsigned int intel_adjusted_rate(const struct drm_rect *src,
 				 const struct drm_rect *dst,
 				 unsigned int rate)
diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.h b/drivers/gpu/drm/i915/display/intel_atomic_plane.h
index 191dad0efc8e..e7a0699f17c8 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic_plane.h
+++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.h
@@ -66,5 +66,6 @@ int intel_plane_check_src_coordinates(struct intel_plane_state *plane_state);
 void intel_plane_set_invisible(struct intel_crtc_state *crtc_state,
 			       struct intel_plane_state *plane_state);
 void intel_plane_helper_add(struct intel_plane *plane);
+bool intel_plane_needs_physical(struct intel_plane *plane);
 
 #endif /* __INTEL_ATOMIC_PLANE_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_fb_pin.c b/drivers/gpu/drm/i915/display/intel_fb_pin.c
index 2b50c1946c63..5b71d9488184 100644
--- a/drivers/gpu/drm/i915/display/intel_fb_pin.c
+++ b/drivers/gpu/drm/i915/display/intel_fb_pin.c
@@ -11,6 +11,7 @@
 #include "gem/i915_gem_object.h"
 
 #include "i915_drv.h"
+#include "intel_atomic_plane.h"
 #include "intel_display_types.h"
 #include "intel_dpt.h"
 #include "intel_fb.h"
@@ -236,15 +237,11 @@ void intel_unpin_fb_vma(struct i915_vma *vma, unsigned long flags)
 int intel_plane_pin_fb(struct intel_plane_state *plane_state)
 {
 	struct intel_plane *plane = to_intel_plane(plane_state->uapi.plane);
-	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
 	struct drm_framebuffer *fb = plane_state->hw.fb;
 	struct i915_vma *vma;
-	bool phys_cursor =
-		plane->id == PLANE_CURSOR &&
-		DISPLAY_INFO(dev_priv)->cursor_needs_physical;
 
 	if (!intel_fb_uses_dpt(fb)) {
-		vma = intel_pin_and_fence_fb_obj(fb, phys_cursor,
+		vma = intel_pin_and_fence_fb_obj(fb, intel_plane_needs_physical(plane),
 						 &plane_state->view.gtt,
 						 intel_plane_uses_fence(plane_state),
 						 &plane_state->flags);
@@ -259,7 +256,7 @@ int intel_plane_pin_fb(struct intel_plane_state *plane_state)
 		 * will trigger might_sleep() even if it won't actually sleep,
 		 * which is the case when the fb has already been pinned.
 		 */
-		if (phys_cursor)
+		if (intel_plane_needs_physical(plane))
 			plane_state->phys_dma_addr =
 				i915_gem_object_get_dma_address(intel_fb_obj(fb), 0);
 	} else {
-- 
2.43.2

