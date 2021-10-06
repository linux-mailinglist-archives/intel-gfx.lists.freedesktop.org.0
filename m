Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E036D424AC7
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Oct 2021 01:57:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B2946F37F;
	Wed,  6 Oct 2021 23:57:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0DC786F37F
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Oct 2021 23:57:13 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10129"; a="289629521"
X-IronPort-AV: E=Sophos;i="5.85,352,1624345200"; d="scan'208";a="289629521"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2021 16:57:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,352,1624345200"; d="scan'208";a="524432338"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga008.fm.intel.com with SMTP; 06 Oct 2021 16:57:09 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 07 Oct 2021 02:57:08 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Anshuman Gupta <anshuman.gupta@intel.com>,
 Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 Juston Li <juston.li@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Uma Shankar <uma.shankar@intel.com>
Date: Thu,  7 Oct 2021 02:57:01 +0300
Message-Id: <20211006235704.28894-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211006235704.28894-1-ville.syrjala@linux.intel.com>
References: <20211006235704.28894-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/4] drm/i915: Move the pxp plane state
 computation
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

No real reason to have this pxp state computation in
intel_atomic_check_planes(). Just stuff it into skl_plane_check().

There was also some funny state copying being done from the
old plane state to the new plane state when the plane is anyway
disabled.

The one thing we presumably must remember to do is copy
over the decrypt state when assigning a Y plane for planar
YCbCr scanout, so that the Y plane's PLANE_SURF will get the
appropriate bit set. The force_black thing should not matter
as I'm pretty sure all that stuff is ignored for the Y plane.
I suppose this was the reason for the odd placement for the
state computation, but I see no reason to deviate from the
standard way of doing these things. This also guarantees
that we don't calculate things differently between the
linked UV and Y plane.

Cc: Anshuman Gupta <anshuman.gupta@intel.com>
Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Cc: Juston Li <juston.li@intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Uma Shankar <uma.shankar@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c  | 31 +------------------
 .../drm/i915/display/skl_universal_plane.c    | 15 +++++++++
 2 files changed, 16 insertions(+), 30 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 4f0badb11bbb..bb45872cb619 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -71,8 +71,6 @@
 #include "gt/intel_rps.h"
 #include "gt/gen8_ppgtt.h"
 
-#include "pxp/intel_pxp.h"
-
 #include "g4x_dp.h"
 #include "g4x_hdmi.h"
 #include "i915_drv.h"
@@ -6662,6 +6660,7 @@ static int icl_check_nv12_planes(struct intel_crtc_state *crtc_state)
 		linked_state->ctl = plane_state->ctl | PLANE_CTL_YUV420_Y_PLANE;
 		linked_state->color_ctl = plane_state->color_ctl;
 		linked_state->view = plane_state->view;
+		linked_state->decrypt = plane_state->decrypt;
 
 		intel_plane_copy_hw_state(linked_state, plane_state);
 		linked_state->uapi.src = plane_state->uapi.src;
@@ -9024,28 +9023,13 @@ static int intel_bigjoiner_add_affected_planes(struct intel_atomic_state *state)
 	return 0;
 }
 
-static bool bo_has_valid_encryption(struct drm_i915_gem_object *obj)
-{
-	struct drm_i915_private *i915 = to_i915(obj->base.dev);
-
-	return intel_pxp_key_check(&i915->gt.pxp, obj, false) == 0;
-}
-
-static bool pxp_is_borked(struct drm_i915_gem_object *obj)
-{
-	return i915_gem_object_is_protected(obj) && !bo_has_valid_encryption(obj);
-}
-
 static int intel_atomic_check_planes(struct intel_atomic_state *state)
 {
 	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
 	struct intel_crtc_state *old_crtc_state, *new_crtc_state;
 	struct intel_plane_state *plane_state;
 	struct intel_plane *plane;
-	struct intel_plane_state *new_plane_state;
-	struct intel_plane_state *old_plane_state;
 	struct intel_crtc *crtc;
-	const struct drm_framebuffer *fb;
 	int i, ret;
 
 	ret = icl_add_linked_planes(state);
@@ -9093,19 +9077,6 @@ static int intel_atomic_check_planes(struct intel_atomic_state *state)
 			return ret;
 	}
 
-	for_each_new_intel_plane_in_state(state, plane, plane_state, i) {
-		new_plane_state = intel_atomic_get_new_plane_state(state, plane);
-		old_plane_state = intel_atomic_get_old_plane_state(state, plane);
-		fb = new_plane_state->hw.fb;
-		if (fb) {
-			new_plane_state->decrypt = bo_has_valid_encryption(intel_fb_obj(fb));
-			new_plane_state->force_black = pxp_is_borked(intel_fb_obj(fb));
-		} else {
-			new_plane_state->decrypt = old_plane_state->decrypt;
-			new_plane_state->force_black = old_plane_state->force_black;
-		}
-	}
-
 	return 0;
 }
 
diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index a0e53a3b267a..1fcb41942c7e 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -1737,6 +1737,18 @@ static bool skl_fb_scalable(const struct drm_framebuffer *fb)
 	}
 }
 
+static bool bo_has_valid_encryption(struct drm_i915_gem_object *obj)
+{
+	struct drm_i915_private *i915 = to_i915(obj->base.dev);
+
+	return intel_pxp_key_check(&i915->gt.pxp, obj, false) == 0;
+}
+
+static bool pxp_is_borked(struct drm_i915_gem_object *obj)
+{
+	return i915_gem_object_is_protected(obj) && !bo_has_valid_encryption(obj);
+}
+
 static int skl_plane_check(struct intel_crtc_state *crtc_state,
 			   struct intel_plane_state *plane_state)
 {
@@ -1781,6 +1793,9 @@ static int skl_plane_check(struct intel_crtc_state *crtc_state,
 	if (ret)
 		return ret;
 
+	plane_state->decrypt = bo_has_valid_encryption(intel_fb_obj(fb));
+	plane_state->force_black = pxp_is_borked(intel_fb_obj(fb));
+
 	/* HW only has 8 bits pixel precision, disable plane if invisible */
 	if (!(plane_state->hw.alpha >> 8))
 		plane_state->uapi.visible = false;
-- 
2.32.0

