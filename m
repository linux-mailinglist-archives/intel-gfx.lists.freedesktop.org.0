Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E565CAFD7A
	for <lists+intel-gfx@lfdr.de>; Tue, 09 Dec 2025 13:00:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 83D9A10E086;
	Tue,  9 Dec 2025 12:00:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=igalia.com header.i=@igalia.com header.b="Mi+A3qIx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fanzine2.igalia.com (fanzine2.igalia.com [213.97.179.56])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EC5CC10E086;
 Tue,  9 Dec 2025 12:00:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com; 
 s=20170329;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=tfJlFpXrx8uZTFsLV7jzG9dwjgvhwiYY7C789DLX5pk=; b=Mi+A3qIxt3y0MH2KLf5BbtvcZQ
 GDMat6SHUepoeiFr2FsfFmdgFW7B34+RMe987iPWBvkW/uDM9zUZ5OWVU1cLN/BHSUNQau3jPOTxG
 QyMlXmZA8uIraS+e3+gO8Gr0axP8WSILRUtYOUxz2dhp+FnTUKOe+EeRl9VRgtHeJouG8KKKSm1NB
 8XNktyuq6RLv+dR6pjlyvPcaj9q/eFH8QW1eBTIV2LYFEVKMzelZEcLDopYIJ/sozis3YeY72rGf6
 aeR+B8W/WnduqQLkuXOmDQtdtsdJLqEm8NrS/4Bc7LowQzYOJ/baCM+ORqHwEnmMx/e2qDT8dp0zn
 t5Iht2Yw==;
Received: from [86.33.28.86] (helo=localhost)
 by fanzine2.igalia.com with utf8esmtpsa 
 (Cipher TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256) (Exim)
 id 1vSwOS-00AUR4-V1; Tue, 09 Dec 2025 13:00:37 +0100
From: Tvrtko Ursulin <tursulin@igalia.com>
To: intel-gfx@lists.freedesktop.org
Cc: kernel-dev@igalia.com, Tvrtko Ursulin <tvrtko.ursulin@igalia.com>,
 intel-xe@lists.freedesktop.org, Jani Nikula <jani.nikula@intel.com>,
 =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>,
 Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>
Subject: [PATCH] drm/i915/display: Detect AuxCCS support via display parent
 interface
Date: Tue,  9 Dec 2025 13:00:34 +0100
Message-ID: <20251209120034.9143-1-tursulin@igalia.com>
X-Mailer: git-send-email 2.52.0
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

From: Tvrtko Ursulin <tvrtko.ursulin@igalia.com>

Whether AuxCCS can be properly supported depends on the support both from
the display side and non-display side of the driver.

Let us therefore allow for the non-display part to be queried via the
display parent interface.

The new interface replaces the HAS_AUX_CCS macro and we also remove the
FIXME from skl_universal_plane_create since now the xe will not advertise
the AuxCCS caps to start with so they do not need to be removed after
enumeration.

Also, by removing this build specific FIXME we come a step closer to fully
de-coupling display and non-display.

The existing HAS_AUX_CCS gets renamed to HAS_AUX_DIST since it is still
required for determining the need for PLANE_AUX_DIST programming.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@igalia.com>
References: cf48bddd31de ("drm/i915/display: Disable AuxCCS framebuffers if built for Xe")
Cc: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@intel.com>
Cc: José Roberto de Souza <jose.souza@intel.com>
Cc: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Acked-by: Jani Nikula <jani.nikula@intel.com> # v1
---
v2:
 * Rename HAS_AUX_CCS to HAS_AUX_DIST and keep using for PLANE_AUX_DIST
   programming. (Ville)
---
 drivers/gpu/drm/i915/display/intel_display_device.h |  2 +-
 drivers/gpu/drm/i915/display/intel_fb.c             |  3 ++-
 drivers/gpu/drm/i915/display/intel_parent.c         |  5 +++++
 drivers/gpu/drm/i915/display/intel_parent.h         |  2 ++
 drivers/gpu/drm/i915/display/skl_universal_plane.c  |  9 ++-------
 drivers/gpu/drm/i915/i915_driver.c                  | 10 ++++++++++
 include/drm/intel/display_parent_interface.h        |  3 +++
 7 files changed, 25 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
index 11c2b2883f35..50b2e9ae2c18 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.h
+++ b/drivers/gpu/drm/i915/display/intel_display_device.h
@@ -149,7 +149,7 @@ struct intel_display_platforms {
 #define HAS_4TILE(__display)		((__display)->platform.dg2 || DISPLAY_VER(__display) >= 14)
 #define HAS_ASYNC_FLIPS(__display)	(DISPLAY_VER(__display) >= 5)
 #define HAS_AS_SDP(__display)		(DISPLAY_VER(__display) >= 13)
-#define HAS_AUX_CCS(__display)		(IS_DISPLAY_VER(__display, 9, 12) || (__display)->platform.alderlake_p || (__display)->platform.meteorlake)
+#define HAS_AUX_DIST(__display)		(IS_DISPLAY_VER(__display, 9, 12) || (__display)->platform.alderlake_p || (__display)->platform.meteorlake)
 #define HAS_BIGJOINER(__display)	(DISPLAY_VER(__display) >= 11 && HAS_DSC(__display))
 #define HAS_CASF(__display)		(DISPLAY_VER(__display) >= 20)
 #define HAS_CDCLK_CRAWL(__display)	(DISPLAY_INFO(__display)->has_cdclk_crawl)
diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
index b34b4961fe1c..5b8e02ca2faf 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fb.c
@@ -21,6 +21,7 @@
 #include "intel_fb_bo.h"
 #include "intel_frontbuffer.h"
 #include "intel_panic.h"
+#include "intel_parent.h"
 #include "intel_plane.h"
 
 #define check_array_bounds(display, a, i) drm_WARN_ON((display)->drm, (i) >= ARRAY_SIZE(a))
@@ -558,7 +559,7 @@ static bool plane_has_modifier(struct intel_display *display,
 	 * where supported.
 	 */
 	if (intel_fb_is_ccs_modifier(md->modifier) &&
-	    HAS_AUX_CCS(display) != !!md->ccs.packed_aux_planes)
+	    intel_parent_has_auxccs(display) != !!md->ccs.packed_aux_planes)
 		return false;
 
 	if (md->modifier == I915_FORMAT_MOD_4_TILED_BMG_CCS &&
diff --git a/drivers/gpu/drm/i915/display/intel_parent.c b/drivers/gpu/drm/i915/display/intel_parent.c
index 2ea310cc3509..7a55def19836 100644
--- a/drivers/gpu/drm/i915/display/intel_parent.c
+++ b/drivers/gpu/drm/i915/display/intel_parent.c
@@ -94,3 +94,8 @@ void intel_parent_fence_priority_display(struct intel_display *display, struct d
 	if (display->parent->fence_priority_display)
 		display->parent->fence_priority_display(fence);
 }
+
+bool intel_parent_has_auxccs(struct intel_display *display)
+{
+	return display->parent->has_auxccs && display->parent->has_auxccs(display->drm);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_parent.h b/drivers/gpu/drm/i915/display/intel_parent.h
index 8f91a6f75c53..f34ee81ed7a1 100644
--- a/drivers/gpu/drm/i915/display/intel_parent.h
+++ b/drivers/gpu/drm/i915/display/intel_parent.h
@@ -33,4 +33,6 @@ bool intel_parent_has_fenced_regions(struct intel_display *display);
 
 void intel_parent_fence_priority_display(struct intel_display *display, struct dma_fence *fence);
 
+bool intel_parent_has_auxccs(struct intel_display *display);
+
 #endif /* __INTEL_PARENT_H__ */
diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index 6cd94f400e3f..40148d225410 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -22,6 +22,7 @@
 #include "intel_fbc.h"
 #include "intel_frontbuffer.h"
 #include "intel_panic.h"
+#include "intel_parent.h"
 #include "intel_plane.h"
 #include "intel_psr.h"
 #include "intel_psr_regs.h"
@@ -1602,7 +1603,7 @@ icl_plane_update_noarm(struct intel_dsb *dsb,
 	}
 
 	/* FLAT CCS doesn't need to program AUX_DIST */
-	if (HAS_AUX_CCS(display))
+	if (HAS_AUX_DIST(display))
 		intel_de_write_dsb(display, dsb, PLANE_AUX_DIST(pipe, plane_id),
 				   skl_plane_aux_dist(plane_state, color_plane));
 
@@ -2972,12 +2973,6 @@ skl_universal_plane_create(struct intel_display *display,
 	else
 		caps = skl_plane_caps(display, pipe, plane_id);
 
-	/* FIXME: xe has problems with AUX */
-	if (!IS_ENABLED(I915) && HAS_AUX_CCS(display))
-		caps &= ~(INTEL_PLANE_CAP_CCS_RC |
-			  INTEL_PLANE_CAP_CCS_RC_CC |
-			  INTEL_PLANE_CAP_CCS_MC);
-
 	modifiers = intel_fb_plane_get_modifiers(display, caps);
 
 	ret = drm_universal_plane_init(display->drm, &plane->base,
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index d98839427ef9..59e396a74ca4 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -757,6 +757,15 @@ static void fence_priority_display(struct dma_fence *fence)
 		i915_gem_fence_wait_priority_display(fence);
 }
 
+static bool has_auxccs(struct drm_device *drm)
+{
+	struct drm_i915_private *i915 = to_i915(drm);
+
+	return IS_GRAPHICS_VER(i915, 9, 12) ||
+	       IS_ALDERLAKE_P(i915) ||
+	       IS_METEORLAKE(i915);
+}
+
 static const struct intel_display_parent_interface parent = {
 	.hdcp = &i915_display_hdcp_interface,
 	.rpm = &i915_display_rpm_interface,
@@ -765,6 +774,7 @@ static const struct intel_display_parent_interface parent = {
 	.vgpu_active = vgpu_active,
 	.has_fenced_regions = has_fenced_regions,
 	.fence_priority_display = fence_priority_display,
+	.has_auxccs = has_auxccs,
 };
 
 const struct intel_display_parent_interface *i915_driver_parent_interface(void)
diff --git a/include/drm/intel/display_parent_interface.h b/include/drm/intel/display_parent_interface.h
index 61d1b22adc83..0d79f3c189c3 100644
--- a/include/drm/intel/display_parent_interface.h
+++ b/include/drm/intel/display_parent_interface.h
@@ -80,6 +80,9 @@ struct intel_display_parent_interface {
 
 	/** @fence_priority_display: Set display priority. Optional. */
 	void (*fence_priority_display)(struct dma_fence *fence);
+
+	/** @has_auxcss: Are AuxCCS formats supported by the parent. Optional. */
+	bool (*has_auxccs)(struct drm_device *drm);
 };
 
 #endif
-- 
2.52.0

